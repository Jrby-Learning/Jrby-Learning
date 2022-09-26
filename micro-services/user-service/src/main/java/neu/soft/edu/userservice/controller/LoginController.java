package neu.soft.edu.userservice.controller;

import cn.dev33.satoken.secure.SaSecureUtil;
import cn.dev33.satoken.stp.StpUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import neu.soft.edu.userservice.feign.CoinClient;
import neu.soft.edu.userservice.feign.MailClient;
import neu.soft.edu.userservice.feign.MessageClient;
import neu.soft.edu.userservice.feign.param.MailParam;
import neu.soft.edu.userservice.feign.pojo.CoinRecord;
import neu.soft.edu.userservice.feign.pojo.MyMessage;
import neu.soft.edu.userservice.feign.pojo.UserCoin;
import neu.soft.edu.userservice.feign.pojo.UserVip;
import neu.soft.edu.userservice.param.ForgotPasswordParam;
import neu.soft.edu.userservice.param.LoginParam;
import neu.soft.edu.userservice.param.RegisterParam;
import neu.soft.edu.userservice.pojo.AccessLog;
import neu.soft.edu.userservice.pojo.User;
import neu.soft.edu.userservice.service.AccessLogService;
import neu.soft.edu.userservice.service.UserService;
import neu.soft.edu.userservice.util.redis.RedisUtil;
import neu.soft.edu.userservice.util.tools.IpToAddressUtil;
import neu.soft.edu.userservice.util.tools.IpUtil;
import neu.soft.edu.userservice.util.tools.ResultVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/global")
@Api(tags = "注册、登录等相关接口")
public class LoginController {
    @Autowired
    UserService userService;
    @Autowired
    RedisUtil redisUtil;
    @Autowired
    MailClient mailClient;
    @Autowired
    CoinClient coinClient;
    @Autowired
    MessageClient messageClient;
    @Autowired
    AccessLogService accessLogService;


    //注册用户
    @PostMapping("/register")
    @ApiOperation("注册帐号")
    public ResultVO register(@RequestBody RegisterParam registerParam){
        String userAccount = registerParam.userAccount;
        String userName = registerParam.userName;
        String passWord = registerParam.passWord;
        String checkCode = registerParam.checkCode;
        if(checkCode==null){
            return ResultVO.error("请填写验证码");
        }
        String code =  (String) redisUtil.get(userAccount);
        if(code==null){
            return ResultVO.error("邮箱验证码已过期");
        }
        if(!code.equalsIgnoreCase(checkCode)){
            return ResultVO.error("邮箱验证码错误");
        }
        if(userService.queryUserByAccount(userAccount)!=null){
            return ResultVO.error("用户已存在");
        }
        User user = new User();
        user.setUserAccount(userAccount);
        user.setUserName(userName);
        // md5加密
        String pwd = SaSecureUtil.md5BySalt(passWord, user.getUserAccount());
        user.setPassWord(pwd);
        Boolean isSuccess = userService.insertUser(user);
        if(isSuccess){
            redisUtil.del(userAccount);
            Map<String,Object> data = new HashMap<>();
            data.put("account",userAccount);
            data.put("name",userName);
            data.put("password",passWord);
            data.put("date",new Date());
            data.put("year", Calendar.getInstance().get(Calendar.YEAR));
            UserCoin userCoin = new UserCoin();
            userCoin.setUserId(user.getUserId());
            //注册成功后免费赠送50积分
            userCoin.setUserCoin(50);
            coinClient.insertCoin(userCoin);
            //积分记录信息
            CoinRecord coinRecord = new CoinRecord();
            coinRecord.setUserId(user.getUserId());
            coinRecord.setRecordTime(new Date());
            coinRecord.setVary("+"+50);
            coinRecord.setRemark("注册账户赠送50积分");
            coinClient.insertRecord(coinRecord);
            //我的消息 中添加注册消息
            MyMessage myMessage = new MyMessage();
            myMessage.setUserId(user.getUserId());
            myMessage.setTitle("新用户注册通知");
            myMessage.setContent("尊敬的用户：【"+user.getUserName()+"】您好，欢迎您加入积分教育平台！赠送您50积分，快去个人中心完善信息吧！");
            myMessage.setUrl("#/accountCenter");
            myMessage.setReadState(false);
            myMessage.setDeleteState(false);
            messageClient.insertMyMessage(myMessage);
            //mailClient.sendTemplateMail(userAccount, "注册成功", "mail/register", data);
            mailClient.sendTemplateMail(new MailParam(userAccount, "注册成功", "mail/register", null, data));
            return ResultVO.success("注册成功");
        }
        return ResultVO.error("注册失败");
    }

