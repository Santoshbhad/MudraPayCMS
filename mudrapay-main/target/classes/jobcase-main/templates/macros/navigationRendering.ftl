[#assign site = sitefn.site()! /]
[#assign theme = sitefn.theme(site)! /]

[#macro printNavigationList navItems]
<ul>
    [#list navItems as parentItem]
        <li>
            ${parentItem.item.@name}
            [#if parentItem.children?has_content]
                [@printNavigationList parentItem.children /]
            [/#if]
        </li>
    [/#list]
</ul>
[/#macro]





[#macro navigationDropdownTab parentItem]
<div class="drowndown-target inactive [#if parentItem.children?size > 2]full-width[#else]middle-width[/#if]"
     data-target="${parentItem.item.@name}">
    <div class="container w-100">
        <div class="row pl">
            [#assign colSm = (12 / parentItem.children?size)?floor]
            [#list parentItem.children as navItem]
                <div class="col-sm-[#if colSm > 2]${colSm}[#else]2[/#if]">
                    <h4>[@printNavItem navItem/]</h4>
                    [#if navItem.item.navigationDescription?has_content]
                        <span>${navItem.item.navigationDescription!}</span>
                    [/#if]

                    [#if navItem.children?has_content]
                        [#list navItem.children as navSubItem]
                            <h4>[@printNavItem navSubItem/]</h4>
                        [/#list]
                    [/#if]

                </div>
            [/#list]
        </div>
    </div>
</div>
[/#macro]


[#macro mainLevelNavigationMobile navItems]
<div class="home">
    <ul class="sidebar-nav">
        [#list navItems as navItem]
            <li>
            [#if navItem.children?has_content]
                [@printNavItem navItem=navItem trigger=true hideLink=true showCaret=true mobile=true /]
            [#else]
                [@printNavItem navItem/]
            [/#if]
            </li>
        [/#list]
    </ul>

    <ul class="sub-sidebar-nav">
        <li>
            <a href="https://www.jobcase.com" target="_blank"><strong>Visit Jobcase.com</strong></a>
        </li>
        <li>
            <a href="https://www.jobcase.com/login?redirect=https%3A%2F%2Fwww.jobcase.com%2F" target="_blank"><strong>Login</strong></a>
        </li>
    </ul>
</div>
[/#macro]


[#macro navigationDropdownTabMobile parentItem]
<div class="sidebar-tab" data-target="${parentItem.item.@name}-mobile">
    <div class="back-title">
        <a href="#" onclick="closeSidebarTab()">
            <span class="title">
                <img class="left-arrow" src="${ctx.contextPath}/.resources/${theme.name}/images/arrow-right.png"/>
                    ${parentItem.item.navigationTitle!parentItem.item.title!parentItem.item.@name}
            </span>
        </a>
    </div>

    [#list parentItem.children as navItem]
        <div class="sub-option">

            <h4>[@printNavItem navItem=navItem cssClasses="bold"/]</h4>
            [#if navItem.item.navigationDescription?has_content]
                <span>${navItem.item.navigationDescription!}</span>
            [/#if]

            [#if navItem.children?has_content]
                <div class="sub-menu">
                    [#list navItem.children as navSubItem]
                        <h4>[@printNavItem navItem=navSubItem cssClasses="bold"/]</h4>
                    [/#list]
                </div>
            [/#if]

        </div>
    [/#list]
</div>
[/#macro]


[#macro printNavItem navItem cssClasses="" suffixHtml="" trigger=false hideLink=false showCaret=false mobile=false]
<a class="${cssClasses}" data-trigger="${navItem.item.@name}[#if mobile]-mobile[/#if]"
   href="[#if !hideLink]${navfn.link(navItem.item)!"#"}[/#if]">
${navItem.item.navigationTitle!navItem.item.title!navItem.item.@name}
    [#if showCaret]
        [#if mobile]
            <img class="right-arrow" src="${ctx.contextPath}/.resources/${theme.name}/images/svg/arrow-right-2.svg"/>
        [#else]
            <span class="caret"></span>
            <span class="caret-2"></span>
        [/#if]
    [/#if]
</a>
[/#macro]
