package com.mudrapay.employer.templating.areas;

import com.mudrapay.employer.common.navigation.NavigationBuilder;
import com.mudrapay.employer.common.navigation.NavigationItem;
import info.magnolia.rendering.model.RenderingModel;
import info.magnolia.rendering.model.RenderingModelImpl;
import info.magnolia.rendering.template.AreaDefinition;

import javax.inject.Inject;
import javax.jcr.Node;
import javax.jcr.RepositoryException;
import java.util.List;

/**
 * @author sergey.syroezhkin
 * @since 04.02.2019
 */
public class NavigationMainArea<RD extends AreaDefinition> extends RenderingModelImpl<RD> {

    private NavigationBuilder navigationBuilder;

    public NavigationMainArea(Node content, RD definition, RenderingModel<?> parent) {
        super(content, definition, parent);
    }

    @Inject
    public void setNavigationBuilder(NavigationBuilder navigationBuilder) {
        this.navigationBuilder = navigationBuilder;
    }

    public List<NavigationItem> getNavigation() throws RepositoryException {
        return navigationBuilder.build(getContent());
    }
}
