package j$.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import j$.time.chrono.AbstractC1338i;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class r implements j$.time.temporal.l, j$.time.temporal.o, Comparable, Serializable {
    private static final long serialVersionUID = 2287754244819255394L;
    private final j a;
    private final A b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int compare;
        r rVar = (r) obj;
        A a = rVar.b;
        A a2 = this.b;
        boolean equals = a2.equals(a);
        j jVar = rVar.a;
        j jVar2 = this.a;
        if (equals) {
            compare = jVar2.compareTo(jVar);
        } else {
            jVar2.getClass();
            long n = AbstractC1338i.n(jVar2, a2);
            jVar.getClass();
            compare = Long.compare(n, AbstractC1338i.n(jVar, rVar.b));
            if (compare == 0) {
                compare = jVar2.b().H() - jVar.b().H();
            }
        }
        return compare == 0 ? jVar2.compareTo(jVar) : compare;
    }

    static {
        j jVar = j.c;
        A a = A.g;
        jVar.getClass();
        C(jVar, a);
        j jVar2 = j.d;
        A a2 = A.f;
        jVar2.getClass();
        C(jVar2, a2);
    }

    public static r C(j jVar, A a) {
        return new r(jVar, a);
    }

    private r(j jVar, A a) {
        this.a = (j) Objects.requireNonNull(jVar, "dateTime");
        this.b = (A) Objects.requireNonNull(a, TypedValues.CycleType.S_WAVE_OFFSET);
    }

    private r G(j jVar, A a) {
        return (this.a == jVar && this.b.equals(a)) ? this : new r(jVar, a);
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
            int i = q.a[((j$.time.temporal.a) qVar).ordinal()];
            if (i == 1) {
                throw new RuntimeException("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return this.b.I();
            }
            return this.a.k(qVar);
        }
        return j$.time.temporal.m.a(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            int i = q.a[((j$.time.temporal.a) qVar).ordinal()];
            A a = this.b;
            j jVar = this.a;
            if (i == 1) {
                jVar.getClass();
                return AbstractC1338i.n(jVar, a);
            }
            if (i == 2) {
                return a.I();
            }
            return jVar.s(qVar);
        }
        return qVar.k(this);
    }

    public final j F() {
        return this.a;
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l m(h hVar) {
        return G(this.a.R(hVar), this.b);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            int i = q.a[aVar.ordinal()];
            A a = this.b;
            j jVar = this.a;
            if (i != 1) {
                if (i == 2) {
                    return G(jVar, A.L(aVar.w(j)));
                }
                return G(jVar.d(j, qVar), a);
            }
            Instant ofEpochSecond = Instant.ofEpochSecond(j, jVar.E());
            Objects.requireNonNull(ofEpochSecond, "instant");
            Objects.requireNonNull(a, "zone");
            A d = a.C().d(ofEpochSecond);
            return new r(j.L(ofEpochSecond.getEpochSecond(), ofEpochSecond.getNano(), d), d);
        }
        return (r) qVar.n(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final r e(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof ChronoUnit) {
            return G(this.a.e(j, tVar), this.b);
        }
        return (r) tVar.j(this, j);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l j(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? e(Long.MAX_VALUE, chronoUnit).e(1L, chronoUnit) : e(-j, chronoUnit);
    }

    @Override // j$.time.temporal.n
    public final Object v(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.h() || sVar == j$.time.temporal.m.j()) {
            return this.b;
        }
        if (sVar == j$.time.temporal.m.k()) {
            return null;
        }
        j$.time.temporal.s f = j$.time.temporal.m.f();
        j jVar = this.a;
        if (sVar == f) {
            return jVar.P();
        }
        if (sVar == j$.time.temporal.m.g()) {
            return jVar.b();
        }
        if (sVar == j$.time.temporal.m.e()) {
            return j$.time.chrono.u.d;
        }
        if (sVar == j$.time.temporal.m.i()) {
            return ChronoUnit.NANOS;
        }
        return sVar.a(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.EPOCH_DAY;
        j jVar = this.a;
        return lVar.d(jVar.P().t(), aVar).d(jVar.b().S(), j$.time.temporal.a.NANO_OF_DAY).d(this.b.I(), j$.time.temporal.a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.a.equals(rVar.a) && this.b.equals(rVar.b);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        return this.a.toString() + this.b.toString();
    }

    private Object writeReplace() {
        return new u((byte) 10, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeExternal(ObjectOutput objectOutput) {
        this.a.T(objectOutput);
        this.b.O(objectOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r E(ObjectInput objectInput) {
        j jVar = j.c;
        h hVar = h.d;
        return new r(j.K(h.N(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), l.R(objectInput)), A.N(objectInput));
    }
}
