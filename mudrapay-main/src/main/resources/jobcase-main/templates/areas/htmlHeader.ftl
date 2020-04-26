[@assignValues /]
[#-------------- RENDERING --------------]
[#if ctx.newsWindowTitle?has_content] ${ctx.newsWindowTitle}[#elseif windowTitle?has_content]${windowTitle}[/#if]
<meta charset="utf-8" />
<meta name="description" content="${description!""}" />
<meta name="keywords" content="${keywords!""}" />
<link rel="shortcut icon" href="${ctx.contextPath}/.resources/${theme.name}/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="${ctx.contextPath}/.resources/${theme.name}/img/favicon.ico" />

[#-- Putting CSS files from Theme definition  --]
[#-- see:  /jobcase-theme/src/main/resources/jobcase-theme/themes/jobcase-theme.yaml --]
[#list theme.cssFiles as cssFile]
    [#if cssFile.conditionalComment?has_content]<!--[if ${cssFile.conditionalComment}]>[/#if]
		<link rel="stylesheet" type="text/css" href="${cssFile.link!}" media="${cssFile.media!}" />
    [#if cssFile.conditionalComment?has_content]<![endif]-->[/#if]
[/#list]

[#-- Putting CSS files from Page definition  --]
[#-- Add 'cssFiles' section into page yaml file  --]
[#if def.cssFiles??]
    [#list def.cssFiles as cssFile]
		<link rel="stylesheet" type="text/css" href="${cssFile.link!}" media="${cssFile.media!}" />
    [/#list]
[/#if]
<link rel="canonical" href="${canonicalLink!}">
[#macro assignValues]
	[#assign pageModel = model.root! /]
	[#assign site = sitefn.site()! /]
	[#assign theme = sitefn.theme(site)! /]
	[#assign canonicalLink = model.root.canonicalLink! /]
	[#assign title = pageModel.title!/]
	[#assign windowTitle = pageModel.windowTitle! /]
	[#assign keywords = pageModel.keywords! /]
	[#assign description = pageModel.description! /]
[/#macro]
