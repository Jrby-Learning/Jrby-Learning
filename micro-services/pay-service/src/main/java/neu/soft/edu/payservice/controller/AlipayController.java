package neu.soft.edu.payservice.controller;

import cn.dev33.satoken.stp.StpUtil;
import com.alipay.api.AlipayApiException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.extern.slf4j.Slf4j;
import neu.soft.edu.payservice.feign.*;
import neu.soft.edu.payservice.feign.param.MailParam;
import neu.soft.edu.payservice.feign.pojo.*;
import neu.soft.edu.payservice.param.PayParam;
import neu.soft.edu.payservice.service.AlipayService;
import neu.soft.edu.payservice.util.redis.RedisUtil;
import neu.soft.edu.payservice.util.tools.PropertiesUtil;
import neu.soft.edu.payservice.util.tools.ResultVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/alipay")
@Api(tags = "支付宝虚拟支付接口")
public class AlipayController {
    @Autowired
    private AlipayService alipayService;
    @Autowired
    private RedisUtil redisUtil;
    @Autowired
    CoinClient coinClient;
    @Autowired
    MessageClient messageClient;
    @Autowired
    CourseClient courseClient;
    @Autowired
    OrderClient orderClient;
    @Autowired
    MailClient mailClient;


    @ResponseBody
    @PostMapping(value = "/create")
    @ApiOperation("创建订单")
    public ResultVO create(@RequestBody PayParam payParam) {
        //发起支付
        String orderNo = payParam.orderNo;
        String orderName = payParam.orderName;
        String payPrice = payParam.payPrice;
        String serialNumber = payParam.serialNumber;
        if(payParam.userName!=null && payParam.userName.length()!=0){
            User user = new User();
            user.setUserId(StpUtil.getLoginIdAsInt());
            user.setUserName(payParam.userName);
            user.setUserPhone(payParam.userPhone);
            user.setUserAccount(payParam.userEmail);
            String[] s = serialNumber.split("_");
            Integer courseId = Integer.parseInt(s[1]);
            CoachApply coachApply = courseClient.queryOnlyCoachApply(user.getUserId(), courseId);
            if(coachApply!=null){
                return ResultVO.error("线下营已经报名成功");
            }
            redisUtil.set(serialNumber,user,60*5);   //5分钟
        }
        redisUtil.set(orderNo,serialNumber,60*5);   //5分钟
        return ResultVO.success("调用成功",alipayService.create(orderNo, orderName, payPrice));
    }



    @ResponseBody
    @PostMapping(value = "/refund")
    @ApiOperation("订单退款")
    public ResultVO refund(@ApiParam("订单号") @RequestParam("orderNo") String orderNo,
                         @ApiParam("退款金额") @RequestParam("payPrice") String payPrice) {
        //发起支付
        try {
            alipayService.refund(orderNo, payPrice);
        } catch (AlipayApiException e) {
            log.error("【支付宝支付】退款失败 error={}", e.toString());
            return ResultVO.error("退款失败");
        }
        return ResultVO.success("退款成功");
    }

