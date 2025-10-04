package j$.time;

import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.a, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1327a extends AbstractC1328b implements Serializable {
    static final C1327a b;
    private static final long serialVersionUID = 6740630888130243051L;
    private final A a;

    static {
        System.currentTimeMillis();
        b = new C1327a(A.e);
    }

    C1327a(A a) {
        this.a = a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1327a)) {
            return false;
        }
        return this.a.equals(((C1327a) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode() + 1;
    }

    public final String toString() {
        return "SystemClock[" + this.a + "]";
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
    }
}
