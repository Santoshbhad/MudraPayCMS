<link rel="stylesheet" href="${ctx.contextPath}/.resources/mudrapay-main/css/components/landingPage/landingPage.css">
[@assignValues /]
[#assign noIndex = content.noIndex!false /]
[#assign noFollow = content.noFollow!false /]
[#assign defaultTitle = content.title! /]
[#assign seoTitle = content.seotitle! /]
[#if seoTitle?has_content]
[#assign pageTitle = content.seotitle /]
[#else]
[#assign pageTitle = content.title /]
[/#if]
<!DOCTYPE html>
<!--[if lt IE 7]>
<html lang="${cmsfn.language()!}" class="no-js lt-ie9 lt-ie8 lt-ie7">
  <![endif]-->
  <!--[if IE 7]>
  <html lang="${cmsfn.language()!}" class="no-js lt-ie9 lt-ie8">
     <![endif]-->
     <!--[if IE 8]>
     <html lang="${cmsfn.language()!}" class="no-js lt-ie9">
        <![endif]-->
        <!--[if gt IE 8]><!-->
        <html lang="${cmsfn.language()!}"[#if cmsfn.editMode!false] class="is-cms-edit-mode"[/#if]> <!--<![endif]-->
        <head>
        <title>${pageTitle}</title>
        [#if noIndex]
        <meta name="robots" content="noindex"/>
        [/#if]
        [#if noFollow]
        <meta name="robots" content="nofollow"/>
        [/#if]
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
           [@cms.page /]
           [@cms.area name="htmlHeader"/]
           <link rel="icon" href="${ctx.contextPath}/.resources/jobcase-theme/img/favicon.ico" type="image/x-icon">
        </head>
        <body>
        <div class="header-landingPage">
        <div class="container">
        <a class="navbar-logo">
         <img src="${ctx.contextPath}/.resources/jobcase-theme/images/svg/logo-jobcase-for-employers-white.svg">
         </a>
            [@cms.area name="landingPage"/]
         </div>
        </div>

           [@cms.area name="main"/]
           [@cms.area name="footer"/]
           <div class="modal-backdrop job-case-modal"></div>
           [#include "/mudrapay-main/templates/pages/areas/footer-scripts.ftl"]
            <button id="btn-connect" href="#"> Connect with a Jobcase Rep </button>
        </body>
    <script>
        window.onscroll = function() {scrollFunction()};
        function scrollFunction() {
          if (document.body.scrollTop > 920 || document.documentElement.scrollTop > 920) {
            document.getElementById("btn-connect").style.top = "32px";
          } else {
            document.getElementById("btn-connect").style.top = "-70px";
          }
        }
    </script>
     </html>
     [#macro assignValues]
     [#assign site = sitefn.site()! /]
     [#assign theme = sitefn.theme(site)! /]
     [/#macro]


