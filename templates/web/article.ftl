<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/system/common/craftercms-common.ftl" as crafterCommon/>
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
             		<div class="row mb-5" <@studio.iceAttr iceGroup="visible" path=contentModel.storeUrl />>
                            <div class="tm-flexbox-ie-fix tm-width-ie-fix">
                                <div class="tm-media-img-container">
                                    <div class="text-center pt-31 pb-31 tm-timeline-date tm-bg-pink">${contentModel.dateArticle_dt?datetime?string["dd MMMM yyyy"]}</div>
                                    <!-- <img class="d-flex img-fluid" src="${contentModel.image}" alt="Generic placeholder image"> -->
                                    <div  class="article-img" style="background-image: url('${contentModel.image}'); width: 100%; min-height: 250px; background-repeat: no-repeat; background-size: cover; background-position: center;"> </div>
                                </div>
                          
                          <div class="tm-flexbox-ie-fix tm-width-ie-fix tm-bg-light-gray">
                            <div class="p-5">
                                <h2 class="mb-4 mt-0 tm-blue-text tm-timeline-item-title text-center">${contentModel.titleArticle}</h2>
                                <p class="mb-4">
                               	  ${contentModel.content}
                                </p>
                                
                                <a href="/timeline" class="btn btn-primary tm-button-rounded tm-button-no-border tm-button-normal tm-button-timeline">Back to Timeline</a>
                            </div>                            
                          </div>
                        </div>
                    </div> <!-- row -->
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
        <script src="/static-assets/js/main.js"></script>
        
        <@studio.toolSupport/>
    </body>
    </html>