import scripts.utils.ArticlesHelper

def articleHelper = new ArticlesHelper(searchService, siteItemService);
def articlesStatement ='content-type:"/page/article-page"';

templateModel.articles = articleHelper.getArticleList(articlesStatement)


