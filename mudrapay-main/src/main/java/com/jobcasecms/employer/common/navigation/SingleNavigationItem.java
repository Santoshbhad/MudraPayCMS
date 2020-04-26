package com.jobcasecms.employer.common.navigation;

import info.magnolia.jcr.util.ContentMap;

import java.util.Collections;
import java.util.List;

/**
 * @author sergey.syroezhkin
 * @since 04.02.2019
 */
public class SingleNavigationItem implements NavigationItem {

    private final ContentMap item;

    public SingleNavigationItem(ContentMap item) {
        this.item = item;
    }

    @Override
    public ContentMap getItem() {
        return item;
    }

    @Override
    public List<NavigationItem> getChildren() {
        return Collections.emptyList();
    }
}
