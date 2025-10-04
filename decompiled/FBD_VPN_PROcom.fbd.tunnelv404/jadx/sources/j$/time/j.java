package j$.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.tencent.mmkv.MMKV;
import j$.time.chrono.AbstractC1338i;
import j$.time.chrono.InterfaceC1331b;
import j$.time.chrono.InterfaceC1334e;
import j$.time.chrono.InterfaceC1340k;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class j implements j$.time.temporal.l, j$.time.temporal.o, InterfaceC1334e, Serializable {
    public static final j c = K(h.d, l.e);
    public static final j d = K(h.e, l.f);
    private static final long serialVersionUID = 6207766400415563566L;
    private final h a;
    private final l b;

    @Override // j$.time.chrono.InterfaceC1334e
    public final InterfaceC1331b c() {
        return this.a;
    }

    @Override // j$.time.chrono.InterfaceC1334e
    public final j$.time.chrono.n a() {
        return ((h) c()).a();
    }

    @Override // j$.time.chrono.InterfaceC1334e
    public final InterfaceC1340k p(A a) {
        return D.C(this, a, null);
    }

    public static j J(int i) {
        return new j(h.N(i, 12, 31), l.J(0));
    }

    public static j K(h hVar, l lVar) {
        Objects.requireNonNull(hVar, "date");
        Objects.requireNonNull(lVar, "time");
        return new j(hVar, lVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        return lVar.d(((h) c()).t(), j$.time.temporal.a.EPOCH_DAY).d(b().S(), j$.time.temporal.a.NANO_OF_DAY);
    }

    public static j L(long j, int i, A a) {
        Objects.requireNonNull(a, TypedValues.CycleType.S_WAVE_OFFSET);
        long j2 = i;
        j$.time.temporal.a.NANO_OF_SECOND.C(j2);
        return new j(h.P(j$.com.android.tools.r8.a.j(j + a.I(), MMKV.ExpireInDay)), l.K((((int) j$.com.android.tools.r8.a.i(r5, r7)) * 1000000000) + j2));
    }

    public static j D(j$.time.temporal.n nVar) {
        if (nVar instanceof j) {
            return (j) nVar;
        }
        if (nVar instanceof D) {
            return ((D) nVar).F();
        }
        if (nVar instanceof r) {
            return ((r) nVar).F();
        }
        try {
            return new j(h.E(nVar), l.E(nVar));
        } catch (C1329c e) {
            throw new RuntimeException("Unable to obtain LocalDateTime from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName(), e);
        }
    }

    private j(h hVar, l lVar) {
        this.a = hVar;
        this.b = lVar;
    }

    private j S(h hVar, l lVar) {
        return (this.a == hVar && this.b == lVar) ? this : new j(hVar, lVar);
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar != null && qVar.m(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        return aVar.v() || aVar.D();
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            if (((j$.time.temporal.a) qVar).D()) {
                l lVar = this.b;
                lVar.getClass();
                return j$.time.temporal.m.d(lVar, qVar);
            }
            return this.a.n(qVar);
        }
        return qVar.s(this);
    }

    @Override // j$.time.temporal.n
    public final int k(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) qVar).D() ? this.b.k(qVar) : this.a.k(qVar);
        }
        return j$.time.temporal.m.a(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) qVar).D() ? this.b.s(qVar) : this.a.s(qVar);
        }
        return qVar.k(this);
    }

    private int C(j jVar) {
        int C = this.a.C(jVar.a);
        return C == 0 ? this.b.compareTo(jVar.b) : C;
    }

    public final h P() {
        return this.a;
    }

    public final int G() {
        return this.a.J();
    }

    @Override // j$.time.chrono.InterfaceC1334e
    public final l b() {
        return this.b;
    }

    public final int F() {
        return this.b.I();
    }

    public final int E() {
        return this.b.H();
    }

    public final j R(h hVar) {
        return S(hVar, this.b);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l m(h hVar) {
        return S(hVar, this.b);
    }

    @Override // j$.time.temporal.l
    /* renamed from: Q, reason: merged with bridge method [inline-methods] */
    public final j d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            boolean D = ((j$.time.temporal.a) qVar).D();
            l lVar = this.b;
            h hVar = this.a;
            if (D) {
                return S(hVar, lVar.d(j, qVar));
            }
            return S(hVar.d(j, qVar), lVar);
        }
        return (j) qVar.n(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: M, reason: merged with bridge method [inline-methods] */
    public final j e(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof ChronoUnit) {
            int i = i.a[((ChronoUnit) tVar).ordinal()];
            l lVar = this.b;
            h hVar = this.a;
            switch (i) {
                case 1:
                    return O(this.a, 0L, 0L, 0L, j);
                case 2:
                    j S = S(hVar.R(j / 86400000000L), lVar);
                    return S.O(S.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
                case 3:
                    j S2 = S(hVar.R(j / 86400000), lVar);
                    return S2.O(S2.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
                case 4:
                    return N(j);
                case 5:
                    return O(this.a, 0L, j, 0L, 0L);
                case 6:
                    return O(this.a, j, 0L, 0L, 0L);
                case 7:
                    j S3 = S(hVar.R(j / 256), lVar);
                    return S3.O(S3.a, (j % 256) * 12, 0L, 0L, 0L);
                default:
                    return S(hVar.e(j, tVar), lVar);
            }
        }
        return (j) tVar.j(this, j);
    }

    public final j N(long j) {
        return O(this.a, 0L, 0L, j, 0L);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l j(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? e(Long.MAX_VALUE, chronoUnit).e(1L, chronoUnit) : e(-j, chronoUnit);
    }

    private j O(h hVar, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        l lVar = this.b;
        if (j5 == 0) {
            return S(hVar, lVar);
        }
        long j6 = j / 24;
        long j7 = j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long j8 = 1;
        long j9 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long S = lVar.S();
        long j10 = (j9 * j8) + S;
        long j11 = j$.com.android.tools.r8.a.j(j10, 86400000000000L) + (j7 * j8);
        long i = j$.com.android.tools.r8.a.i(j10, 86400000000000L);
        if (i != S) {
            lVar = l.K(i);
        }
        return S(hVar.R(j11), lVar);
    }

    @Override // j$.time.temporal.n
    public final Object v(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.f()) {
            return this.a;
        }
        return AbstractC1338i.k(this, sVar);
    }

    @Override // java.lang.Comparable
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC1334e interfaceC1334e) {
        if (interfaceC1334e instanceof j) {
            return C((j) interfaceC1334e);
        }
        return AbstractC1338i.c(this, interfaceC1334e);
    }

    public final boolean H(j jVar) {
        if (jVar instanceof j) {
            return C(jVar) > 0;
        }
        long t = this.a.t();
        long t2 = jVar.a.t();
        return t > t2 || (t == t2 && this.b.S() > jVar.b.S());
    }

    public final boolean I(j jVar) {
        if (jVar instanceof j) {
            return C(jVar) < 0;
        }
        long t = this.a.t();
        long t2 = jVar.a.t();
        return t < t2 || (t == t2 && this.b.S() < jVar.b.S());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.a.equals(jVar.a) && this.b.equals(jVar.b);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        return this.a.toString() + ExifInterface.GPS_DIRECTION_TRUE + this.b.toString();
    }

    private Object writeReplace() {
        return new u((byte) 5, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void T(DataOutput dataOutput) {
        this.a.Z(dataOutput);
        this.b.W(dataOutput);
    }
}
