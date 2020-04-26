<link rel="stylesheet" href="${ctx.contextPath}/.resources/mudrapay-main/css/components/hideComponents/hideComponents.css">
[#assign hideInMobile = content.hideInMobile!false  /]
[#assign hideInDesktop = content.hideIndesktop!false /]
[#if hideInMobile]
<div class="hide-mobile">
   [#if content.titleSize=="h2"]
   <h2>${content.title}</h2>
   [#elseif content.titleSize=="h3"]
   <h3>${content.title}</h3>
   [#elseif content.titleSize=="h4"]
   <h4>${content.title}</h4>
   [#elseif content.titleSize=="h5"]
   <h5>${content.title}</h5>
   [#elseif content.titleSize=="h6"]
   <h6>${content.title}</h6>
   [/#if]
</div>
[#elseif hideInDesktop]
<div class="hide-desktop">
  [#if content.titleSize=="h2"]
  <h2>${content.title}</h2>
  [#elseif content.titleSize=="h3"]
  <h3>${content.title}</h3>
  [#elseif content.titleSize=="h4"]
  <h4>${content.title}</h4>
  [#elseif content.titleSize=="h5"]
  <h5>${content.title}</h5>
  [#elseif content.titleSize=="h6"]
  <h6>${content.title}</h6>
  [/#if]
</div>
[#else]
[#if content.titleSize=="h2"]
<h2>${content.title}</h2>
[#elseif content.titleSize=="h3"]
<h3>${content.title}</h3>
[#elseif content.titleSize=="h4"]
<h4>${content.title}</h4>
[#elseif content.titleSize=="h5"]
<h5>${content.title}</h5>
[#elseif content.titleSize=="h6"]
<h6>${content.title}</h6>
[/#if]
[/#if]
