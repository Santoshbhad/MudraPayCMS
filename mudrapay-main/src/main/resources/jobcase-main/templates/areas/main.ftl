<main class="${def.parameters.mainClass!}">
    [#list components as component]
        [@cms.component content=component/]
    [/#list]
</main>