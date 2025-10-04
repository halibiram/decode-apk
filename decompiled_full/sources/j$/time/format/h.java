package j$.time.format;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class h extends j {
    private final boolean g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(j$.time.temporal.q qVar, int i, int i2, boolean z, int i3) {
        super(qVar, i, i2, v.NOT_NEGATIVE, i3);
        this.g = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Enum, j$.time.temporal.q] */
    @Override // j$.time.format.j
    public final j b() {
        if (this.e == -1) {
            return this;
        }
        return new h(this.a, this.b, this.c, this.g, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Enum, j$.time.temporal.q] */
    @Override // j$.time.format.j
    public final j c(int i) {
        return new h(this.a, this.b, this.c, this.g, this.e + i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.temporal.q] */
    @Override // j$.time.format.j, j$.time.format.g
    public final boolean j(q qVar, StringBuilder sb) {
        ?? r0 = this.a;
        Long e = qVar.e(r0);
        if (e == null) {
            return false;
        }
        t b = qVar.b();
        long longValue = e.longValue();
        j$.time.temporal.v j = r0.j();
        j.b(longValue, r0);
        BigDecimal valueOf = BigDecimal.valueOf(j.e());
        BigDecimal add = BigDecimal.valueOf(j.d()).subtract(valueOf).add(BigDecimal.ONE);
        BigDecimal subtract = BigDecimal.valueOf(longValue).subtract(valueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal divide = subtract.divide(add, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (divide.compareTo(bigDecimal) != 0) {
            bigDecimal = divide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : divide.stripTrailingZeros();
        }
        int scale = bigDecimal.scale();
        boolean z = this.g;
        int i = this.b;
        if (scale != 0) {
            String substring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.c), roundingMode).toPlainString().substring(2);
            b.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(substring);
            return true;
        }
        if (i <= 0) {
            return true;
        }
        if (z) {
            b.getClass();
            sb.append('.');
        }
        for (int i2 = 0; i2 < i; i2++) {
            b.getClass();
            sb.append('0');
        }
        return true;
    }

    @Override // j$.time.format.j
    public final String toString() {
        return "Fraction(" + this.a + "," + this.b + "," + this.c + (this.g ? ",DecimalPoint" : "") + ")";
    }
}
