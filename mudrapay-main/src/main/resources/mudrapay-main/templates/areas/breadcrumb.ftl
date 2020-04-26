[@assignValues /]
<link rel="stylesheet" href="${ctx.contextPath}/.resources/mudrapay-main/css/components/breadcrumb/breadcrumb.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
[#macro assignValues]
    [#assign rootPage = navfn.rootPage(content) /]
    [#assign site = sitefn.site()! /]
    [#assign theme = sitefn.theme(site)! /]
    [#assign breads = model.breadcrumList![] ]
    [#assign homepagepath = model.homepagePath!]
[/#macro]

[@breadcrumList breads! /]
[#macro breadcrumList breadsItem ]
    <ol class="component breadcrumb">
        [#list breadsItem?reverse as breads]
        [#if breads?? ]
        <li>
            <div class="delimiter">
                 ${model.delim ! ">"}
            </div>
        </li>
        <li>
            <a href="${cmsfn.link(breads.getItem())}" > ${breads.getItem().title! breads.getItem()}</a>
        </li>
        [/#if]
        [/#list]
    </ol>
[/#macro]
