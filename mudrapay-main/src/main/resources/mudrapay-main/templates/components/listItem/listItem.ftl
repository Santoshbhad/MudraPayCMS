<link rel="stylesheet" href="${ctx.contextPath}/.resources/mudrapay-main/css/components/hideComponents/hideComponents.css">
[#assign hideInMobile = content.hideInMobile!false  /]
[#assign hideInDesktop = content.hideIndesktop!false /]
[#assign selector=content.listItem! /]
[#if hideInMobile]
<div class="hide-mobile">
   <li class="${selector}">
      [@cms.area name="listItem"/]
   </li>
</div>
[#elseif hideInDesktop]
<div class="hide-desktop">
   <li class="${selector}">
      [@cms.area name="listItem"/]
   </li>
</div>
[#else]
<li class="${selector}">
   [@cms.area name="listItem"/]
</li>
[/#if]
