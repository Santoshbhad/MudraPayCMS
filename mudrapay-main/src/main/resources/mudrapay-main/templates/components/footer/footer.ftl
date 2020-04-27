[#if cmsfn.editMode]
       <div class="author-editor-ui">Footer</div>
[/#if]

[#if content.footer?has_content]
    ${cmsfn.decode(content).footer}
[/#if]

<div class="footer">
    <div class="container">
        <div class="terms_to_use">
          [@cms.area name="terms"/]
        </div>
        <div class="logo">
        [@cms.area name="logo"/]
        </div>
        <div class="copyright">
          [@cms.area name="copyright"/]
        </div>
    </div>
</div>


