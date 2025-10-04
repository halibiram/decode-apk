package j$.time.format;

import androidx.work.WorkRequest;
import okhttp3.internal.connection.RealConnection;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class j implements g {
    static final long[] f = {0, 10, 100, 1000, WorkRequest.MIN_BACKOFF_MILLIS, 100000, 1000000, 10000000, 100000000, 1000000000, RealConnection.IDLE_CONNECTION_HEALTHY_NS};
    final Enum a;
    final int b;
    final int c;
    private final v d;
    final int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public j(j$.time.temporal.q qVar, int i, int i2, v vVar) {
        this.a = (Enum) qVar;
        this.b = i;
        this.c = i2;
        this.d = vVar;
        this.e = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public j(j$.time.temporal.q qVar, int i, int i2, v vVar, int i3) {
        this.a = (Enum) qVar;
        this.b = i;
        this.c = i2;
        this.d = vVar;
        this.e = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Enum, j$.time.temporal.q] */
    public j b() {
        return this.e == -1 ? this : new j(this.a, this.b, this.c, this.d, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Enum, j$.time.temporal.q] */
    public j c(int i) {
        int i2 = this.e + i;
        return new j(this.a, this.b, this.c, this.d, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.temporal.q, java.lang.Object] */
    @Override // j$.time.format.g
    public boolean j(q qVar, StringBuilder sb) {
        ?? r0 = this.a;
        Long e = qVar.e(r0);
        if (e == null) {
            return false;
        }
        long longValue = e.longValue();
        t b = qVar.b();
        String l = longValue == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(longValue));
        int length = l.length();
        int i = this.c;
        if (length > i) {
            throw new RuntimeException("Field " + ((Object) r0) + " cannot be printed as the value " + longValue + " exceeds the maximum print width of " + i);
        }
        b.getClass();
        int i2 = this.b;
        v vVar = this.d;
        if (longValue >= 0) {
            int i3 = d.a[vVar.ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    sb.append('+');
                }
            } else if (i2 < 19 && longValue >= f[i2]) {
                sb.append('+');
            }
        } else {
            int i4 = d.a[vVar.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                sb.append('-');
            } else if (i4 == 4) {
                throw new RuntimeException("Field " + ((Object) r0) + " cannot be printed as the value " + longValue + " cannot be negative according to the SignStyle");
            }
        }
        for (int i5 = 0; i5 < i2 - l.length(); i5++) {
            sb.append('0');
        }
        sb.append(l);
        return true;
    }

    public String toString() {
        Enum r0 = this.a;
        int i = this.c;
        v vVar = this.d;
        int i2 = this.b;
        if (i2 == 1 && i == 19 && vVar == v.NORMAL) {
            return "Value(" + r0 + ")";
        }
        if (i2 == i && vVar == v.NOT_NEGATIVE) {
            return "Value(" + r0 + "," + i2 + ")";
        }
        return "Value(" + r0 + "," + i2 + "," + i + "," + vVar + ")";
    }
}
