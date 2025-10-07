package j$.time.temporal;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class v implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;
    private final long a;
    private final long b;
    private final long c;
    private final long d;

    public static v j(long j, long j2) {
        if (j > j2) {
            throw new IllegalArgumentException("Minimum value must be less than maximum value");
        }
        return new v(j, j, j2, j2);
    }

    public static v k(long j, long j2) {
        if (j > j2) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        if (1 > j2) {
            throw new IllegalArgumentException("Minimum value must be less than maximum value");
        }
        return new v(1L, 1L, j, j2);
    }

    private v(long j, long j2, long j3, long j4) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
    }

    public final boolean g() {
        return this.a == this.b && this.c == this.d;
    }

    public final long e() {
        return this.a;
    }

    public final long f() {
        return this.c;
    }

    public final long d() {
        return this.d;
    }

    public final boolean h() {
        return this.a >= -2147483648L && this.d <= 2147483647L;
    }

    public final boolean i(long j) {
        return j >= this.a && j <= this.d;
    }

    public final int a(long j, q qVar) {
        if (h() && i(j)) {
            return (int) j;
        }
        throw new RuntimeException(c(j, qVar));
    }

    public final void b(long j, q qVar) {
        if (!i(j)) {
            throw new RuntimeException(c(j, qVar));
        }
    }

    private String c(long j, q qVar) {
        if (qVar != null) {
            return "Invalid value for " + qVar + " (valid values " + this + "): " + j;
        }
        return "Invalid value (valid values " + this + "): " + j;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        long j = this.a;
        long j2 = this.b;
        if (j > j2) {
            throw new InvalidObjectException("Smallest minimum value must be less than largest minimum value");
        }
        long j3 = this.c;
        long j4 = this.d;
        if (j3 > j4) {
            throw new InvalidObjectException("Smallest maximum value must be less than largest maximum value");
        }
        if (j2 > j4) {
            throw new InvalidObjectException("Minimum value must be less than maximum value");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.a == vVar.a && this.b == vVar.b && this.c == vVar.c && this.d == vVar.d;
    }

    public final int hashCode() {
        long j = this.b;
        long j2 = this.a + (j << 16) + (j >> 48);
        long j3 = this.c;
        long j4 = j2 + (j3 << 32) + (j3 >> 32);
        long j5 = this.d;
        long j6 = j4 + (j5 << 48) + (j5 >> 16);
        return (int) ((j6 >>> 32) ^ j6);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        long j = this.a;
        sb.append(j);
        long j2 = this.b;
        if (j != j2) {
            sb.append('/');
            sb.append(j2);
        }
        sb.append(" - ");
        long j3 = this.c;
        sb.append(j3);
        long j4 = this.d;
        if (j3 != j4) {
            sb.append('/');
            sb.append(j4);
        }
        return sb.toString();
    }
}
