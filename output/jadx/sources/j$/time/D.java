package j$.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import j$.time.chrono.AbstractC1338i;
import j$.time.chrono.InterfaceC1331b;
import j$.time.chrono.InterfaceC1334e;
import j$.time.chrono.InterfaceC1340k;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes4.dex */
public final class D implements j$.time.temporal.l, InterfaceC1340k, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;
    private final j a;
    private final A b;
    private final z c;

    @Override // j$.time.chrono.InterfaceC1340k
    public final /* synthetic */ long B() {
        return AbstractC1338i.o(this);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return AbstractC1338i.d(this, (InterfaceC1340k) obj);
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final InterfaceC1334e y() {
        return this.a;
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final j$.time.chrono.n a() {
        return ((h) c()).a();
    }

    public static D C(j jVar, z zVar, A a) {
        Objects.requireNonNull(jVar, "localDateTime");
        Objects.requireNonNull(zVar, "zone");
        if (zVar instanceof A) {
            return new D(jVar, zVar, (A) zVar);
        }
        j$.time.zone.f C = zVar.C();
        List g = C.g(jVar);
        if (g.size() == 1) {
            a = (A) g.get(0);
        } else if (g.size() == 0) {
            j$.time.zone.b f = C.f(jVar);
            jVar = jVar.N(f.m().getSeconds());
            a = f.n();
        } else if (a == null || !g.contains(a)) {
            a = (A) Objects.requireNonNull((A) g.get(0), TypedValues.CycleType.S_WAVE_OFFSET);
        }
        return new D(jVar, zVar, a);
    }

    private static D w(long j, int i, z zVar) {
        A d = zVar.C().d(Instant.ofEpochSecond(j, i));
        return new D(j.L(j, i, d), zVar, d);
    }

    private D(j jVar, z zVar, A a) {
        this.a = jVar;
        this.b = a;
        this.c = zVar;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        return (qVar instanceof j$.time.temporal.a) || (qVar != null && qVar.m(this));
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            if (qVar == j$.time.temporal.a.INSTANT_SECONDS || qVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return ((j$.time.temporal.a) qVar).j();
            }
            return this.a.n(qVar);
        }
        return qVar.s(this);
    }

    @Override // j$.time.temporal.n
    public final int k(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            int i = C.a[((j$.time.temporal.a) qVar).ordinal()];
            if (i == 1) {
                throw new RuntimeException("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return this.b.I();
            }
            return this.a.k(qVar);
        }
        return AbstractC1338i.e(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            int i = C.a[((j$.time.temporal.a) qVar).ordinal()];
            if (i == 1) {
                return AbstractC1338i.o(this);
            }
            if (i == 2) {
                return this.b.I();
            }
            return this.a.s(qVar);
        }
        return qVar.k(this);
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final A g() {
        return this.b;
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final z q() {
        return this.c;
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final InterfaceC1340k h(z zVar) {
        Objects.requireNonNull(zVar, "zone");
        return this.c.equals(zVar) ? this : C(this.a, zVar, this.b);
    }

    public final j F() {
        return this.a;
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final InterfaceC1331b c() {
        return this.a.P();
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final l b() {
        return this.a.b();
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l m(h hVar) {
        return C(j.K(hVar, this.a.b()), this.c, this.b);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            int i = C.a[aVar.ordinal()];
            j jVar = this.a;
            z zVar = this.c;
            if (i == 1) {
                return w(j, jVar.E(), zVar);
            }
            A a = this.b;
            if (i != 2) {
                return C(jVar.d(j, qVar), zVar, a);
            }
            A L = A.L(aVar.w(j));
            return (L.equals(a) || !zVar.C().g(jVar).contains(L)) ? this : new D(jVar, zVar, L);
        }
        return (D) qVar.n(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final D e(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof ChronoUnit) {
            ChronoUnit chronoUnit = (ChronoUnit) tVar;
            int compareTo = chronoUnit.compareTo(ChronoUnit.DAYS);
            A a = this.b;
            z zVar = this.c;
            j jVar = this.a;
            if (compareTo >= 0 && chronoUnit != ChronoUnit.FOREVER) {
                return C(jVar.e(j, tVar), zVar, a);
            }
            j e = jVar.e(j, tVar);
            Objects.requireNonNull(e, "localDateTime");
            Objects.requireNonNull(a, TypedValues.CycleType.S_WAVE_OFFSET);
            Objects.requireNonNull(zVar, "zone");
            if (zVar.C().g(e).contains(a)) {
                return new D(e, zVar, a);
            }
            e.getClass();
            return w(AbstractC1338i.n(e, a), e.E(), zVar);
        }
        return (D) tVar.j(this, j);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l j(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? e(Long.MAX_VALUE, chronoUnit).e(1L, chronoUnit) : e(-j, chronoUnit);
    }

    @Override // j$.time.temporal.n
    public final Object v(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.f()) {
            return this.a.P();
        }
        return AbstractC1338i.l(this, sVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof D)) {
            return false;
        }
        D d = (D) obj;
        return this.a.equals(d.a) && this.b.equals(d.b) && this.c.equals(d.c);
    }

    public final int hashCode() {
        return (this.a.hashCode() ^ this.b.hashCode()) ^ Integer.rotateLeft(this.c.hashCode(), 3);
    }

    public final String toString() {
        String jVar = this.a.toString();
        A a = this.b;
        String str = jVar + a.toString();
        z zVar = this.c;
        if (a == zVar) {
            return str;
        }
        return str + "[" + zVar.toString() + "]";
    }

    private Object writeReplace() {
        return new u((byte) 6, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void G(DataOutput dataOutput) {
        this.a.T(dataOutput);
        this.b.O(dataOutput);
        this.c.G((ObjectOutput) dataOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static D E(ObjectInput objectInput) {
        j jVar = j.c;
        h hVar = h.d;
        j K = j.K(h.N(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), l.R(objectInput));
        A N = A.N(objectInput);
        z zVar = (z) u.a(objectInput);
        Objects.requireNonNull(K, "localDateTime");
        Objects.requireNonNull(N, TypedValues.CycleType.S_WAVE_OFFSET);
        Objects.requireNonNull(zVar, "zone");
        if ((zVar instanceof A) && !N.equals(zVar)) {
            throw new IllegalArgumentException("ZoneId must match ZoneOffset");
        }
        return new D(K, zVar, N);
    }
}
