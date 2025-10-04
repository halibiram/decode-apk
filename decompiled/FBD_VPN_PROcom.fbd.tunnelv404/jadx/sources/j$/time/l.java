package j$.time;

import com.google.common.base.Ascii;
import com.tencent.mmkv.MMKV;
import j$.time.chrono.AbstractC1338i;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.time.DurationKt;

/* loaded from: classes4.dex */
public final class l implements j$.time.temporal.l, j$.time.temporal.o, Comparable, Serializable {
    public static final l e;
    public static final l f;
    public static final l g;
    private static final l[] h = new l[24];
    private static final long serialVersionUID = 6414437269572265201L;
    private final byte a;
    private final byte b;
    private final byte c;
    private final int d;

    static {
        int i = 0;
        while (true) {
            l[] lVarArr = h;
            if (i < lVarArr.length) {
                lVarArr[i] = new l(i, 0, 0, 0);
                i++;
            } else {
                l lVar = lVarArr[0];
                g = lVar;
                l lVar2 = lVarArr[12];
                e = lVar;
                f = new l(23, 59, 59, 999999999);
                return;
            }
        }
    }

    public static l J(int i) {
        j$.time.temporal.a.HOUR_OF_DAY.C(i);
        return h[i];
    }

    public static l L(long j) {
        j$.time.temporal.a.SECOND_OF_DAY.C(j);
        int i = (int) (j / 3600);
        long j2 = j - (i * MMKV.ExpireInHour);
        return D(i, (int) (j2 / 60), (int) (j2 - (r0 * 60)), 0);
    }

    public static l K(long j) {
        j$.time.temporal.a.NANO_OF_DAY.C(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return D(i, i2, i3, (int) (j3 - (i3 * 1000000000)));
    }

    public static l E(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        l lVar = (l) nVar.v(j$.time.temporal.m.g());
        if (lVar != null) {
            return lVar;
        }
        throw new RuntimeException("Unable to obtain LocalTime from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName());
    }

    private static l D(int i, int i2, int i3, int i4) {
        if ((i2 | i3 | i4) == 0) {
            return h[i];
        }
        return new l(i, i2, i3, i4);
    }

    private l(int i, int i2, int i3, int i4) {
        this.a = (byte) i;
        this.b = (byte) i2;
        this.c = (byte) i3;
        this.d = i4;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) qVar).D();
        }
        return qVar != null && qVar.m(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        return j$.time.temporal.m.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final int k(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            return F(qVar);
        }
        return j$.time.temporal.m.a(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            if (qVar == j$.time.temporal.a.NANO_OF_DAY) {
                return S();
            }
            if (qVar == j$.time.temporal.a.MICRO_OF_DAY) {
                return S() / 1000;
            }
            return F(qVar);
        }
        return qVar.k(this);
    }

