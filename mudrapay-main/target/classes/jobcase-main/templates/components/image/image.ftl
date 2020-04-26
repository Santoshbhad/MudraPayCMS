<link rel="stylesheet" href="${ctx.contextPath}/.resources/jobcase-main/css/components/hideComponents/hideComponents.css">
[#assign hideInMobile = content.hideInMobile! false  /]
[#assign hideInDesktop = content.hideIndesktop! false /]
[#if hideInMobile]
<div class="hide-mobile">
[#if content.image?has_content && damfn.getAssetLink(content.image)?has_content]
     [#assign imageLink = damfn.getAssetLink(content.image)]
     [#assign target = damfn.getAsset(content.image)]
     [#assign link = target.link]
     [#else]
     [#assign imageLink = "/jobcase-theme/src/main/resources/jobcase-theme/img/placeholder.jpg"]
     [/#if]
  <img src="${link!imageLink}">
</div>
[#elseif hideInDesktop]
<div class="hide-desktop">
[#if content.image?has_content && damfn.getAssetLink(content.image)?has_content]
     [#assign imageLink = damfn.getAssetLink(content.image)]
     [#assign target = damfn.getAsset(content.image)]
     [#assign link = target.link]
     [#else]
     [#assign imageLink = "/jobcase-theme/src/main/resources/jobcase-theme/img/placeholder.jpg"]
     [/#if]
  <img src="${link!imageLink}">
</div>
[#else]
  [#if content.image?has_content && damfn.getAssetLink(content.image)?has_content]
     [#assign imageLink = damfn.getAssetLink(content.image)]
     [#assign target = damfn.getAsset(content.image)]
     [#assign link = target.link]
     [#else]
     [#assign imageLink = "/jobcase-theme/src/main/resources/jobcase-theme/img/placeholder.jpg"]
     [/#if]
  <img src="${link!imageLink}">
[/#if]
