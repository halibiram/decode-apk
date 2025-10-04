package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
public final class v implements o {
    public static final v BCE;
    public static final v CE;
    private static final /* synthetic */ v[] a;

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

    public static v valueOf(String str) {
        return (v) Enum.valueOf(v.class, str);
    }

    public static v[] values() {
        return (v[]) a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Enum, j$.time.chrono.v] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.time.chrono.v] */
    static {
        ?? r2 = new Enum("BCE", 0);
        BCE = r2;
        ?? r3 = new Enum("CE", 1);
        CE = r3;
        a = new v[]{r2, r3};
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
