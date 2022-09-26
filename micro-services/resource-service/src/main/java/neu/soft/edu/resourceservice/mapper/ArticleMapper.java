package neu.soft.edu.resourceservice.mapper;

import neu.soft.edu.resourceservice.pojo.Article;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
@org.mapstruct.Mapper
public interface ArticleMapper {
    //查询所有文章
    public List<Article> selectAllArticle();

    //查询文章总数
    public Integer queryCount();

    //通过id查询文章
    public Article selectArticleById(Integer articleId);

    //文章播放量自增
    public Boolean readingCountGrowth(Integer articleId);

    //根据文章类别获取文章
    public List<Article> selectArticleByType(String typeName);

    //查询文章总数通过类型
    public Integer queryCountByType(String typeName);
}
