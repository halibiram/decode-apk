package org.hamcrest.core;

import defpackage.AbstractC0362x4440ab85;
import java.util.Iterator;
import org.hamcrest.BaseMatcher;
import org.hamcrest.Description;
import org.hamcrest.Matcher;

/* loaded from: classes3.dex */
abstract class ShortcutCombination<T> extends BaseMatcher<T> {
    private final Iterable<Matcher<? super T>> matchers;

    public ShortcutCombination(Iterable<Matcher<? super T>> iterable) {
        this.matchers = iterable;
    }

    @Override // org.hamcrest.SelfDescribing
    public abstract void describeTo(Description description);

    public void describeTo(Description description, String str) {
        description.appendList("(", AbstractC0362x4440ab85.m2932x95f25580(" ", str, " "), ")", this.matchers);
    }

    @Override // org.hamcrest.Matcher
    public abstract boolean matches(Object obj);

    public boolean matches(Object obj, boolean z) {
        Iterator<Matcher<? super T>> it = this.matchers.iterator();
        while (it.hasNext()) {
            if (it.next().matches(obj) == z) {
                return z;
            }
        }
        return !z;
    }
}
