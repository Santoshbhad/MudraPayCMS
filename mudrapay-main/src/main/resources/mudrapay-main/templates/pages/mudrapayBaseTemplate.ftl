<!DOCTYPE html>
    <html>
        <head>

            [@cms.page /]
        </head>
        <body>
         <h1>${content.title!}</h1>
            <header>
            <div class="header">
                 [@cms.area name="header"/]
            </div>
        </header>
            <div class="body">
                 [@cms.area name="contentSection"/]
            </div>
            <footer>
            <div class="footer">
                 [@cms.area name="footer"/]
            </div>
            </footer>


            [#macro assignValues]
                [#assign navigation = model.navigation![]/]
                [#assign rootPage = navfn.rootPage(content)/]
                [#assign site = sitefn.site()! /]
                [#assign theme = sitefn.theme(site)! /]
            [/#macro]


    </body>
</html>
