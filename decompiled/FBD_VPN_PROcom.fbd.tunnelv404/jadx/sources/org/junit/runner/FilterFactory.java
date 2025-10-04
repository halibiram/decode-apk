package org.junit.runner;

import org.junit.runner.manipulation.Filter;

/* loaded from: classes3.dex */
public interface FilterFactory {

    /* loaded from: classes3.dex */
    public static class FilterNotCreatedException extends Exception {
        public FilterNotCreatedException(Exception exc) {
            super(exc.getMessage(), exc);
        }
    }

    Filter createFilter(FilterFactoryParams filterFactoryParams);
}