    private int F(j$.time.temporal.q qVar) {
        int i = k.a[((j$.time.temporal.a) qVar).ordinal()];
        byte b = this.b;
        int i2 = this.d;
        byte b2 = this.a;
        switch (i) {
            case 1:
                return i2;
            case 2:
                throw new RuntimeException("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return i2 / 1000;
            case 4:
                throw new RuntimeException("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return i2 / DurationKt.NANOS_IN_MILLIS;
            case 6:
                return (int) (S() / 1000000);
            case 7:
                return this.c;
            case 8:
                return T();
            case 9:
                return b;
            case 10:
                return (b2 * 60) + b;
            case 11:
                return b2 % 12;
            case 12:
                int i3 = b2 % 12;
                if (i3 % 12 == 0) {
                    return 12;
                }
                return i3;
            case 13:
                return b2;
            case 14:
                if (b2 == 0) {
                    return 24;
                }
                return b2;
            case 15:
                return b2 / 12;
            default:
                throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
    }

    public final int G() {
        return this.a;
    }

    public final int I() {
        return this.c;
    }

    public final int H() {
        return this.d;
    }

    @Override // j$.time.temporal.l
    /* renamed from: U, reason: merged with bridge method [inline-methods] */
    public final l d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            aVar.C(j);
            int i = k.a[aVar.ordinal()];
            byte b = this.b;
            byte b2 = this.c;
            int i2 = this.d;
            byte b3 = this.a;
            switch (i) {
                case 1:
                    return V((int) j);
                case 2:
                    return K(j);
                case 3:
                    return V(((int) j) * 1000);
                case 4:
                    return K(j * 1000);
                case 5:
                    return V(((int) j) * DurationKt.NANOS_IN_MILLIS);
                case 6:
                    return K(j * 1000000);
                case 7:
                    int i3 = (int) j;
                    if (b2 == i3) {
                        return this;
                    }
                    j$.time.temporal.a.SECOND_OF_MINUTE.C(i3);
                    return D(b3, b, i3, i2);
                case 8:
                    return Q(j - T());
                case 9:
                    int i4 = (int) j;
                    if (b == i4) {
                        return this;
                    }
                    j$.time.temporal.a.MINUTE_OF_HOUR.C(i4);
                    return D(b3, i4, b2, i2);
                case 10:
                    return O(j - ((b3 * 60) + b));
                case 11:
                    return N(j - (b3 % 12));
                case 12:
                    if (j == 12) {
                        j = 0;
                    }
                    return N(j - (b3 % 12));
                case 13:
                    int i5 = (int) j;
                    if (b3 == i5) {
                        return this;
                    }
                    j$.time.temporal.a.HOUR_OF_DAY.C(i5);
                    return D(i5, b, b2, i2);
                case 14:
                    if (j == 24) {
                        j = 0;
                    }
                    int i6 = (int) j;
                    if (b3 == i6) {
                        return this;
                    }
                    j$.time.temporal.a.HOUR_OF_DAY.C(i6);
                    return D(i6, b, b2, i2);
                case 15:
                    return N((j - (b3 / 12)) * 12);
                default:
                    throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
            }
        }
        return (l) qVar.n(this, j);
    }

    public final l V(int i) {
        if (this.d == i) {
            return this;
        }
        j$.time.temporal.a.NANO_OF_SECOND.C(i);
        return D(this.a, this.b, this.c, i);
    }

    @Override // j$.time.temporal.l
    /* renamed from: M, reason: merged with bridge method [inline-methods] */
    public final l e(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof ChronoUnit) {
            switch (k.b[((ChronoUnit) tVar).ordinal()]) {
                case 1:
                    return P(j);
                case 2:
                    return P((j % 86400000000L) * 1000);
                case 3:
                    return P((j % 86400000) * 1000000);
                case 4:
                    return Q(j);
                case 5:
                    return O(j);
                case 6:
                    return N(j);
                case 7:
                    return N((j % 2) * 12);
                default:
                    throw new RuntimeException("Unsupported unit: " + tVar);
            }
        }
        return (l) tVar.j(this, j);
    }

    public final l N(long j) {
        if (j == 0) {
            return this;
        }
        return D(((((int) (j % 24)) + this.a) + 24) % 24, this.b, this.c, this.d);
    }

