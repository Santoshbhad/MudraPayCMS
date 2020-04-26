[@assignValues /]

<footer class="footer">
    <div class="container">
        <div class="footer-wrapper">
            <div class="footer-text">
                [#if logoRef??]
                <div class="logo">
                <a href="${cmsfn.link(rootPage)}">
                        <img class="right-img" src="${logoRef}" />
                    </a>
                </div>
                [/#if]
                <div class="row[#if !cmsfn.isEditMode()] footer-links[/#if]">
					[@cms.area name = "footerLinks" /]
                </div>
                <span class="copyright">&copy; ${content.copyright!'2020'}</span>
            </div>
        </div>
    </div>

<main class="${def.parameters.mainClass!}">
    [#list components as component]
        [@cms.component content=component/]
    [/#list]
</main>


</footer>



[#macro assignValues]
	[#assign rootPage = navfn.rootPage(content)/]
	[#assign site = sitefn.site()! /]
	[#assign theme = sitefn.theme(site)! /]
    [#if content.logoImage??]
        [#assign logoRef = damfn.getAssetLink(content.logoImage!) /]
    [/#if]
[/#macro]
