package org.junit.runner;

import org.junit.internal.Classes;
import org.junit.runner.FilterFactory;
import org.junit.runner.manipulation.Filter;

/* loaded from: classes3.dex */
class FilterFactories {
    public static Filter createFilter(String str, FilterFactoryParams filterFactoryParams) {
        return createFilterFactory(str).createFilter(filterFactoryParams);
    }

    public static FilterFactory createFilterFactory(String str) {
        try {
            return createFilterFactory((Class<? extends FilterFactory>) Classes.getClass(str).asSubclass(FilterFactory.class));
        } catch (Exception e) {
            throw new FilterFactory.FilterNotCreatedException(e);
        }
    }

    public static Filter createFilterFromFilterSpec(Request request, String str) {
        String[] strArr;
        Description description = request.getRunner().getDescription();
        if (str.contains("=")) {
            strArr = str.split("=", 2);
        } else {
            strArr = new String[]{str, ""};
        }
        return createFilter(strArr[0], new FilterFactoryParams(description, strArr[1]));
    }

    public static Filter createFilter(Class<? extends FilterFactory> cls, FilterFactoryParams filterFactoryParams) {
        return createFilterFactory(cls).createFilter(filterFactoryParams);
    }

    public static FilterFactory createFilterFactory(Class<? extends FilterFactory> cls) {
        try {
            return cls.getConstructor(null).newInstance(null);
        } catch (Exception e) {
            throw new FilterFactory.FilterNotCreatedException(e);
        }
    }
}
