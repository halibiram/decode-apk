package j$.time.chrono;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import j$.time.Instant;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes4.dex */
final class m implements InterfaceC1340k, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;
    private final transient C1336g a;
    private final transient j$.time.A b;
    private final transient j$.time.z c;

    @Override // j$.time.chrono.InterfaceC1340k
    public final /* synthetic */ long B() {
        return AbstractC1338i.o(this);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int k(j$.time.temporal.q qVar) {
        return AbstractC1338i.e(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object v(j$.time.temporal.s sVar) {
        return AbstractC1338i.l(this, sVar);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return AbstractC1338i.d(this, (InterfaceC1340k) obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InterfaceC1340k C(j$.time.z zVar, j$.time.A a, C1336g c1336g) {
        Objects.requireNonNull(c1336g, "localDateTime");
        Objects.requireNonNull(zVar, "zone");
        if (zVar instanceof j$.time.A) {
            return new m(zVar, (j$.time.A) zVar, c1336g);
        }
        j$.time.zone.f C = zVar.C();
        j$.time.j D = j$.time.j.D(c1336g);
        List g = C.g(D);
        if (g.size() == 1) {
            a = (j$.time.A) g.get(0);
        } else if (g.size() == 0) {
            j$.time.zone.b f = C.f(D);
            c1336g = c1336g.F(f.m().getSeconds());
            a = f.n();
        } else if (a == null || !g.contains(a)) {
            a = (j$.time.A) g.get(0);
        }
        Objects.requireNonNull(a, TypedValues.CycleType.S_WAVE_OFFSET);
        return new m(zVar, a, c1336g);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            if (qVar == j$.time.temporal.a.INSTANT_SECONDS || qVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return ((j$.time.temporal.a) qVar).j();
            }
            return ((C1336g) y()).n(qVar);
        }
        return qVar.s(this);
    }

    static m w(n nVar, j$.time.temporal.l lVar) {
        m mVar = (m) lVar;
        if (nVar.equals(mVar.a())) {
            return mVar;
        }
        throw new ClassCastException("Chronology mismatch, required: " + nVar.i() + ", actual: " + mVar.a().i());
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            int i = AbstractC1339j.a[((j$.time.temporal.a) qVar).ordinal()];
            if (i == 1) {
                return B();
            }
            if (i == 2) {
                return g().I();
            }
            return ((C1336g) y()).s(qVar);
        }
        return qVar.k(this);
    }

    private m(j$.time.z zVar, j$.time.A a, C1336g c1336g) {
        this.a = (C1336g) Objects.requireNonNull(c1336g, "dateTime");
        this.b = (j$.time.A) Objects.requireNonNull(a, TypedValues.CycleType.S_WAVE_OFFSET);
        this.c = (j$.time.z) Objects.requireNonNull(zVar, "zone");
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final j$.time.A g() {
        return this.b;
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final InterfaceC1331b c() {
        return ((C1336g) y()).c();
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final j$.time.l b() {
        return ((C1336g) y()).b();
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final InterfaceC1334e y() {
        return this.a;
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final j$.time.z q() {
        return this.c;
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final n a() {
        return c().a();
    }

    @Override // j$.time.chrono.InterfaceC1340k
    public final InterfaceC1340k h(j$.time.z zVar) {
        return C(zVar, this.b, this.a);
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        return (qVar instanceof j$.time.temporal.a) || (qVar != null && qVar.m(this));
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            int i = AbstractC1341l.a[aVar.ordinal()];
            if (i == 1) {
                return e(j - AbstractC1338i.o(this), ChronoUnit.SECONDS);
            }
            j$.time.z zVar = this.c;
            C1336g c1336g = this.a;
            if (i == 2) {
                j$.time.A L = j$.time.A.L(aVar.w(j));
                c1336g.getClass();
                Instant ofEpochSecond = Instant.ofEpochSecond(AbstractC1338i.n(c1336g, L), c1336g.b().H());
                n a = a();
                j$.time.A d = zVar.C().d(ofEpochSecond);
                Objects.requireNonNull(d, TypedValues.CycleType.S_WAVE_OFFSET);
                return new m(zVar, d, (C1336g) a.o(j$.time.j.L(ofEpochSecond.getEpochSecond(), ofEpochSecond.getNano(), d)));
            }
            return C(zVar, this.b, c1336g.d(j, qVar));
        }
        return w(a(), qVar.n(this, j));
    }

    @Override // j$.time.temporal.l
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final InterfaceC1340k e(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof ChronoUnit) {
            return w(a(), this.a.e(j, tVar).w(this));
        }
        return w(a(), tVar.j(this, j));
    }

    private Object writeReplace() {
        return new G((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeObject(this.a);
        objectOutput.writeObject(this.b);
        objectOutput.writeObject(this.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC1340k) && AbstractC1338i.d(this, (InterfaceC1340k) obj) == 0;
    }

    public final int hashCode() {
        return (this.a.hashCode() ^ this.b.hashCode()) ^ Integer.rotateLeft(this.c.hashCode(), 3);
    }

    public final String toString() {
        String c1336g = this.a.toString();
        j$.time.A a = this.b;
        String str = c1336g + a.toString();
        j$.time.z zVar = this.c;
        if (a == zVar) {
            return str;
        }
        return str + "[" + zVar.toString() + "]";
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l m(j$.time.h hVar) {
        return w(a(), hVar.w(this));
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l j(long j, ChronoUnit chronoUnit) {
        return w(a(), j$.time.temporal.m.b(this, j, chronoUnit));
    }
}
