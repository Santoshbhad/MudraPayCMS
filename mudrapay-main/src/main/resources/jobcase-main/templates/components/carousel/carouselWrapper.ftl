[@assignValues/]
<div class="[#if !cmsfn.isEditMode()]casestudys [/#if]container">
   [#if content.headline?has_content]
   <h2 class="title-size text-center">${content.headline!}</h2>
   [/#if]
   <div id="${carouselId}" class="carousel slide" data-ride="carousel">
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
         [@cms.area name="carouselWrapper" /]
      </div>
      [#if items?has_content && !cmsfn.isEditMode()]
      <!-- Indicators -->
      <ol class="carousel-indicators">
         [#list items as item]
         <li data-target="#${carouselId}" data-slide-to="${item?index}"[#if item?index == 0] class="active"[/#if]></li>
         [/#list]
      </ol>
      <!-- Left and right controls -->
      <a class="left-arrow carousel-control hide-on-mobile" href="#${carouselId}" data-slide="prev">
         <div class="center-arrow">
            <img class="arrow" src="${ctx.contextPath}/.resources/${theme.name}/images/svg/arrow-left.svg" />
         </div>
      </a>
      <a class="right-arrow carousel-control hide-on-mobile" href="#${carouselId}" data-slide="next">
         <div class="center-arrow">
            <img class="arrow" src="${ctx.contextPath}/.resources/${theme.name}/images/svg/arrow-right.svg" />
         </div>
      </a>
      [/#if]
   </div>
</div>
[#macro assignValues]
[#assign site = sitefn.site()! /]
[#assign theme = sitefn.theme(site)! /]
[#assign carouselWrapperMap = cmsfn.contentByPath(content.@path + "/carouselWrapper")!/]
[#if carouselWrapperMap?has_content]
[#assign items = cmsfn.children(carouselWrapperMap)/]
[/#if]
[#assign carouselId = "carousel-" + jobcasefn.generateUuid()/]
[/#macro]
