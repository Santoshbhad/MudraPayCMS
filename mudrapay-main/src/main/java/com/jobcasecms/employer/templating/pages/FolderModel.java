package com.jobcasecms.employer.templating.pages;

import info.magnolia.context.MgnlContext;
import info.magnolia.context.WebContext;
import info.magnolia.rendering.model.RenderingModel;
import info.magnolia.rendering.model.RenderingModelImpl;
import info.magnolia.rendering.template.configured.ConfiguredTemplateDefinition;
import info.magnolia.templating.functions.TemplatingFunctions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.inject.Inject;
import javax.jcr.Node;
import javax.jcr.RepositoryException;

import static info.magnolia.cms.util.RequestDispatchUtil.PERMANENT_PREFIX;
import static info.magnolia.cms.util.RequestDispatchUtil.dispatch;
import static info.magnolia.link.LinkUtil.DEFAULT_EXTENSION;

/**
 * @author sergey.syroezhkin
 * @since 04.02.2019
 */
public class FolderModel extends RenderingModelImpl<ConfiguredTemplateDefinition> {
    private static final Logger log = LoggerFactory.getLogger(FolderModel.class);

    private TemplatingFunctions cmsfn;

    public FolderModel(Node content, ConfiguredTemplateDefinition definition, RenderingModel<?> parent) {
        super(content, definition, parent);
    }

    @Inject
    public void setCmsfn(TemplatingFunctions cmsfn) {
        this.cmsfn = cmsfn;
    }

    @Override
    public String execute() {
        if (!cmsfn.isEditMode()) {
            sendRedirect();
        }
        return super.execute();
    }

    private void sendRedirect() {
        Node pageNode = MgnlContext.getAggregationState().getMainContentNode();
        try {
            if (pageNode != null && pageNode.getDepth() > 0) {
                Node parent = pageNode.getParent();
                if (parent != null) {
                    WebContext webContext = MgnlContext.getWebContext();
                    String path = parent.getPath();
                    if (!"/".equals(parent.getPath())) {
                        path = path + "." + DEFAULT_EXTENSION;
                    }
                    dispatch(PERMANENT_PREFIX + path, webContext.getRequest(), webContext.getResponse());
                }
            }
        } catch (RepositoryException e) {
            log.info("Can't get current page node.", e);
        }
    }
}
