<link rel="stylesheet" href="${ctx.contextPath}/.resources/jobcase-main/css/components/header/header.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">


[#if content.header?has_content]
     ${cmsfn.decode(content).header}
[/#if]
<nav class="navbar navbar-light header-component">
    <div class="row container-fluid">
        <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-xs-12 get-the-app">
			[@cms.area name="Get-The-App"/]
        </div>
        <div class="col-xl-3 col-lg-3 col-md-4 col-sm-8 col-xs-12 support-email">
			[@cms.area name="Support-Email"/]
        </div>
        <div class="col-xl-3 col-lg-2 col-md-4 col-sm-4 col-xs-12 whats-app-number">
			[@cms.area name="Whats-App-Number"/]
        </div>
        <div class="col-xl-3 col-lg-4 col-md-12 col-sm-8 col-xs-12 toll-free-number">
			[@cms.area name="Toll-Free-Number"/]
        </div>
    </div>
</nav>

