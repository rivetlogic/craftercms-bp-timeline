<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/system/common/craftercms-common.ftl" as crafterCommon/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mason Contact Page</title>
<!--

Template 2094 Mason

http://www.tooplate.com/view/2094-mason

-->
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400"> <!-- Google web font "Open Sans", https://fonts.google.com/ -->
<link rel="stylesheet" href="/static-assets/font-awesome-4.7.0/css/font-awesome.min.css">         <!-- Font Awesome, http://fontawesome.io/ -->
<link rel="stylesheet" href="/static-assets/css/bootstrap.min.css">                               <!-- Bootstrap styles, https://getbootstrap.com/ -->
<link rel="stylesheet" href="/static-assets/css/tooplate-style.css">                            <!-- Templatemo style -->
<link rel="stylesheet" href="/static-assets/css/alertify.min.css">                            <!-- Templatemo style -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>

<body>
    <div class="container-fluid">
        <div class="tm-body margin-b-50">
           <#include "menu.ftl"/>

            <div class="tm-main-content"<@studio.iceAttr iceGroup="visible" path=contentModel.storeUrl />>
                <div class="tm-content-box tm-content-box-home">                        
                    <img src="${contentModel.imageContact}" alt="Image" class="img-fluid tm-welcome-img">
                </div>
                <section id="contact" class="tm-content-box">
                    <div class="row margin-b-50">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <h2 class="tm-section-title tm-blue-text">${contentModel.contactUsPlaceholder}</h2>
                            <form id="contact-form" action="/doContact" method="post" class="contact-form">
                                <div class="form-group">
                                    <input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="${contentModel.namePlaceholder}"  required/>
                                </div>
                                <div class="form-group">
                                    <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="${contentModel.emailPlaceholder}"  required/>
                                </div>
                                <div class="form-group">
                                    <textarea id="contact_message" name="contact_message" class="form-control" rows="9" placeholder="${contentModel.messagePlaceholder}" required></textarea>
                                </div>
                                <input id="form-submit" type="submit" value="${contentModel.sendButton}" class="btn btn-primary tm-button-rounded tm-button-orange tm-button-no-border tm-button-normal"/>
                                <input type="submit" value="Send message" style="display:none"/>
                            </form>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="tm-address-box">
                                <p>${contentModel.contactInfo}</p>                                    
                                <address>
                                    <span class="tm-blue-text">${contentModel.addressPlaceholder}</span><br>
                                    <span>${contentModel.addressInfo}</span><br><br>
                                    ${contentModel.emailCompanyPlaceholder}: <a class="tm-blue-text" href="mailto:${contentModel.emailCompanylnfo}">${contentModel.emailCompanylnfo}</a><br>
                                    ${contentModel.phonePlaceholder}: <a class="tm-black-text" href="tel:${contentModel.phoneInfo}">${contentModel.phoneInfo}</a><br>
                                    ${contentModel.faxPlaceholder}: <a class="tm-black-text" href="tel:${contentModel.faxInfo}">${contentModel.faxInfo}</a><br>
                                </address>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div id="google-map"></div>        
                        </div>
                    </div>
                </section>
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
    <script src="/static-assets/js/alertify.min.js"></script>
    <script src="/static-assets/js/jquery-1.11.3.min.js"></script><!-- jQuery (https://jquery.com/download/) -->
    <script src="/static-assets/js/main.js"></script>
    
    <script>  

        /* Google map
        ------------------------------------------------*/
        var map = '';
        var center;
        
        function initialize() {
            var mapOptions = {
                zoom: 16,
                center: new google.maps.LatLng(${contentModel.latitude}, ${contentModel.longitude}),
                scrollwheel: false
            };

            map = new google.maps.Map(document.getElementById('google-map'),  mapOptions);

            google.maps.event.addDomListener(map, 'idle', function() {
              calculateCenter();
          });

            google.maps.event.addDomListener(window, 'resize', function() {
              map.setCenter(center);
          });
        }

        function calculateCenter() {
            center = map.getCenter();
        }

        function loadGoogleMap(){
            var script = document.createElement('script');
            script.type = 'text/javascript';
            script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyDVWt4rJfibfsEDvcuaChUaZRS5NXey1Cs&v=3.exp&sensor=false&' + 'callback=initialize';
            document.body.appendChild(script);
        } 

        $(document).ready(function(){           

            // Google Map
            loadGoogleMap();    

            // Update the current year in copyright
            //$('.tm-current-year').text(new Date().getFullYear());        
        });
    </script>
    <@studio.toolSupport/>
</body>
</html>