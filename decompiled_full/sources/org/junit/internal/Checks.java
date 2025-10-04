package org.junit.internal;

/* loaded from: classes3.dex */
public final class Checks {
    private Checks() {
    }

    public static <T> T notNull(T t) {
        t.getClass();
        return t;
    }

    public static <T> T notNull(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }
}
