[#-------------- RENDERING --------------]
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8" xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9" xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}"><![endif]-->
<!--[if gt IE 8]><!--><html class="no-js" xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}"><!--<![endif]-->
    [#include "/mudrapay-main/templates/pages/areas/head.ftl"]
    <body>
        [@cms.area name="header"/]
        [@cms.area name="main"/]
        [@cms.area name="footer"/]
        [#include "/mudrapay-main/templates/pages/areas/footer-scripts.ftl"]
    </body>
</html>
