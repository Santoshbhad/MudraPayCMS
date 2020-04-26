[@assignValues /]
<div class="landing-page-contact-number">
   [#if logoRef??]
   <a href="${cmsfn.link(rootPage)}">
   <img class="right-img" src="${logoRef}" />
   </a>
   [/#if]
   <div class="contact-number"> ${content.contactNumber!''}</div>
</div>
[#macro assignValues]
[#assign rootPage = navfn.rootPage(content)/]
[#assign site = sitefn.site()! /]
[#assign theme = sitefn.theme(site)! /]
[#if content.logoImage??]
[#assign logoRef = damfn.getAssetLink(content.logoImage!) /]
[/#if]
[/#macro]
