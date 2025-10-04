package j$.time;

import com.tencent.mmkv.MMKV;
import j$.time.chrono.AbstractC1338i;
import j$.time.temporal.ChronoUnit;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.time.DurationKt;

/* loaded from: classes4.dex */
public final class Instant implements j$.time.temporal.l, j$.time.temporal.o, Comparable<Instant>, Serializable {
    private static final long serialVersionUID = -665713676816604388L;
    private final long a;
    private final int b;
    public static final Instant c = new Instant(0, 0);
    public static final Instant MIN = ofEpochSecond(-31557014167219200L, 0);
    public static final Instant MAX = ofEpochSecond(31556889864403199L, 999999999);

    public static Instant now() {
        C1327a.b.getClass();
        return D(System.currentTimeMillis());
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int compare = Long.compare(this.a, instant2.a);
        return compare != 0 ? compare : this.b - instant2.b;
    }

    public static Instant ofEpochSecond(long j, long j2) {
        return C(j$.com.android.tools.r8.a.e(j, j$.com.android.tools.r8.a.j(j2, 1000000000L)), (int) j$.com.android.tools.r8.a.i(j2, 1000000000L));
    }

    public static Instant D(long j) {
        long j2 = 1000;
        return C(j$.com.android.tools.r8.a.j(j, j2), ((int) j$.com.android.tools.r8.a.i(j, j2)) * DurationKt.NANOS_IN_MILLIS);
    }

    private static Instant C(long j, int i) {
        if ((i | j) == 0) {
            return c;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new RuntimeException("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j, i);
    }

    private Instant(long j, int i) {
        this.a = j;
        this.b = i;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.INSTANT_SECONDS || qVar == j$.time.temporal.a.NANO_OF_SECOND || qVar == j$.time.temporal.a.MICRO_OF_SECOND || qVar == j$.time.temporal.a.MILLI_OF_SECOND : qVar != null && qVar.m(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        return j$.time.temporal.m.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final int k(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            int i = f.a[((j$.time.temporal.a) qVar).ordinal()];
            int i2 = this.b;
            if (i == 1) {
                return i2;
            }
            if (i == 2) {
                return i2 / 1000;
            }
            if (i == 3) {
                return i2 / DurationKt.NANOS_IN_MILLIS;
            }
            if (i == 4) {
                j$.time.temporal.a.INSTANT_SECONDS.w(this.a);
            }
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return j$.time.temporal.m.d(this, qVar).a(qVar.k(this), qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        int i;
        if (qVar instanceof j$.time.temporal.a) {
            int i2 = f.a[((j$.time.temporal.a) qVar).ordinal()];
            int i3 = this.b;
            if (i2 == 1) {
                return i3;
            }
            if (i2 == 2) {
                i = i3 / 1000;
            } else {
                if (i2 != 3) {
                    if (i2 == 4) {
                        return this.a;
                    }
                    throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
                }
                i = i3 / DurationKt.NANOS_IN_MILLIS;
            }
            return i;
        }
        return qVar.k(this);
    }

    public long getEpochSecond() {
        return this.a;
    }

    public int getNano() {
        return this.b;
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            aVar.C(j);
            int i = f.a[aVar.ordinal()];
            int i2 = this.b;
            long j2 = this.a;
            if (i != 1) {
                if (i == 2) {
                    int i3 = ((int) j) * 1000;
                    if (i3 != i2) {
                        return C(j2, i3);
                    }
                } else if (i == 3) {
                    int i4 = ((int) j) * DurationKt.NANOS_IN_MILLIS;
                    if (i4 != i2) {
                        return C(j2, i4);
                    }
                } else {
                    if (i != 4) {
                        throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
                    }
                    if (j != j2) {
                        return C(j, i2);
                    }
                }
            } else if (j != i2) {
                return C(j2, (int) j);
            }
            return this;
        }
        return (Instant) qVar.n(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public final Instant e(long j, j$.time.temporal.t tVar) {
        if (!(tVar instanceof ChronoUnit)) {
            return (Instant) tVar.j(this, j);
        }
        switch (f.b[((ChronoUnit) tVar).ordinal()]) {
            case 1:
                return E(0L, j);
            case 2:
                return E(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return E(j / 1000, (j % 1000) * 1000000);
            case 4:
                return E(j, 0L);
            case 5:
                return E(j$.com.android.tools.r8.a.k(j, 60), 0L);
            case 6:
                return E(j$.com.android.tools.r8.a.k(j, MMKV.ExpireInHour), 0L);
            case 7:
                return E(j$.com.android.tools.r8.a.k(j, 43200), 0L);
            case 8:
                return E(j$.com.android.tools.r8.a.k(j, MMKV.ExpireInDay), 0L);
            default:
                throw new RuntimeException("Unsupported unit: " + tVar);
        }
    }

    private Instant E(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return ofEpochSecond(j$.com.android.tools.r8.a.e(j$.com.android.tools.r8.a.e(this.a, j), j2 / 1000000000), this.b + (j2 % 1000000000));
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l j(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? e(Long.MAX_VALUE, chronoUnit).e(1L, chronoUnit) : e(-j, chronoUnit);
    }

    @Override // j$.time.temporal.n
    public final Object v(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.i()) {
            return ChronoUnit.NANOS;
        }
        if (sVar == j$.time.temporal.m.e() || sVar == j$.time.temporal.m.k() || sVar == j$.time.temporal.m.j() || sVar == j$.time.temporal.m.h() || sVar == j$.time.temporal.m.f() || sVar == j$.time.temporal.m.g()) {
            return null;
        }
        return sVar.a(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        return lVar.d(this.a, j$.time.temporal.a.INSTANT_SECONDS).d(this.b, j$.time.temporal.a.NANO_OF_SECOND);
    }

    public final long G() {
        int i = this.b;
        long j = this.a;
        if (j < 0 && i > 0) {
            return j$.com.android.tools.r8.a.e(j$.com.android.tools.r8.a.k(j + 1, 1000), (i / DurationKt.NANOS_IN_MILLIS) - 1000);
        }
        return j$.com.android.tools.r8.a.e(j$.com.android.tools.r8.a.k(j, 1000), i / DurationKt.NANOS_IN_MILLIS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Instant)) {
            return false;
        }
        Instant instant = (Instant) obj;
        return this.a == instant.a && this.b == instant.b;
    }

    public int hashCode() {
        long j = this.a;
        return (this.b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return j$.time.format.a.e.a(this);
    }

    private Object writeReplace() {
        return new u((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void H(DataOutput dataOutput) {
        dataOutput.writeLong(this.a);
        dataOutput.writeInt(this.b);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l m(h hVar) {
        return (Instant) AbstractC1338i.a(hVar, this);
    }
}
