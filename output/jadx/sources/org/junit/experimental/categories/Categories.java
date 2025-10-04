package org.junit.experimental.categories;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.junit.runner.Description;
import org.junit.runner.manipulation.Filter;
import org.junit.runner.manipulation.NoTestsRemainException;
import org.junit.runners.Suite;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.RunnerBuilder;

/* loaded from: classes3.dex */
public class Categories extends Suite {

    /* loaded from: classes3.dex */
    public static class CategoryFilter extends Filter {
        private final Set<Class<?>> excluded;
        private final boolean excludedAny;
        private final Set<Class<?>> included;
        private final boolean includedAny;

        @Deprecated
        public CategoryFilter(Class<?> cls, Class<?> cls2) {
            this.includedAny = true;
            this.excludedAny = true;
            this.included = Categories.nullableClassToSet(cls);
            this.excluded = Categories.nullableClassToSet(cls2);
        }

        private static Set<Class<?>> categories(Description description) {
            HashSet hashSet = new HashSet();
            Collections.addAll(hashSet, directCategories(description));
            Collections.addAll(hashSet, directCategories(parentDescription(description)));
            return hashSet;
        }

        public static CategoryFilter categoryFilter(boolean z, Set<Class<?>> set, boolean z2, Set<Class<?>> set2) {
            return new CategoryFilter(z, set, z2, set2);
        }

        private static Set<Class<?>> copyAndRefine(Set<Class<?>> set) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (set != null) {
                linkedHashSet.addAll(set);
            }
            linkedHashSet.remove(null);
            return linkedHashSet;
        }

        private static Class<?>[] directCategories(Description description) {
            if (description == null) {
                return new Class[0];
            }
            Category category = (Category) description.getAnnotation(Category.class);
            if (category == null) {
                return new Class[0];
            }
            return category.value();
        }

        public static CategoryFilter exclude(boolean z, Class<?>... clsArr) {
            return new CategoryFilter(true, (Class<?>[]) null, z, clsArr);
        }

        private boolean hasCorrectCategoryAnnotation(Description description) {
            Set<Class<?>> categories = categories(description);
            if (categories.isEmpty()) {
                return this.included.isEmpty();
            }
            if (!this.excluded.isEmpty()) {
                if (this.excludedAny) {
                    if (matchesAnyParentCategories(categories, this.excluded)) {
                        return false;
                    }
                } else if (matchesAllParentCategories(categories, this.excluded)) {
                    return false;
                }
            }
            if (this.included.isEmpty()) {
                return true;
            }
            if (this.includedAny) {
                return matchesAnyParentCategories(categories, this.included);
            }
            return matchesAllParentCategories(categories, this.included);
        }

        public static CategoryFilter include(boolean z, Class<?>... clsArr) {
            return new CategoryFilter(z, clsArr, true, (Class<?>[]) null);
        }

        private boolean matchesAllParentCategories(Set<Class<?>> set, Set<Class<?>> set2) {
            Iterator<Class<?>> it = set2.iterator();
            while (it.hasNext()) {
                if (!Categories.hasAssignableTo(set, it.next())) {
                    return false;
                }
            }
            return true;
        }

        private boolean matchesAnyParentCategories(Set<Class<?>> set, Set<Class<?>> set2) {
            Iterator<Class<?>> it = set2.iterator();
            while (it.hasNext()) {
                if (Categories.hasAssignableTo(set, it.next())) {
                    return true;
                }
            }
            return false;
        }

        private static Description parentDescription(Description description) {
            Class<?> testClass = description.getTestClass();
            if (testClass == null) {
                return null;
            }
            return Description.createSuiteDescription(testClass);
        }

        @Override // org.junit.runner.manipulation.Filter
        public String describe() {
            return toString();
        }

