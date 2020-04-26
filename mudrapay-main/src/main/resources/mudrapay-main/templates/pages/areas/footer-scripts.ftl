
<script src="https://use.fontawesome.com/6d3c4fd759.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.8.0/parsley.min.js"></script>
[#--  Add core CSS --]
${resfn.js(["/job-case-employer/webresources/core/css/.*.js"])}

[#--  Add component CSS --]
${resfn.js(["/job-case-employer/webresources/components/css/.*.js"])}

[#--  Add core CSS --]
${resfn.js(["/job-case-employer/webresources/components/css/.*.js"])}

[#--  Add author CSS --]
[#if cmsfn.editMode]
    ${resfn.js(["/job-case-employer/webresources/author/css/.*.js"])}
[/#if]

[#-- Add scripts from Theme --]
[#list theme.jsFiles as jsFile]
    <script src="${jsFile.link}"></script>
[/#list]
