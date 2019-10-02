package scripts.utils

import java.util.Properties

class ArticlesHelper {

  def searchService
  def siteItemService

 ArticlesHelper(searchService, siteItemService) {
    this.searchService = searchService
    this.siteItemService = siteItemService
  }

 def getArticleList(statement) {
    def query = searchService.createQuery()
    query = query.setQuery(statement)

   query.setParam("sort", "dateArticle_dt desc")
    def executedQuery = searchService.search(query)
    def itemsFound = executedQuery.response.numFound
    def items = executedQuery.response.documents
    
   def articles = []
    items.each { item ->
        def id = item.localId
        def article = siteItemService.getSiteItem(id)
        articles.add(article)
    }
    return articles
  }  
}