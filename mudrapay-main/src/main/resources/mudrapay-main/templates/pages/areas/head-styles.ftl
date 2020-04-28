[@assignValues/]

[#-- Place favicon.ico and apple-touch-icon.png --]
[#--<link rel="icon" href="${ctx.contextPath}/.resources/${theme.name}/favicon.ico" />--]

[#--  Owl Carousel CSS files from the CDN --]
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css" />

[#--  Carousel animation CSS files from the CDN --]
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" />

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous" />
<!--news -->
<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
<link rel="stylesheet" href="https://use.typekit.net/npr3trz.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous" />

[#--  Add core CSS --]
${resfn.css(["/job-case-employer/webresources/core/css/.*.css"])}

[#--  Add component CSS --]
${resfn.css(["/job-case-employer/webresources/components/css/.*.css"])}

[#--  Add core CSS --]
${resfn.css(["/job-case-employer/webresources/components/css/.*.css"])}

[#--  Add author CSS --]
[#if cmsfn.editMode]
    ${resfn.css(["/job-case-employer/webresources/author/css/.*.css"])}
[/#if]



[#macro assignValues]
    [#assign site = sitefn.site()! /]
    [#assign theme = sitefn.theme(site)! /]
[/#macro]
