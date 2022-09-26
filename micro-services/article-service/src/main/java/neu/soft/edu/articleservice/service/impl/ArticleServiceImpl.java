package neu.soft.edu.articleservice.service.impl;

import com.github.pagehelper.PageHelper;
import neu.soft.edu.articleservice.mapper.ArticleMapper;
import neu.soft.edu.articleservice.pojo.Article;
import neu.soft.edu.articleservice.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    ArticleMapper articleMapper;


    @Override
    public List<Article> queryAllArticle(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return articleMapper.selectAllArticle();
    }

    @Override
    public Integer queryCount() {
        return articleMapper.queryCount();
    }

    @Override
    public Article queryArticleById(Integer articleId) {
        return articleMapper.selectArticleById(articleId);
    }

    @Override
    public Boolean readingCountGrowth(Integer articleId) {
        return articleMapper.readingCountGrowth(articleId);
    }

    @Override
    public List<Article> queryArticleByType(String typeName, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return articleMapper.selectArticleByType(typeName);
    }

    @Override
    public Integer queryCountByType(String typeName) {
        return articleMapper.queryCountByType(typeName);
    }
}
