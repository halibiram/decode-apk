package j$.time.temporal;

import j$.time.AbstractC1342d;
import j$.util.Objects;

/* loaded from: classes4.dex */
public abstract /* synthetic */ class m {
    static final s a = new r(0);
    static final s b = new r(1);
    static final s c = new r(2);
    static final s d = new r(3);
    static final s e = new r(4);
    static final s f = new r(5);
    static final s g = new r(6);

    public static s k() {
        return a;
    }

    public static v d(n nVar, q qVar) {
        if (qVar instanceof a) {
            if (nVar.f(qVar)) {
                return ((a) qVar).j();
            }
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        Objects.requireNonNull(qVar, "field");
        return qVar.s(nVar);
    }

    public static s e() {
        return b;
    }

    public static int a(n nVar, q qVar) {
        v n = nVar.n(qVar);
        if (!n.h()) {
            throw new RuntimeException("Invalid field " + qVar + " for get() method, use getLong() instead");
        }
        long s = nVar.s(qVar);
        if (n.i(s)) {
            return (int) s;
        }
        throw new RuntimeException("Invalid value for " + qVar + " (valid values " + n + "): " + s);
    }

    public static s i() {
        return c;
    }

    public static s j() {
        return e;
    }

    public static s h() {
        return d;
    }

    public static Object c(n nVar, s sVar) {
        if (sVar == a || sVar == b || sVar == c) {
            return null;
        }
        return sVar.a(nVar);
    }

    public static s f() {
        return f;
    }

    public static s g() {
        return g;
    }

    public static l b(l lVar, long j, t tVar) {
        long j2;
        if (j == Long.MIN_VALUE) {
            lVar = lVar.e(Long.MAX_VALUE, tVar);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return lVar.e(j2, tVar);
    }
}