    public final l O(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.a * 60) + this.b;
        int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
        return i == i2 ? this : D(i2 / 60, i2 % 60, this.c, this.d);
    }

    public final l Q(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.b * 60) + (this.a * Ascii.DLE) + this.c;
        int i2 = ((((int) (j % 86400)) + i) + MMKV.ExpireInDay) % MMKV.ExpireInDay;
        return i == i2 ? this : D(i2 / MMKV.ExpireInHour, (i2 / 60) % 60, i2 % 60, this.d);
    }

    public final l P(long j) {
        if (j == 0) {
            return this;
        }
        long S = S();
        long j2 = (((j % 86400000000000L) + S) + 86400000000000L) % 86400000000000L;
        return S == j2 ? this : D((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l j(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? e(Long.MAX_VALUE, chronoUnit).e(1L, chronoUnit) : e(-j, chronoUnit);
    }

    @Override // j$.time.temporal.n
    public final Object v(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.e() || sVar == j$.time.temporal.m.k() || sVar == j$.time.temporal.m.j() || sVar == j$.time.temporal.m.h()) {
            return null;
        }
        if (sVar == j$.time.temporal.m.g()) {
            return this;
        }
        if (sVar == j$.time.temporal.m.f()) {
            return null;
        }
        if (sVar == j$.time.temporal.m.i()) {
            return ChronoUnit.NANOS;
        }
        return sVar.a(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        return lVar.d(S(), j$.time.temporal.a.NANO_OF_DAY);
    }

    public final int T() {
        return (this.b * 60) + (this.a * Ascii.DLE) + this.c;
    }

    public final long S() {
        return (this.c * 1000000000) + (this.b * 60000000000L) + (this.a * 3600000000000L) + this.d;
    }

    @Override // java.lang.Comparable
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public final int compareTo(l lVar) {
        int compare = Integer.compare(this.a, lVar.a);
        if (compare != 0) {
            return compare;
        }
        int compare2 = Integer.compare(this.b, lVar.b);
        if (compare2 != 0) {
            return compare2;
        }
        int compare3 = Integer.compare(this.c, lVar.c);
        return compare3 == 0 ? Integer.compare(this.d, lVar.d) : compare3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.a == lVar.a && this.b == lVar.b && this.c == lVar.c && this.d == lVar.d;
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l m(h hVar) {
        return (l) AbstractC1338i.a(hVar, this);
    }

    public final int hashCode() {
        long S = S();
        return (int) (S ^ (S >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b = this.a;
        sb.append(b < 10 ? "0" : "");
        sb.append((int) b);
        byte b2 = this.b;
        sb.append(b2 < 10 ? ":0" : ":");
        sb.append((int) b2);
        byte b3 = this.c;
        int i = this.d;
        if (b3 > 0 || i > 0) {
            sb.append(b3 < 10 ? ":0" : ":");
            sb.append((int) b3);
            if (i > 0) {
                sb.append('.');
                if (i % DurationKt.NANOS_IN_MILLIS == 0) {
                    sb.append(Integer.toString((i / DurationKt.NANOS_IN_MILLIS) + 1000).substring(1));
                } else if (i % 1000 == 0) {
                    sb.append(Integer.toString((i / 1000) + DurationKt.NANOS_IN_MILLIS).substring(1));
                } else {
                    sb.append(Integer.toString(i + 1000000000).substring(1));
                }
            }
        }
        return sb.toString();
    }

    private Object writeReplace() {
        return new u((byte) 4, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void W(DataOutput dataOutput) {
        byte b = this.c;
        byte b2 = this.a;
        byte b3 = this.b;
        int i = this.d;
        if (i != 0) {
            dataOutput.writeByte(b2);
            dataOutput.writeByte(b3);
            dataOutput.writeByte(b);
            dataOutput.writeInt(i);
            return;
        }
        if (b != 0) {
            dataOutput.writeByte(b2);
            dataOutput.writeByte(b3);
            dataOutput.writeByte(~b);
        } else if (b3 == 0) {
            dataOutput.writeByte(~b2);
        } else {
            dataOutput.writeByte(b2);
            dataOutput.writeByte(~b3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [int] */
    public static l R(ObjectInput objectInput) {
        int i;
        int i2;
        int readByte = objectInput.readByte();
        byte b = 0;
        if (readByte >= 0) {
            byte readByte2 = objectInput.readByte();
            if (readByte2 < 0) {
                ?? r7 = ~readByte2;
                i2 = 0;
                b = r7;
                i = 0;
            } else {
                byte readByte3 = objectInput.readByte();
                if (readByte3 < 0) {
                    i = ~readByte3;
                    b = readByte2;
                } else {
                    int readInt = objectInput.readInt();
                    i = readByte3;
                    i2 = readInt;
                    b = readByte2;
                }
            }
            j$.time.temporal.a.HOUR_OF_DAY.C(readByte);
            j$.time.temporal.a.MINUTE_OF_HOUR.C(b);
            j$.time.temporal.a.SECOND_OF_MINUTE.C(i);
            j$.time.temporal.a.NANO_OF_SECOND.C(i2);
            return D(readByte, b, i, i2);
        }
        readByte = ~readByte;
        i = 0;
        i2 = 0;
        j$.time.temporal.a.HOUR_OF_DAY.C(readByte);
        j$.time.temporal.a.MINUTE_OF_HOUR.C(b);
        j$.time.temporal.a.SECOND_OF_MINUTE.C(i);
        j$.time.temporal.a.NANO_OF_SECOND.C(i2);
        return D(readByte, b, i, i2);
    }
}
