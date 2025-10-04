package j$.util;

import java.util.NoSuchElementException;

/* loaded from: classes4.dex */
public final class D {
    private static final D c = new D();
    private final boolean a;
    private final int b;

    private D() {
        this.a = false;
        this.b = 0;
    }

    public static D a() {
        return c;
    }

    private D(int i) {
        this.a = true;
        this.b = i;
    }

    public static D d(int i) {
        return new D(i);
    }

    public final int b() {
        if (!this.a) {
            throw new NoSuchElementException("No value present");
        }
        return this.b;
    }

    public final boolean c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof D)) {
            return false;
        }
        D d = (D) obj;
        boolean z = this.a;
        if (z && d.a) {
            if (this.b == d.b) {
                return true;
            }
        } else if (z == d.a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (this.a) {
            return this.b;
        }
        return 0;
    }

    public final String toString() {
        if (this.a) {
            return "OptionalInt[" + this.b + "]";
        }
        return "OptionalInt.empty";
    }
}
