[@assignValues/]
<div class="item[#if isFirst || cmsfn.isEditMode()] active[/#if]">
   <div class="container-fluid">
      [@cms.area name="carouselItem" /]
   </div>
</div>
[#macro assignValues]
[#assign isFirst = false]
[#assign carouselWrapper = cmsfn.parent(content)]
[#assign allItems = cmsfn.children(carouselWrapper)/]
[#if allItems?has_content]
[#if content.@uuid == allItems[0].@uuid]
[#assign isFirst = true]
[/#if]
[/#if]
[/#macro]
