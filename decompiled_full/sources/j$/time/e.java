package j$.time;

import j$.time.temporal.ChronoUnit;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
public final class e implements j$.time.temporal.n, j$.time.temporal.o {
    public static final e FRIDAY;
    public static final e MONDAY;
    public static final e SATURDAY;
    public static final e SUNDAY;
    public static final e THURSDAY;
    public static final e TUESDAY;
    public static final e WEDNESDAY;
    private static final e[] a;
    private static final /* synthetic */ e[] b;

    public static e valueOf(String str) {
        return (e) Enum.valueOf(e.class, str);
    }

    public static e[] values() {
        return (e[]) b.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [j$.time.e, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r11v1, types: [j$.time.e, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r12v1, types: [j$.time.e, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r13v1, types: [j$.time.e, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v0, types: [j$.time.e, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r8v1, types: [j$.time.e, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r9v1, types: [j$.time.e, java.lang.Enum] */
    static {
        ?? r7 = new Enum("MONDAY", 0);
        MONDAY = r7;
        ?? r8 = new Enum("TUESDAY", 1);
        TUESDAY = r8;
        ?? r9 = new Enum("WEDNESDAY", 2);
        WEDNESDAY = r9;
        ?? r10 = new Enum("THURSDAY", 3);
        THURSDAY = r10;
        ?? r11 = new Enum("FRIDAY", 4);
        FRIDAY = r11;
        ?? r12 = new Enum("SATURDAY", 5);
        SATURDAY = r12;
        ?? r13 = new Enum("SUNDAY", 6);
        SUNDAY = r13;
        b = new e[]{r7, r8, r9, r10, r11, r12, r13};
        a = values();
    }

    public static e C(int i) {
        if (i < 1 || i > 7) {
            throw new RuntimeException("Invalid value for DayOfWeek: " + i);
        }
        return a[i - 1];
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.DAY_OF_WEEK : qVar != null && qVar.m(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.DAY_OF_WEEK) {
            return qVar.j();
        }
        return j$.time.temporal.m.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final int k(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.DAY_OF_WEEK) {
            return getValue();
        }
        return j$.time.temporal.m.a(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.DAY_OF_WEEK) {
            return getValue();
        }
        if (qVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return qVar.k(this);
    }

    @Override // j$.time.temporal.n
    public final Object v(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.i()) {
            return ChronoUnit.DAYS;
        }
        return j$.time.temporal.m.c(this, sVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        return lVar.d(getValue(), j$.time.temporal.a.DAY_OF_WEEK);
    }
}
