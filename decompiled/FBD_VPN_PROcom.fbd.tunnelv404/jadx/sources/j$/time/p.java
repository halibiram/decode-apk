package j$.time;

import j$.time.chrono.AbstractC1338i;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class p implements j$.time.temporal.n, j$.time.temporal.o, Comparable, Serializable {
    private static final long serialVersionUID = -939150713474957432L;
    private final int a;
    private final int b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        p pVar = (p) obj;
        int i = this.a - pVar.a;
        return i == 0 ? this.b - pVar.b : i;
    }

    static {
        j$.time.format.o oVar = new j$.time.format.o();
        oVar.f("--");
        oVar.k(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        oVar.e('-');
        oVar.k(j$.time.temporal.a.DAY_OF_MONTH, 2);
        oVar.v();
    }

    private p(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.MONTH_OF_YEAR || qVar == j$.time.temporal.a.DAY_OF_MONTH : qVar != null && qVar.m(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return qVar.j();
        }
        if (qVar != j$.time.temporal.a.DAY_OF_MONTH) {
            return j$.time.temporal.m.d(this, qVar);
        }
        n F = n.F(this.a);
        F.getClass();
        int i = m.a[F.ordinal()];
        return j$.time.temporal.v.k(i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : 28, n.F(r5).E());
    }

    @Override // j$.time.temporal.n
    public final int k(j$.time.temporal.q qVar) {
        return n(qVar).a(s(qVar), qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        int i;
        if (qVar instanceof j$.time.temporal.a) {
            int i2 = o.a[((j$.time.temporal.a) qVar).ordinal()];
            if (i2 == 1) {
                i = this.b;
            } else if (i2 == 2) {
                i = this.a;
            } else {
                throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
            }
            return i;
        }
        return qVar.k(this);
    }

    @Override // j$.time.temporal.n
    public final Object v(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.e()) {
            return j$.time.chrono.u.d;
        }
        return j$.time.temporal.m.c(this, sVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        if (!AbstractC1338i.p(lVar).equals(j$.time.chrono.u.d)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        j$.time.temporal.l d = lVar.d(this.a, j$.time.temporal.a.MONTH_OF_YEAR);
        j$.time.temporal.a aVar = j$.time.temporal.a.DAY_OF_MONTH;
        return d.d(Math.min(d.n(aVar).d(), this.b), aVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.a == pVar.a && this.b == pVar.b;
    }

    public final int hashCode() {
        return (this.a << 6) + this.b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        int i = this.a;
        sb.append(i < 10 ? "0" : "");
        sb.append(i);
        int i2 = this.b;
        sb.append(i2 < 10 ? "-0" : "-");
        sb.append(i2);
        return sb.toString();
    }

    private Object writeReplace() {
        return new u((byte) 13, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void D(DataOutput dataOutput) {
        dataOutput.writeByte(this.a);
        dataOutput.writeByte(this.b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p C(ObjectInput objectInput) {
        byte readByte = objectInput.readByte();
        byte readByte2 = objectInput.readByte();
        n F = n.F(readByte);
        Objects.requireNonNull(F, "month");
        j$.time.temporal.a.DAY_OF_MONTH.C(readByte2);
        if (readByte2 > F.E()) {
            throw new RuntimeException("Illegal value for DayOfMonth field, value " + ((int) readByte2) + " is not valid for month " + F.name());
        }
        return new p(F.getValue(), readByte2);
    }
}
