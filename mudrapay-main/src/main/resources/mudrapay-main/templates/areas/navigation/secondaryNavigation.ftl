<ul class="${def.parameters.mainClass!}">
[#list components as component]
    <li>[@cms.component content=component/]</li>
[/#list]
</ul>
