package org.hamcrest;

import org.hamcrest.Description;
import org.hamcrest.internal.ReflectiveTypeFinder;

/* loaded from: classes3.dex */
public abstract class TypeSafeDiagnosingMatcher<T> extends BaseMatcher<T> {
    private static final ReflectiveTypeFinder TYPE_FINDER = new ReflectiveTypeFinder("matchesSafely", 2, 0);
    private final Class<?> expectedType;

    public TypeSafeDiagnosingMatcher(Class<?> cls) {
        this.expectedType = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.hamcrest.BaseMatcher, org.hamcrest.Matcher
    public final void describeMismatch(Object obj, Description description) {
        if (obj != 0 && this.expectedType.isInstance(obj)) {
            matchesSafely(obj, description);
        } else {
            super.describeMismatch(obj, description);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.hamcrest.Matcher
    public final boolean matches(Object obj) {
        if (obj != 0 && this.expectedType.isInstance(obj) && matchesSafely(obj, new Description.NullDescription())) {
            return true;
        }
        return false;
    }

    public abstract boolean matchesSafely(T t, Description description);

    public TypeSafeDiagnosingMatcher(ReflectiveTypeFinder reflectiveTypeFinder) {
        this.expectedType = reflectiveTypeFinder.findExpectedType(getClass());
    }

    public TypeSafeDiagnosingMatcher() {
        this(TYPE_FINDER);
    }
}
