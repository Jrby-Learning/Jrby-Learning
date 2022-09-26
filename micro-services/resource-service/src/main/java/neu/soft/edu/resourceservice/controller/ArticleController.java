package neu.soft.edu.resourceservice.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import neu.soft.edu.resourceservice.pojo.Article;
import neu.soft.edu.resourceservice.service.ArticleService;
import neu.soft.edu.resourceservice.util.markdown.MarkdownUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import neu.soft.edu.resourceservice.util.tools.ResultVO;
import neu.soft.edu.resourceservice.util.tools.PropertiesUtil;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

/**
 * 文章列表
 */
@RestController
@RequestMapping("/course")
@Api(tags = "文章接口")
public class ArticleController {
    @Autowired
    ArticleService articleService;

    //后台服务器地址
    String adminAddress = PropertiesUtil.getAdminAddress();

    // 获取所有文章信息
    @GetMapping("/article/all")
    @ApiOperation("获取所有文章信息")
    public ResultVO queryArticle(@RequestParam(name = "pageNum", defaultValue = "1") int pageNum,
                                 @RequestParam(name = "pageSize", defaultValue = "15") int pageSize) {
        List<Article> articles = articleService.queryAllArticle(pageNum, pageSize);
        if(articles!=null){
            articles.forEach(article -> article.setCoverUrl(adminAddress+article.getCoverUrl()));
            Integer total = articleService.queryCount();
            HashMap<String, Object> data = new HashMap<>();
            data.put("list",articles);
            data.put("total",total);
            return ResultVO.success("文章列表查询成功",data);
        }
        return ResultVO.error("文章列表获取失败");
    }

    // 通过Id查询文章
    @GetMapping("/article/id")
    @ApiOperation("通过Id查询文章")
    public ResultVO queryArticleById(Integer articleId) {
        articleService.readingCountGrowth(articleId);
        Article article = articleService.queryArticleById(articleId);
        article.setCoverUrl(adminAddress+article.getCoverUrl());
        article.setText(MarkdownUtils.markdownToHtmlExtensions(article.getText()));
        article.setDirectory(false);
        if(article.getText().contains("h1") || article.getText().contains("h2")){
            article.setDirectory(true);
        }
        return ResultVO.success("文章列表查询成功",article);
    }

    // 通过文章类别查询文章
    @GetMapping("/article/type")
    @ApiOperation("通过文章类别查询文章")
    public ResultVO queryArticleByType(String typeName,Integer count) {
        Integer total = articleService.queryCountByType(typeName);
        Random random = new Random();
        if(count>total || count<=0){count=total;}
        int pageNum = total/count;
        if(total/count-1>0){
            pageNum = random.nextInt(total/count-1)+1;
        }
        List<Article> articles = articleService.queryArticleByType(typeName,pageNum,count);
        return ResultVO.success("文章列表查询成功",articles);
    }


}
