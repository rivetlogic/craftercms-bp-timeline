<#import "/templates/web/utils.ftl" as utils/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mason Theme - Timeline</title>
<!--

Template 2094 Mason

http://www.tooplate.com/view/2094-mason

-->
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400"> <!-- Google web font "Open Sans", https://fonts.google.com/ -->
<link rel="stylesheet" href="/static-assets/font-awesome-4.7.0/css/font-awesome.min.css">         <!-- Font Awesome, http://fontawesome.io/ -->
<link rel="stylesheet" href="/static-assets/css/bootstrap.min.css">                               <!-- Bootstrap styles, https://getbootstrap.com/ -->
<link rel="stylesheet" href="/static-assets/css/tooplate-style.css">                            <!-- Templatemo style -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
      </head>

      <body>
        <div class="container-fluid">
            <div class="tm-body">
                <#include "menu.ftl"/>
                
                <div class="tm-main-content">
                	<#list articles as article>
                    	<div class="row mb-5">
                            <div class="media tm-flexbox-ie-fix tm-width-ie-fix">
                                <div class="tm-media-img-container">
                                    <div class="text-center pt-31 pb-31 tm-timeline-date">${article.queryValue('dateArticle_dt')?datetime?string["dd MMMM yyyy"]}</div>
                                    <img class="d-flex img-fluid" src="${article.queryValue('image')}" alt="Generic placeholder image">
                                </div>
                          
                          <div class="media-body tm-flexbox-ie-fix tm-width-ie-fix tm-bg-light-gray">
                            <div class="p-5">
                                <h2 class="mb-4 mt-0 tm-blue-text tm-timeline-item-title">${article.queryValue('titleArticle')}</h2>
                                <p class="mb-4">
                               	  ${article.queryValue('summary')}
                                </p>
                                
                                <a href="${utils.renderURL(article.storeUrl)}" id="${article.queryValue('objectId')}" class="btn btn-primary tm-button-rounded tm-button-no-border tm-button-normal tm-button-timeline">${article.queryValue('buttonText')}</a>
                            </div>                            
                          </div>
                        </div>
                    </div> <!-- row -->
                    
                    </#list>
                </div>
            </div>

            <footer class="tm-footer text-right">
                <#if contentModel.showFooter == "true">
                 
                 <p>Copyright &copy; <span class="tm-current-year">2018</span> Your Company 
                
                - Design: <a href="http://www.tooplate.com" target="_parent">Tooplate</a></p>
                </#if>
            </footer>
        </div> <!-- container-fluid -->
        
        <!-- load JS files -->        
        <script src="/static-assets/js/jquery-1.11.3.min.js"></script><!-- jQuery (https://jquery.com/download/) -->      
        <script src="/static-assets/js/main.js"></script><!-- main.js -->  
        
    </body>
    </html>