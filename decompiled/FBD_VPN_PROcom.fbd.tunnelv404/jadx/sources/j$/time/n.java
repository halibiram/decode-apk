package j$.time;

import j$.time.chrono.AbstractC1338i;
import j$.time.temporal.ChronoUnit;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
public final class n implements j$.time.temporal.n, j$.time.temporal.o {
    public static final n APRIL;
    public static final n AUGUST;
    public static final n DECEMBER;
    public static final n FEBRUARY;
    public static final n JANUARY;
    public static final n JULY;
    public static final n JUNE;
    public static final n MARCH;
    public static final n MAY;
    public static final n NOVEMBER;
    public static final n OCTOBER;
    public static final n SEPTEMBER;
    private static final n[] a;
    private static final /* synthetic */ n[] b;

    public static n valueOf(String str) {
        return (n) Enum.valueOf(n.class, str);
    }

    public static n[] values() {
        return (n[]) b.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.Enum, j$.time.n] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, j$.time.n] */
    /* JADX WARN: Type inference failed for: r14v1, types: [java.lang.Enum, j$.time.n] */
    /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Enum, j$.time.n] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, j$.time.n] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, j$.time.n] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, j$.time.n] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, j$.time.n] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, j$.time.n] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, j$.time.n] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Enum, j$.time.n] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Enum, j$.time.n] */
    static {
        ?? r12 = new Enum("JANUARY", 0);
        JANUARY = r12;
        ?? r13 = new Enum("FEBRUARY", 1);
        FEBRUARY = r13;
        ?? r14 = new Enum("MARCH", 2);
        MARCH = r14;
        ?? r15 = new Enum("APRIL", 3);
        APRIL = r15;
        ?? r9 = new Enum("MAY", 4);
        MAY = r9;
        ?? r8 = new Enum("JUNE", 5);
        JUNE = r8;
        ?? r7 = new Enum("JULY", 6);
        JULY = r7;
        ?? r6 = new Enum("AUGUST", 7);
        AUGUST = r6;
        ?? r5 = new Enum("SEPTEMBER", 8);
        SEPTEMBER = r5;
        ?? r4 = new Enum("OCTOBER", 9);
        OCTOBER = r4;
        ?? r3 = new Enum("NOVEMBER", 10);
        NOVEMBER = r3;
        ?? r2 = new Enum("DECEMBER", 11);
        DECEMBER = r2;
        b = new n[]{r12, r13, r14, r15, r9, r8, r7, r6, r5, r4, r3, r2};
        a = values();
    }

    public static n F(int i) {
        if (i < 1 || i > 12) {
            throw new RuntimeException("Invalid value for MonthOfYear: " + i);
        }
        return a[i - 1];
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.MONTH_OF_YEAR : qVar != null && qVar.m(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return qVar.j();
        }
        return j$.time.temporal.m.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final int k(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return getValue();
        }
        return j$.time.temporal.m.a(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (qVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return qVar.k(this);
    }

    public final n G() {
        return a[((((int) 1) + 12) + ordinal()) % 12];
    }

    public final int D(boolean z) {
        int i = m.a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public final int E() {
        int i = m.a[ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31;
        }
        return 29;
    }

    public final int C(boolean z) {
        switch (m.a[ordinal()]) {
            case 1:
                return 32;
            case 2:
                return (z ? 1 : 0) + 91;
            case 3:
                return (z ? 1 : 0) + 152;
            case 4:
                return (z ? 1 : 0) + 244;
            case 5:
                return (z ? 1 : 0) + 305;
            case 6:
                return 1;
            case 7:
                return (z ? 1 : 0) + 60;
            case 8:
                return (z ? 1 : 0) + 121;
            case 9:
                return (z ? 1 : 0) + 182;
            case 10:
                return (z ? 1 : 0) + 213;
            case 11:
                return (z ? 1 : 0) + 274;
            default:
                return (z ? 1 : 0) + 335;
        }
    }

    @Override // j$.time.temporal.n
    public final Object v(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.e()) {
            return j$.time.chrono.u.d;
        }
        if (sVar == j$.time.temporal.m.i()) {
            return ChronoUnit.MONTHS;
        }
        return j$.time.temporal.m.c(this, sVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        if (!AbstractC1338i.p(lVar).equals(j$.time.chrono.u.d)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        return lVar.d(getValue(), j$.time.temporal.a.MONTH_OF_YEAR);
    }
}
