<link rel="stylesheet" href="${ctx.contextPath}/.resources/mudrapay-main/css/components/smartLink/smartLink.css">
<link rel="stylesheet" href="${ctx.contextPath}/.resources/mudrapay-main/css/components/section/section.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
[#assign linkLabel=content.linkLabel! /]
[#assign linkURL=cmsfn.contentByPath(content.linkURL)!/]
[#assign externalLink=content.externalLink! /]
[#assign externalLinkNew=content.externalLinkNew! /]
[#assign openIn=content.openIn !/]
[#assign alignment=content.alignment /]
[#assign buttonSize=content.buttonSize /]
[#assign buttonType=content.buttonType /]
[#assign buttonCheck = content.button! false /]
[#assign iconType=content.iconType /]
[#assign iconPosition=content.iconPosition /]
[#if content.image?has_content && damfn.getAssetLink(content.image)?has_content]
[#assign svgImage = damfn.getAssetLink(content.image)]
[#assign target = damfn.getAsset(content.image)]
[#assign link = target.link]
[/#if]
[#if buttonCheck]
<div class=${alignment}>
   <div class="smartLink">
<a href="${(linkURL=='')?then('${externalLinkNew}','${cmsfn.link(linkURL)}')}" target="${openIn}">
      <button type="button" class="btn custom-button ${buttonType} ${buttonSize} ">
      <span class="${iconType} ${iconPosition}"}> </span>
      ${linkLabel}
      [#if svgImage?has_content]
      <img src="${svgImage}" alt = ""/>
      [/#if]
      </button>
      </a>
   </div>
</div>
[#else]
<div align=${alignment}>
   <a href="${(linkURL=='')?then('${externalLinkNew}','${cmsfn.link(linkURL)}')}" target="${openIn}"> ${linkLabel}</a>
</div>
[/#if]
