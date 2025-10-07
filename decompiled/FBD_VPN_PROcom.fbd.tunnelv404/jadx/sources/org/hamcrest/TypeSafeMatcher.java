package org.hamcrest;

import org.hamcrest.internal.ReflectiveTypeFinder;

/* loaded from: classes3.dex */
public abstract class TypeSafeMatcher<T> extends BaseMatcher<T> {
    private static final ReflectiveTypeFinder TYPE_FINDER = new ReflectiveTypeFinder("matchesSafely", 1, 0);
    private final Class<?> expectedType;

    public TypeSafeMatcher() {
        this(TYPE_FINDER);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.hamcrest.BaseMatcher, org.hamcrest.Matcher
    public final void describeMismatch(Object obj, Description description) {
        if (obj == 0) {
            super.describeMismatch(obj, description);
        } else if (!this.expectedType.isInstance(obj)) {
            description.appendText("was a ").appendText(obj.getClass().getName()).appendText(" (").appendValue(obj).appendText(")");
        } else {
            describeMismatchSafely(obj, description);
        }
    }

    public void describeMismatchSafely(T t, Description description) {
        super.describeMismatch(t, description);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.hamcrest.Matcher
    public final boolean matches(Object obj) {
        if (obj != 0 && this.expectedType.isInstance(obj) && matchesSafely(obj)) {
            return true;
        }
        return false;
    }

    public abstract boolean matchesSafely(T t);

    public TypeSafeMatcher(Class<?> cls) {
        this.expectedType = cls;
    }

    public TypeSafeMatcher(ReflectiveTypeFinder reflectiveTypeFinder) {
        this.expectedType = reflectiveTypeFinder.findExpectedType(getClass());
    }
}
