package com.mudrapay.employer.common.navigation;

import info.magnolia.jcr.util.ContentMap;

import java.util.List;

/**
 * @author sergey.syroezhkin
 * @since 04.02.2019
 */
public class ListNavigationItem implements NavigationItem {

    private final ContentMap item;
    private final List<NavigationItem> children;

    public ListNavigationItem(ContentMap item, List<NavigationItem> children) {
        this.item = item;
        this.children = children;
    }

    @Override
    public ContentMap getItem() {
        return item;
    }

    @Override
    public List<NavigationItem> getChildren() {
        return this.children;
    }

}
