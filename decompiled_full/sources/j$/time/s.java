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
public final class s implements j$.time.temporal.l, j$.time.temporal.o, Comparable, Serializable {
    private static final long serialVersionUID = 7264499704384272492L;
    private final l a;
    private final A b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        s sVar = (s) obj;
        A a = sVar.b;
        boolean equals = this.b.equals(a);
        l lVar = sVar.a;
        l lVar2 = this.a;
        if (equals) {
            return lVar2.compareTo(lVar);
        }
        int compare = Long.compare(lVar2.S() - (r1.I() * 1000000000), lVar.S() - (sVar.b.I() * 1000000000));
        return compare == 0 ? lVar2.compareTo(lVar) : compare;
    }

    static {
        l lVar = l.e;
        A a = A.g;
        lVar.getClass();
        C(lVar, a);
        l lVar2 = l.f;
        A a2 = A.f;
        lVar2.getClass();
        C(lVar2, a2);
    }

    public static s C(l lVar, A a) {
        return new s(lVar, a);
    }

    private s(l lVar, A a) {
        this.a = (l) Objects.requireNonNull(lVar, "time");
        this.b = (A) Objects.requireNonNull(a, TypedValues.CycleType.S_WAVE_OFFSET);
    }

    private s F(l lVar, A a) {
        return (this.a == lVar && this.b.equals(a)) ? this : new s(lVar, a);
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) qVar).D() || qVar == j$.time.temporal.a.OFFSET_SECONDS : qVar != null && qVar.m(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            if (qVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return ((j$.time.temporal.a) qVar).j();
            }
            l lVar = this.a;
            lVar.getClass();
            return j$.time.temporal.m.d(lVar, qVar);
        }
        return qVar.s(this);
    }

    @Override // j$.time.temporal.n
    public final int k(j$.time.temporal.q qVar) {
        return j$.time.temporal.m.a(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            if (qVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return this.b.I();
            }
            return this.a.s(qVar);
        }
        return qVar.k(this);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = j$.time.temporal.a.OFFSET_SECONDS;
            l lVar = this.a;
            if (qVar == aVar) {
                return F(lVar, A.L(((j$.time.temporal.a) qVar).w(j)));
            }
            return F(lVar.d(j, qVar), this.b);
        }
        return (s) qVar.n(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final s e(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof ChronoUnit) {
            return F(this.a.e(j, tVar), this.b);
        }
        return (s) tVar.j(this, j);
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
        if (((sVar == j$.time.temporal.m.k()) || (sVar == j$.time.temporal.m.e())) || sVar == j$.time.temporal.m.f()) {
            return null;
        }
        if (sVar == j$.time.temporal.m.g()) {
            return this.a;
        }
        if (sVar == j$.time.temporal.m.i()) {
            return ChronoUnit.NANOS;
        }
        return sVar.a(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        return lVar.d(this.a.S(), j$.time.temporal.a.NANO_OF_DAY).d(this.b.I(), j$.time.temporal.a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return this.a.equals(sVar.a) && this.b.equals(sVar.b);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        return this.a.toString() + this.b.toString();
    }

    private Object writeReplace() {
        return new u((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeExternal(ObjectOutput objectOutput) {
        this.a.W(objectOutput);
        this.b.O(objectOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s E(ObjectInput objectInput) {
        return new s(l.R(objectInput), A.N(objectInput));
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l m(h hVar) {
        return (s) AbstractC1338i.a(hVar, this);
    }
}