    // 账号密码登录
    @PostMapping("/doLogin")
    @ApiOperation("账号密码登录")
    public ResultVO doLogin(@RequestBody LoginParam loginParam) {
        // 获取
        String userAccount = loginParam.userAccount;
        String passWord = loginParam.passWord;
        String checkCodeKey = loginParam.checkCodeKey;
        String checkCode = loginParam.checkCode;
        if(checkCode==null){
            return ResultVO.error("请填写验证码");
        }
        String code =  (String) redisUtil.get(checkCodeKey);
        if(code==null){
            return ResultVO.error("验证码已过期");
        }
        if(!code.equalsIgnoreCase(checkCode)){
            return ResultVO.error("验证码错误");
        }
        redisUtil.del(checkCodeKey);
        User user;
        if(userAccount.contains("@")){
            user = userService.queryUserByAccount(userAccount);
        }else{
            user = userService.queryUserByPhone(userAccount);
        }
        if(user==null || user.getDeleteState()){
            return ResultVO.error("用户不存在或密码错误");
        }
        if(user.getLockedState()){
            return ResultVO.error("此账号已被封禁");
        }
        String pws = SaSecureUtil.md5BySalt(passWord, user.getUserAccount());
        if(pws.equals(user.getPassWord())){
            StpUtil.setLoginId(user.getUserId());
            Map<String,Object> map = new HashMap<>();
            map.put("token",StpUtil.getTokenValue());
            map.put("user",user);
            User tempUser = new User();
            tempUser.setUserId(user.getUserId());
            tempUser.setLoginTime(new Date());
            userService.updateUser(tempUser);
            return ResultVO.success("登录成功",map);
        }
        return ResultVO.error("用户不存在或密码错误");
    }

    //忘记密码
    @PostMapping("/forgotPassword")
    @ApiOperation("忘记密码")
    public ResultVO forgotPassword(@RequestBody ForgotPasswordParam forgotPasswordParam) {
        String userAccount = forgotPasswordParam.userAccount;
        String passWord = forgotPasswordParam.passWord;
        String checkCode = forgotPasswordParam.checkCode;
        String checkPassWord = forgotPasswordParam.checkPassWord;
        if(checkCode==null){
            return ResultVO.error("请填写验证码");
        }
        String code =  (String) redisUtil.get(userAccount);
        if(code==null){
            return ResultVO.error("邮箱验证码已过期");
        }
        if(!code.equalsIgnoreCase(checkCode)){
            return ResultVO.error("邮箱验证码错误");
        }
        User user = userService.queryUserByAccount(userAccount);
        if(user==null){
            return ResultVO.error("用户不存在");
        }
        if(passWord.equals(checkPassWord)){
            User tempUser = new User();
            tempUser.setUserId(user.getUserId());
            // md5加密
            String pwd = SaSecureUtil.md5BySalt(passWord, user.getUserAccount());
            tempUser.setPassWord(pwd);
            tempUser.setUpdateTime(new Date());
            Boolean isSuccess = userService.updateUser(tempUser);
            if(isSuccess){
                return ResultVO.success("密码修改成功");
            }else{
                return ResultVO.success("密码修改失败");
            }
        }
        return ResultVO.error("两次输入的密码不一致");
    }

    //忘记密码
    @PostMapping("/log")
    @ApiOperation("访问日志")
    public ResultVO accessLog(HttpServletRequest request) {
        AccessLog accessLog = new AccessLog();
        accessLog.setUserAccount("未登录");
        accessLog.setUserName("--");
        accessLog.setUserType("普通用户");
        int userId  = StpUtil.getLoginId(-1);
        if(userId!=-1){
            User user = userService.queryUserById(userId);
            if(user!=null){
                accessLog.setUserAccount(user.getUserAccount());
                accessLog.setUserName(user.getUserName());
            }
            UserVip userVip = coinClient.queryUserVipByUserId(userId);
            if(userVip!=null){
                accessLog.setUserType("VIP用户");
            }
        }
        String ip = IpUtil.getIpAddr(request);
        accessLog.setAccessTime(new Date());
        accessLog.setIpAddress(ip);
        String ipCity = IpToAddressUtil.getCityInfo(ip);
        accessLog.setCity(ipCity);
        accessLogService.addAccessLog(accessLog);
        return ResultVO.success("记录访问日志");
    }
}
