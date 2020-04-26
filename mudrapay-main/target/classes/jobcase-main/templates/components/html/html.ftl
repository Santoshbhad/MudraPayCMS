<link rel="stylesheet" href="${ctx.contextPath}/.resources/jobcase-main/css/components/hideComponents/hideComponents.css">
[#assign hideInMobile = content.hideInMobile! false  /]
[#assign hideInDesktop = content.hideIndesktop! false /]
[#if hideInMobile]
<div class="hide-mobile">
   [#if content.html?has_content]
   <div class="test">
      ${cmsfn.decode(content).html}
   </div>
   [/#if]
   [#if content.style?has_content]
   <style type="text/css">
      ${cmsfn.decode(content).style}
   </style>
   [/#if]
   [#if content.script?has_content]
   <script type="text/javascript">
      ${cmsfn.decode(content).script}
   </script>
   [/#if]
</div>
[#elseif hideInDesktop]
<div class="hide-desktop">
   [#if content.html?has_content]
   <div class="test">
      ${cmsfn.decode(content).html}
   </div>
   [/#if]
   [#if content.style?has_content]
   <style type="text/css">
      ${cmsfn.decode(content).style}
   </style>
   [/#if]
   [#if content.script?has_content]
   <script type="text/javascript">
      ${cmsfn.decode(content).script}
   </script>
   [/#if]
</div>
[#else]
[#if content.html?has_content]
<div class="test">
   ${cmsfn.decode(content).html}
</div>
[/#if]
[#if content.style?has_content]
<style type="text/css">
   ${cmsfn.decode(content).style}
</style>
[/#if]
[#if content.script?has_content]
<script type="text/javascript">
   ${cmsfn.decode(content).script}
</script>
[/#if]
[/#if]
