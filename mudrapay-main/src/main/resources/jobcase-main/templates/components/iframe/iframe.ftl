<link rel="stylesheet" href="${ctx.contextPath}/.resources/jobcase-main/css/components/hideComponents/hideComponents.css">
[#assign hideInMobile = content.hideInMobile!false  /]
[#assign hideInDesktop = content.hideIndesktop!false /]
[#if hideInMobile]
<div class="hide-mobile">
   [#if content.iframe?has_content]
   <iframe width="${content.width}" height="${content.height}" src="${content.iframe}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   <p>${content.iframeLabel!}</p>
   [/#if]
</div>
[#elseif hideInDesktop]
<div class="hide-desktop">
   [#if content.iframe?has_content]
   <iframe width="${content.width}" height="${content.height}" src="${content.iframe}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   <p>${content.iframeLabel!}</p>
   [/#if]
</div>
[#else]
[#if content.iframe?has_content]
<iframe width="${content.width}" height="${content.height}" src="${content.iframe}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<p>${content.iframeLabel!}</p>
[/#if]
[/#if]
