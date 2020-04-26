package com.jobcasecms.employer.common.navigation;

import info.magnolia.jcr.util.ContentMap;
import info.magnolia.templating.functions.NavigationTemplatingFunctions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.inject.Inject;
import javax.jcr.RepositoryException;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;


/**
 * @author sergey.syroezhkin
 * @since 04.02.2019
 */
public class NavigationBuilder {

    private static final Logger log = LoggerFactory.getLogger(NavigationBuilder.class);

    private NavigationTemplatingFunctions navfn;

    @Inject
    public void setNavfn(NavigationTemplatingFunctions navfn) {
        this.navfn = navfn;
    }

    public List<NavigationItem> build(ContentMap content) throws RepositoryException {
        ContentMap rootPage = navfn.rootPage(content);
        return transformToNavigationItems(navfn.navItems(rootPage));
    }

    private NavigationItem buildItem(ContentMap item) {
        List<ContentMap> children = this.navItems(item);
        if (!children.isEmpty()) {
            return new ListNavigationItem(item, transformToNavigationItems(children));
        } else {
            return new SingleNavigationItem(item);
        }
    }

    private List<NavigationItem> transformToNavigationItems(List<ContentMap> contentMaps) {
        return contentMaps.stream().map(this::buildItem).collect(Collectors.toList());
    }

    private List<ContentMap> navItems(ContentMap item) {
        try {
            return navfn.navItems(item);
        } catch (RepositoryException e) {
            log.error("Cannot get navItems for the content: {}", item, e);
        }
        return Collections.emptyList();
    }

}
