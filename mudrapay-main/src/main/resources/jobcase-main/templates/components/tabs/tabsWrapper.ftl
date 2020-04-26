<link rel="stylesheet" href="${ctx.contextPath}/.resources/jobcase-main/css/components/tab/tab.css">
[@assignValues/]
<div class="tabs">
   <div class="container roboto">
      [#if tabs?has_content]
      <ul class="nav nav-tabs[#if cmsfn.isEditMode()] d-none[/#if]">
         [#list tabs as tabItem]
         <li[#if tabItem?index == 0] class="active"[/#if]>
         <a data-toggle="tab" href="#${tabItem.@uuid!}">${tabItem.headline!}</a>
         </li>
         [/#list]
      </ul>
      [/#if]
      <div class="tab-content">
         [@cms.area name="tabsWrapper" /]
      </div>
   </div>
</div>
[#macro assignValues]
[#assign tabsWrapperMap = cmsfn.contentByPath(content.@path + "/tabsWrapper")!/]
[#if tabsWrapperMap?has_content]
[#assign tabs = cmsfn.children(tabsWrapperMap)/]
[/#if]
[/#macro]
