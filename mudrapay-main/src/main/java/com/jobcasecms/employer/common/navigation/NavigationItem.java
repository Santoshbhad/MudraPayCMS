package com.jobcasecms.employer.common.navigation;

import info.magnolia.jcr.util.ContentMap;

import java.util.List;

/**
 * @author sergey.syroezhkin
 * @since 04.02.2019
 */
@SuppressWarnings("unused")
public interface NavigationItem {

    ContentMap getItem();

    List<NavigationItem> getChildren();

}
