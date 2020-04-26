<!DOCTYPE html>
    <html>

        <head>

             <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
             <link rel="stylesheet" href="${ctx.contextPath}/.resources/JobCaseCMS-webapp/webresources/css/sass/JobCase.css">

                ${resfn.css(["/JobCaseCMS-webapp/webresources/author/css/.*.css"])}

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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <script src="${ctx.contextPath}/.resources/JobCaseCMS-webapp/webresources/JavaScript/jobCaseCMS.js"></script>
    </body>
</html>
