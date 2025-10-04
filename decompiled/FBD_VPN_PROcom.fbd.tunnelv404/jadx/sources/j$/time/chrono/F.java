package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
public final class F implements o {
    public static final F BEFORE_ROC;
    public static final F ROC;
    private static final /* synthetic */ F[] a;

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

    public static F valueOf(String str) {
        return (F) Enum.valueOf(F.class, str);
    }

    public static F[] values() {
        return (F[]) a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Enum, j$.time.chrono.F] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.time.chrono.F] */
    static {
        ?? r2 = new Enum("BEFORE_ROC", 0);
        BEFORE_ROC = r2;
        ?? r3 = new Enum("ROC", 1);
        ROC = r3;
        a = new F[]{r2, r3};
    }

    @Override // j$.time.chrono.o
    public final int getValue() {
        return ordinal();
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        return j$.time.temporal.m.d(this, qVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        return lVar.d(getValue(), j$.time.temporal.a.ERA);
    }
}
