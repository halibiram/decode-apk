package j$.util;

import java.util.NoSuchElementException;

/* loaded from: classes4.dex */
public final class C {
    private static final C c = new C();
    private final boolean a;
    private final double b;

    private C() {
        this.a = false;
        this.b = Double.NaN;
    }

    public static C a() {
        return c;
    }

    private C(double d) {
        this.a = true;
        this.b = d;
    }

    public static C d(double d) {
        return new C(d);
    }

    public final double b() {
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
        if (!(obj instanceof C)) {
            return false;
        }
        C c2 = (C) obj;
        boolean z = this.a;
        if (z && c2.a) {
            if (Double.compare(this.b, c2.b) == 0) {
                return true;
            }
        } else if (z == c2.a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (!this.a) {
            return 0;
        }
        long doubleToLongBits = Double.doubleToLongBits(this.b);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    public final String toString() {
        if (this.a) {
            return "OptionalDouble[" + this.b + "]";
        }
        return "OptionalDouble.empty";
    }
}
