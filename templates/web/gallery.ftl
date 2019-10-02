<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mason Bootstrap 4.0 Theme</title>
<!--

Template 2094 Mason

http://www.tooplate.com/view/2094-mason

-->
    <!-- load stylesheets -->
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
        <div class="container-fluid" <@studio.iceAttr iceGroup="visible" path=contentModel.storeUrl />>
        
            <div class="tm-body">
            	<#include "menu.ftl"/>
                
                <#if contentModel.showGallery == "true">
                    <div class="tm-main-content tm-gallery-container">                    
                        <div class="grid"> 
                            <#list contentModel.images.item as img>                    
                                <div class="grid-item" style="width: 280px">
                                	<#if img.withURL == "true">
                                    	<a href="${img.urlImage}" target="_blank">
                                        	<p>${img.imageTitle}</p>
                                        	<img src="${img.image}" alt="Image">
                                        </a>
                                        <#else>
                                        	<p>${img.imageTitle}</p>
                                        	<img src="${img.image}" alt="Image">
                                    </#if>
                                	<p>${img.imageTitle}</p>
                                	<a href="${img.urlImage}" target="_blank"><img src="${img.image}" alt="Image"></a>
                                </div>
                            </#list>
                        </div>                    
                    </div> <!-- tm-main-content -->
                </#if>
            </div>
			
            <footer class="tm-footer text-right">
            	<#if contentModel.showFooter == "true">
                 
                 <p>Copyright &copy; <span class="tm-current-year">2018</span> Your Company 
                
                - Design: <a href="http://www.tooplate.com" target="_parent">Tooplate</a></p>
                </#if>
                
            </footer> 

        </div>
        
        <!-- load JS files -->
        
        <script src="/static-assets/js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="/static-assets/js/imagesloaded.pkgd.min.js"></script> <!-- https://masonry.desandro.com/ -->
        <script src="/static-assets/js/masonry.pkgd.min.js"></script> <!-- https://masonry.desandro.com/ -->
         <script src="/static-assets/js/main.js"></script>
        <!-- Templatemo scripts -->
        <script>  
    
        $(document).ready(function(){

            // init Masonry
            // https://codepen.io/craigwheeler/pen/MYjBga
            var $grid = $('.grid').masonry({
                
                // set itemSelector so .grid-sizer is not used in layout
                // itemSelector: '.grid-item',
                // use element for option
                // columnWidth: '.grid-sizer',
                // percentPosition: true

                itemSelector: '.grid-item',
                isFitWidth: true,
                columnWidth: 1
            });
            // layout Masonry after each image loads
            $grid.imagesLoaded().progress( function() {
              $grid.masonry('layout');
            });            
       
        });

        </script>
        <@studio.toolSupport/>
    </body>
    </html>
