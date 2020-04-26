<link rel="stylesheet" href="${ctx.contextPath}/.resources/mudrapay-main/css/components/tab/tab.css">
[@assignValues/]
[#assign layout = content.layout!"6x6"]
[#assign layouts = layout?split("x")]
[#assign columnCount = layouts?size]
<a class="[#if !cmsfn.isEditMode()]mobile-tab-toggle[/#if]" data-toggle="tab" href="#${content.@uuid}">${content.headline!}</a>
<div id="${content.@uuid}" class="tab-pane fade[#if isFirst || cmsfn.isEditMode()] in active[/#if]">
  [@cms.area name="tabItem" /]
  [#list 1..columnCount as columnIndex]
  [#if columnCount??]
  <div class="col-sm-${layouts[columnIndex - 1]}">
     [@cms.area name="column${columnIndex}"/]
  </div>
  [/#if]
  [/#list]
     [@cms.area name="area1" /]
</div>
[#macro assignValues]
[#assign isFirst = false]
[#assign tabsWrapper = cmsfn.parent(content)]
[#assign allTabs = cmsfn.children(tabsWrapper)/]
[#if allTabs?has_content]
[#if content.@name == allTabs[0].@name]
[#assign isFirst = true]
[/#if]
[/#if]
[/#macro]
