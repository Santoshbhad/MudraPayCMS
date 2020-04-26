<link rel="stylesheet" href="${ctx.contextPath}/.resources/mudrapay-main/css/components/list/list.css">
<link rel="stylesheet" href="${ctx.contextPath}/.resources/mudrapay-main/css/components/hideComponents/hideComponents.css">
[#assign hideInMobile = content.hideInMobile!false  /]
[#assign hideInDesktop = content.hideIndesktop!false /]
[#assign selector=content.CSSSelectors! /]
[#if hideInMobile]
<div class="hide-mobile">
   <div class="listComponent">
      [#if content.list=="ordered"]
      <ol class="${selector}">
         [@cms.area name="items"/]
      </ol>
      [#elseif content.list=="unordered"]
      <ul class="${selector}">
         [@cms.area name="items"/]
      </ul>
      [#elseif content.list=="horizontal"]
      <ul class="${selector}">
         [@cms.area name="items"/]
      </ul>
      [/#if]
   </div>
</div>
[#elseif hideInDesktop]
<div class="hide-desktop">
  <div class="listComponent">
     [#if content.list=="ordered"]
     <ol class="${selector}">
        [@cms.area name="items"/]
     </ol>
     [#elseif content.list=="unordered"]
     <ul class="${selector}">
        [@cms.area name="items"/]
     </ul>
     [#elseif content.list=="horizontal"]
     <ul class="${selector}">
        [@cms.area name="items"/]
     </ul>
     [/#if]
  </div>
</div>
[#else]
<div class="listComponent">
   [#if content.list=="ordered"]
   <ol class="${selector}">
      [@cms.area name="items"/]
   </ol>
   [#elseif content.list=="unordered"]
   <ul class="${selector}">
      [@cms.area name="items"/]
   </ul>
   [#elseif content.list=="horizontal"]
   <ul class="${selector}">
      [@cms.area name="items"/]
   </ul>
   [/#if]
</div>
[/#if]
