package j$.util;

import java.util.NoSuchElementException;

/* loaded from: classes4.dex */
public final class E {
    private static final E c = new E();
    private final boolean a;
    private final long b;

    private E() {
        this.a = false;
        this.b = 0L;
    }

    public static E a() {
        return c;
    }

    private E(long j) {
        this.a = true;
        this.b = j;
    }

    public static E d(long j) {
        return new E(j);
    }

    public final long b() {
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
        if (!(obj instanceof E)) {
            return false;
        }
        E e = (E) obj;
        boolean z = this.a;
        if (z && e.a) {
            if (this.b == e.b) {
                return true;
            }
        } else if (z == e.a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (!this.a) {
            return 0;
        }
        long j = this.b;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        if (this.a) {
            return "OptionalLong[" + this.b + "]";
        }
        return "OptionalLong.empty";
    }
}
