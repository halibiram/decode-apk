package j$.time.format;

import j$.time.A;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class i implements g {
    @Override // j$.time.format.g
    public final boolean j(q qVar, StringBuilder sb) {
        Long e = qVar.e(j$.time.temporal.a.INSTANT_SECONDS);
        j$.time.temporal.n d = qVar.d();
        j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_SECOND;
        Long valueOf = d.f(aVar) ? Long.valueOf(qVar.d().s(aVar)) : null;
        int i = 0;
        if (e == null) {
            return false;
        }
        long longValue = e.longValue();
        int w = aVar.w(valueOf != null ? valueOf.longValue() : 0L);
        if (longValue >= -62167219200L) {
            long j = longValue - 253402300800L;
            long j2 = j$.com.android.tools.r8.a.j(j, 315569520000L) + 1;
            j$.time.j L = j$.time.j.L(j$.com.android.tools.r8.a.i(j, 315569520000L) - 62167219200L, 0, A.e);
            if (j2 > 0) {
                sb.append('+');
                sb.append(j2);
            }
            sb.append(L);
            if (L.F() == 0) {
                sb.append(":00");
            }
        } else {
            long j3 = longValue + 62167219200L;
            long j4 = j3 / 315569520000L;
            long j5 = j3 % 315569520000L;
            j$.time.j L2 = j$.time.j.L(j5 - 62167219200L, 0, A.e);
            int length = sb.length();
            sb.append(L2);
            if (L2.F() == 0) {
                sb.append(":00");
            }
            if (j4 < 0) {
                if (L2.G() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j4 - 1));
                } else if (j5 == 0) {
                    sb.insert(length, j4);
                } else {
                    sb.insert(length + 1, Math.abs(j4));
                }
            }
        }
        if (w > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (w <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = w / i2;
                sb.append((char) (i3 + 48));
                w -= i3 * i2;
                i2 /= 10;
                i++;
            }
        }
        sb.append('Z');
        return true;
    }

    public final String toString() {
        return "Instant()";
    }
}