        @Override // org.junit.runner.manipulation.Filter
        public boolean shouldRun(Description description) {
            if (hasCorrectCategoryAnnotation(description)) {
                return true;
            }
            Iterator<Description> it = description.getChildren().iterator();
            while (it.hasNext()) {
                if (shouldRun(it.next())) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            Object obj;
            StringBuilder sb = new StringBuilder("categories ");
            if (this.included.isEmpty()) {
                obj = "[all]";
            } else {
                obj = this.included;
            }
            sb.append(obj);
            if (!this.excluded.isEmpty()) {
                sb.append(" - ");
                sb.append(this.excluded);
            }
            return sb.toString();
        }

        public static CategoryFilter exclude(Class<?> cls) {
            return exclude(true, cls);
        }

        public static CategoryFilter include(Class<?> cls) {
            return include(true, cls);
        }

        public static CategoryFilter exclude(Class<?>... clsArr) {
            return exclude(true, clsArr);
        }

        public static CategoryFilter include(Class<?>... clsArr) {
            return include(true, clsArr);
        }

        public CategoryFilter(boolean z, Set<Class<?>> set, boolean z2, Set<Class<?>> set2) {
            this.includedAny = z;
            this.excludedAny = z2;
            this.included = copyAndRefine(set);
            this.excluded = copyAndRefine(set2);
        }

        private CategoryFilter(boolean z, Class<?>[] clsArr, boolean z2, Class<?>[] clsArr2) {
            this.includedAny = z;
            this.excludedAny = z2;
            this.included = Categories.createSet(clsArr);
            this.excluded = Categories.createSet(clsArr2);
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3.dex */
    public @interface ExcludeCategory {
        boolean matchAny() default true;

        Class<?>[] value() default {};
    }

    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3.dex */
    public @interface IncludeCategory {
        boolean matchAny() default true;

        Class<?>[] value() default {};
    }

    public Categories(Class<?> cls, RunnerBuilder runnerBuilder) {
        super(cls, runnerBuilder);
        try {
            filter(CategoryFilter.categoryFilter(isAnyIncluded(cls), getIncludedCategory(cls), isAnyExcluded(cls), getExcludedCategory(cls)));
        } catch (NoTestsRemainException e) {
            throw new InitializationError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Set<Class<?>> createSet(Class<?>[] clsArr) {
        if (clsArr != null && clsArr.length != 0) {
            for (Class<?> cls : clsArr) {
                if (cls == null) {
                    throw new NullPointerException("has null category");
                }
            }
            if (clsArr.length == 1) {
                return Collections.singleton(clsArr[0]);
            }
            return new LinkedHashSet(Arrays.asList(clsArr));
        }
        return Collections.emptySet();
    }

    private static Set<Class<?>> getExcludedCategory(Class<?> cls) {
        Class<?>[] value;
        ExcludeCategory excludeCategory = (ExcludeCategory) cls.getAnnotation(ExcludeCategory.class);
        if (excludeCategory == null) {
            value = null;
        } else {
            value = excludeCategory.value();
        }
        return createSet(value);
    }

    private static Set<Class<?>> getIncludedCategory(Class<?> cls) {
        Class<?>[] value;
        IncludeCategory includeCategory = (IncludeCategory) cls.getAnnotation(IncludeCategory.class);
        if (includeCategory == null) {
            value = null;
        } else {
            value = includeCategory.value();
        }
        return createSet(value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasAssignableTo(Set<Class<?>> set, Class<?> cls) {
        Iterator<Class<?>> it = set.iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(it.next())) {
                return true;
            }
        }
        return false;
    }

    private static boolean isAnyExcluded(Class<?> cls) {
        ExcludeCategory excludeCategory = (ExcludeCategory) cls.getAnnotation(ExcludeCategory.class);
        if (excludeCategory != null && !excludeCategory.matchAny()) {
            return false;
        }
        return true;
    }

    private static boolean isAnyIncluded(Class<?> cls) {
        IncludeCategory includeCategory = (IncludeCategory) cls.getAnnotation(IncludeCategory.class);
        if (includeCategory != null && !includeCategory.matchAny()) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Set<Class<?>> nullableClassToSet(Class<?> cls) {
        if (cls == null) {
            return Collections.emptySet();
        }
        return Collections.singleton(cls);
    }
}