    @GetMapping(value = "/paySuccess")
    @ApiOperation("支付成功同步回调接口")
    public void success(@RequestParam Map<String, String> map, HttpServletResponse response) {
        try {
            String tradeNo = map.get("out_trade_no");
            String payAmount = map.get("total_amount");
            String serialNumber =(String) redisUtil.get(tradeNo);
            User user = (User) redisUtil.get(serialNumber);
            if(user!=null){
                //报名线下营的回调接口
                String[] s = serialNumber.split("_");
                Integer courseId = Integer.parseInt(s[1]);
                Course course = courseClient.querySpecialCourseById(courseId);
                //添加订单信息
                Order order = new Order();
                order.setOrderNo(tradeNo);
                order.setOrderName("报名"+course.getCourseName());
                order.setUserId(user.getUserId());
                order.setCourseId(course.getCourseId());
                double price = Double.parseDouble(payAmount);
                order.setPayPrice((int) price);
                order.setOrderState("已支付");
                Boolean orderSuccess = orderClient.addOrder(order);
                //添加报名信息
                CoachApply coachApply = new CoachApply();
                coachApply.setCourseId(course.getCourseId());
                coachApply.setCourseName(course.getCourseName());
                coachApply.setStartTime(course.getStartTime());
                coachApply.setUserId(user.getUserId());
                coachApply.setUserName(user.getUserName());
                coachApply.setUserPhone(user.getUserPhone());
                coachApply.setUserEmail(user.getUserAccount());
                Boolean coachSuccess = courseClient.addCoachApply(coachApply);
                if(orderSuccess && coachSuccess){
                    response.sendRedirect(PropertiesUtil.getCallBack() + "/#/specialDetail?id="+courseId+"&serialNumber=" + serialNumber);
                    //我的消息中添加线下营报名成功通知
                    MyMessage myMessage = new MyMessage();
                    myMessage.setUserId(user.getUserId());
                    myMessage.setTitle("线下营报名成功");
                    myMessage.setContent("恭喜您，<strong>《"+course.getCourseName()+"》</strong>报名成功！");
                    myMessage.setUrl("#/orderCenter");
                    myMessage.setReadState(false);
                    myMessage.setDeleteState(false);
                    messageClient.insertMyMessage(myMessage);
                    //发送入学通知书
                    Map<String,Object> data = new HashMap<>();
                    data.put("userName",user.getUserName());
                    data.put("courseName",course.getCourseName());
                    data.put("startTime",course.getStartTime());
                    data.put("localDate", new Date());
                    //boolean send = mailClient.sendTemplateMail(user.getUserAccount(), "东软教育-入学通知书", "mail/admissionNotice", data);
                    boolean send = mailClient.sendTemplateMail(new MailParam(user.getUserAccount(), "东软教育-入学通知书", "mail/admissionNotice", null, data));
                }else{
                    response.sendRedirect(PropertiesUtil.getCallBack() + "/#/specialDetail?id="+courseId+"&serialNumber=ERROR");
                }
            }else{
                //开通VIP的回调接口
                String[] s = serialNumber.split("_");
                Integer vipId = Integer.parseInt(s[1]);
                Integer userId = Integer.parseInt(s[2]);
                Vip vip = coinClient.queryVipById(vipId);
                UserVip userVip = coinClient.queryUserVipByUserId(userId);
                Boolean isSuccess;
                if(userVip==null){
                    userVip = new UserVip();
                    userVip.setUserId(userId);
                    userVip.setVipId(vip.getVipId());
                    userVip.setOpenTime(new Date());
                    if(vip.getTimeLength()==-1){
                        userVip.setExpireTime(new Date(253402214400000L));
                    }else{
                        LocalDate expireDate = LocalDate.now().plusDays(vip.getTimeLength());
                        ZonedDateTime zonedDateTime = expireDate.atStartOfDay(ZoneId.systemDefault());
                        userVip.setExpireTime(Date.from(zonedDateTime.toInstant()));
                    }
                    isSuccess = coinClient.insertUserVip(userVip);
                }else{
                    //获取到期时间
                    LocalDate localDate = userVip.getExpireTime().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
                    //往后续
                    LocalDate expireDate;
                    if(vip.getTimeLength()==-1){
                        userVip.setExpireTime(new Date(253402214400000L));     //将时间设定到9999年
                    }else if(localDate.isBefore(LocalDate.of(9999, 12, 1))){
                        expireDate = localDate.plusDays(vip.getTimeLength());
                        ZonedDateTime zonedDateTime = expireDate.atStartOfDay(ZoneId.systemDefault());
                        //设置到期时间
                        userVip.setExpireTime(Date.from(zonedDateTime.toInstant()));
                    }
                    Vip vipOld = coinClient.queryVipById(userVip.getVipId());
                    //根据时长，判断那个VIP权限大，将权限大的更新为当前VIP  （比如以前是个月会员，后面续费年会员，会员标识应该显示年会员）
                    if(vipOld.getTimeLength()<vip.getTimeLength() && vipOld.getTimeLength()!=-1){
                        userVip.setVipId(vip.getVipId());
                    }
                    if(vip.getTimeLength()==-1){      //永久VIP的权限最大
                        userVip.setVipId(vip.getVipId());
                    }
                    isSuccess = coinClient.updateUserVip(userVip);
                }
                if(isSuccess){
                    response.sendRedirect(PropertiesUtil.getCallBack() + "/#/memberDetails?serialNumber=" + serialNumber);
                    //会员开通成功后赠送对应积分
                    UserCoin userCoin = coinClient.queryCoinById(userId);
                    userCoin.setUserCoin(userCoin.getUserCoin()+vip.getCoin());
                    coinClient.updateCoin(userCoin);
                    //积分记录信息
                    CoinRecord coinRecord = new CoinRecord();
                    coinRecord.setUserId(userId);
                    coinRecord.setRecordTime(new Date());
                    coinRecord.setVary("+"+vip.getCoin());
                    coinRecord.setRemark("开通"+vip.getVipName()+"赠送"+vip.getCoin()+"积分");
                    coinClient.insertRecord(coinRecord);
                    //我的订单中添加记录
                    Order order = new Order();
                    order.setOrderNo(tradeNo);
                    order.setOrderName("开通" + vip.getVipName());
                    order.setUserId(userId);
                    order.setPayPrice(vip.getPrice());
                    order.setOrderState("已支付");
                    orderClient.addOrder(order);
                    //我的消息 中添加开通会员通知
                    MyMessage myMessage = new MyMessage();
                    myMessage.setUserId(userId);
                    myMessage.setTitle("开通"+vip.getVipName()+"成功");
                    myMessage.setContent("恭喜您，"+vip.getVipName()+"开通成功！赠送您"+vip.getCoin()+"积分，可到订单中心查看详情！");
                    myMessage.setUrl("#/orderCenter");
                    myMessage.setReadState(false);
                    myMessage.setDeleteState(false);
                    messageClient.insertMyMessage(myMessage);
                }else{
                    response.sendRedirect(PropertiesUtil.getCallBack() + "/#/memberDetails?serialNumber=ERROR");
                }
            }
        } catch (IOException e) {
            log.error("支付成功，但重定向失败 error={}", e.toString());
        }
    }


    @ResponseBody
    @PostMapping(value = "/payNotify")
    @ApiOperation("支付成功异步回调接口")
    public void payNotify(@RequestParam Map<String, String> map) {
        String tradeStatus = map.get("trade_status");
        if (tradeStatus.equals("TRADE_SUCCESS")) {
            String payTime = map.get("gmt_payment");
            String tradeNo = map.get("out_trade_no");
            String tradeName = map.get("subject");
            String payAmount = map.get("buyer_pay_amount");
            log.info("[支付成功] {交易时间：{},订单号：{},订单名称：{},交易金额：{}}", payTime, tradeNo, tradeName, payAmount);
        }
    }
}