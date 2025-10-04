package j$.time.format;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public final class t {
    public static final t a = new Object();

    public final int hashCode() {
        return 182;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.time.format.t, java.lang.Object] */
    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        ((t) obj).getClass();
        return true;
    }

    public final String toString() {
        return "DecimalStyle[0+-.]";
    }
}
