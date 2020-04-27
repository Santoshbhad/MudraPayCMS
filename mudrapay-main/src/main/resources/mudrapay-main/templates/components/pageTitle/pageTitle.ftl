<link rel="stylesheet" href="${ctx.contextPath}/.resources/mudrapay-main/css/components/hideComponents/hideComponents.css">
[#assign hideInMobile = content.hideInMobile!false  /]
[#assign hideInDesktop = content.hideIndesktop!false /]
[#if hideInMobile]
<div class="hide-mobile">
   [#if content.pageTitleSize=="h1"]
   <h1>${content.pageTitle}</h1>
   [/#if]
</div>
[#elseif hideInDesktop]
<div class="hide-desktop">
   [#if content.pageTitleSize=="h1"]
   <h1>${content.pageTitle}</h1>
   [/#if]
</div>
[#else]
[#if content.pageTitleSize=="h1"]
<h1>${content.pageTitle}</h1>
[/#if]
[/#if]
