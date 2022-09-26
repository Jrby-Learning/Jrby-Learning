package neu.soft.edu.resourceservice.service;


import neu.soft.edu.resourceservice.pojo.Article;

import java.util.List;

/**
 * 文章表service
 */
public interface ArticleService {
    //查询所有文章
    public List<Article> queryAllArticle(int pageNum, int pageSize);

    //查询文章总数
    public Integer queryCount();

    //通过id查询文章
    public Article queryArticleById(Integer articleId);

    //文章播放量自增
    public Boolean readingCountGrowth(Integer articleId);

    //根据文章类别获取文章
    public List<Article> queryArticleByType(String typeName,int pageNum, int pageSize);

    //查询文章总数通过类型
    public Integer queryCountByType(String typeName);
}
