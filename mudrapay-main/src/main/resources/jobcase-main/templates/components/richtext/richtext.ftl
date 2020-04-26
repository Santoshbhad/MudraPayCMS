<link rel="stylesheet" href="${ctx.contextPath}/.resources/jobcase-main/css/components/hideComponents/hideComponents.css">
[#assign richTextHideInMobile = content.richTextHideInMobile! false /]
[#assign richTexthideIndesktop = content.richTexthideIndesktop!false  /]
[#if richTextHideInMobile]
<div class="hide-mobile">
   [#if content.richTextComponent?has_content]
   ${cmsfn.decode(content).richTextComponent}
   [/#if]
</div>
[#elseif richTexthideIndesktop]
<div class="hide-desktop">
   [#if content.richTextComponent?has_content]
   ${cmsfn.decode(content).richTextComponent}
   [/#if]
</div>
[#else]
[#if content.richTextComponent?has_content]
${cmsfn.decode(content).richTextComponent}
[/#if]
[/#if]
