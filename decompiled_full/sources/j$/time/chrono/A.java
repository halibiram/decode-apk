package j$.time.chrono;

import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class A implements o, Serializable {
    public static final A d;
    private static final A[] e;
    private static final long serialVersionUID = 1466499369062886794L;
    private final transient int a;
    private final transient j$.time.h b;
    private final transient String c;

    @Override // j$.time.temporal.n
    public final /* synthetic */ boolean f(j$.time.temporal.q qVar) {
        return AbstractC1338i.i(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int k(j$.time.temporal.q qVar) {
        return AbstractC1338i.f(this, (j$.time.temporal.a) qVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ long s(j$.time.temporal.q qVar) {
        return AbstractC1338i.g(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object v(j$.time.temporal.s sVar) {
        return AbstractC1338i.m(this, sVar);
    }

    static {
        A a = new A(-1, j$.time.h.N(1868, 1, 1), "Meiji");
        d = a;
        A a2 = new A(0, j$.time.h.N(1912, 7, 30), "Taisho");
        A a3 = new A(1, j$.time.h.N(1926, 12, 25), "Showa");
        A a4 = new A(2, j$.time.h.N(1989, 1, 8), "Heisei");
        A a5 = new A(3, j$.time.h.N(2019, 5, 1), "Reiwa");
        e = r8;
        A[] aArr = {a, a2, a3, a4, a5};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static A l() {
        return e[r0.length - 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long D() {
        int J = 1000000000 - l().b.J();
        A[] aArr = e;
        int J2 = aArr[0].b.J();
        for (int i = 1; i < aArr.length; i++) {
            A a = aArr[i];
            J = Math.min(J, (a.b.J() - J2) + 1);
            J2 = a.b.J();
        }
        return J;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long C() {
        long f = j$.time.temporal.a.DAY_OF_YEAR.j().f();
        for (A a : e) {
            f = Math.min(f, ((a.b.L() ? 366 : 365) - a.b.H()) + 1);
            if (a.r() != null) {
                f = Math.min(f, a.r().b.H() - 1);
            }
        }
        return f;
    }

    private A(int i, j$.time.h hVar, String str) {
        this.a = i;
        this.b = hVar;
        this.c = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final j$.time.h o() {
        return this.b;
    }

    public static A A(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            A[] aArr = e;
            if (i2 < aArr.length) {
                return aArr[i2];
            }
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        return lVar.d(getValue(), j$.time.temporal.a.ERA);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static A i(j$.time.h hVar) {
        if (hVar.K(z.d)) {
            throw new RuntimeException("JapaneseDate before Meiji 6 are not supported");
        }
        A[] aArr = e;
        for (int length = aArr.length - 1; length >= 0; length--) {
            A a = aArr[length];
            if (hVar.compareTo(a.b) >= 0) {
                return a;
            }
        }
        return null;
    }

    @Override // j$.time.chrono.o
    public final int getValue() {
        return this.a;
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        if (qVar != aVar) {
            return j$.time.temporal.m.d(this, qVar);
        }
        return x.d.m(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final A r() {
        if (this == l()) {
            return null;
        }
        return A(this.a + 1);
    }

    public final String toString() {
        return this.c;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 5, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void E(DataOutput dataOutput) {
        dataOutput.writeByte(this.a);
    }
}
