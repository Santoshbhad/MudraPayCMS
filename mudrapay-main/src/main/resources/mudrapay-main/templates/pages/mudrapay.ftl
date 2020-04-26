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
            [@cms.area name="headerScripts"/]
         </head>
         [#assign hideBreadcrum = content.hideBreadcrum!false /]
         <body>
            [@cms.area name="bodyBeginScripts"/]
            [@cms.area name="header"/]


            [@cms.area name="main"/]

            <div class="modal-backdrop job-case-modal"></div>
            [#include "/mudrapay-main/templates/pages/areas/footer-scripts.ftl"]
            [@cms.area name="bodyEndScripts"/]
         </body>
      </html>
      [#macro assignValues]
      [#assign site = sitefn.site()! /]
      [#assign theme = sitefn.theme(site)! /]
      [/#macro]

