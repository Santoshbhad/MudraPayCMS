[#import '/mudrapay-main/templates/macros/navigationRendering.ftl' as NAVIGATION]

[@assignValues/]

<div class="sidebar roboto">
    <div id="sidebar-wrapper h-100">
        <div class="container">

            <a class="navbar-logo" href="${navfn.link(rootPage)!"#"}"><img src="${ctx.contextPath}/.resources/${theme.name}/images/svg/logo-jobcase-for-employers.svg"></a>
            <button type="button" class="close" aria-label="Close" onclick="toogleSideBar()">
                <span aria-hidden="true">&times;</span>
            </button>

            [@NAVIGATION.mainLevelNavigationMobile navigation /]

            [#list navigation as parentItem]
                [#if parentItem.children?has_content]
                    [@NAVIGATION.navigationDropdownTabMobile parentItem /]
                [/#if]
            [/#list]

        </div>
    </div>
</div>

[#macro assignValues]
    [#assign navigation = model.navigation![]/]
    [#assign rootPage = navfn.rootPage(content)/]
    [#assign site = sitefn.site()! /]
    [#assign theme = sitefn.theme(site)! /]
[/#macro]
