<link rel="stylesheet" href="${ctx.contextPath}/.resources/mudrapay-main/css/components/section/section.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
[#assign display_as=content.display! /]
[#assign centerAlign=content.center?string!/]
[#assign layout=content.layout! /]
[#assign limit_container=content.fullWidth?string! /]
[#assign padding=content.padding! /]
[#assign margin=content.margin! /]
[#assign themeColor=content.themeColor! /]
[#assign themeColorPicker = content.themeColorPicker!]
[#assign textColor = content.textColor!]
[#assign themeSelector = content.themeCustomClass!]
[#assign layout = content.layout!"6x6"]
[#assign layouts = layout?split("x")]
[#assign columnCount = layouts?size]
[#if content.image?has_content && damfn.getAssetLink(content.image)?has_content]
    [#assign svgImage = damfn.getAssetLink(content.image)]
    [#assign target = damfn.getAsset(content.image)]
    [#assign link = target.link]
[#else]
    [#assign svgImage = "/jobcase-theme/src/main/resources/jobcase-theme/img/placeholder.jpg"]
[/#if]
<div class="${display_as} ${themeSelector}">
   <div class=" contactUs-bg " style = "background-image:url(${svgImage});">
      <div class=" ${(limit_container=='true')?then('container','container-fluid')}"   style="background-color: ${themeColor}; color:${textColor}; background-color: ${themeColorPicker};">
         <div class="${content.padding}">
            <div class="${content.margin}">
               <div class ="layout">
                  [#if centerAlign=="true"]
                  <div class ="center">
                     <div class="row">
                        [#list 1..columnCount as columnIndex]
                        <div class="col-md-${layouts[columnIndex - 1]}">
                           [@cms.area name="column${columnIndex}"/]
                        </div>
                        [/#list]
                     </div>
                     [#else]
                     <div class="row">
                        [#list 1..columnCount as columnIndex]
                        <div class="col-md-${layouts[columnIndex - 1]}">
                           [@cms.area name="column${columnIndex}"/]
                        </div>
                        [/#list]
                        [/#if]
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
