package org.junit.experimental.categories;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.junit.experimental.categories.Categories;
import org.junit.runner.FilterFactoryParams;
import org.junit.runner.manipulation.Filter;

/* loaded from: classes3.dex */
public final class ExcludeCategories extends CategoryFilterFactory {

    /* loaded from: classes3.dex */
    public static class ExcludesAny extends Categories.CategoryFilter {
        public ExcludesAny(List<Class<?>> list) {
            this(new HashSet(list));
        }

        @Override // org.junit.experimental.categories.Categories.CategoryFilter, org.junit.runner.manipulation.Filter
        public String describe() {
            return "excludes " + super.describe();
        }

        public ExcludesAny(Set<Class<?>> set) {
            super(true, (Set<Class<?>>) null, true, set);
        }
    }

    @Override // org.junit.experimental.categories.CategoryFilterFactory, org.junit.runner.FilterFactory
    public /* bridge */ /* synthetic */ Filter createFilter(FilterFactoryParams filterFactoryParams) {
        return super.createFilter(filterFactoryParams);
    }

    @Override // org.junit.experimental.categories.CategoryFilterFactory
    public Filter createFilter(List<Class<?>> list) {
        return new ExcludesAny(list);
    }
}
