package j$.time.temporal;

import j$.time.chrono.AbstractC1338i;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
abstract class g implements q {
    public static final g DAY_OF_QUARTER;
    public static final g QUARTER_OF_YEAR;
    public static final g WEEK_BASED_YEAR;
    public static final g WEEK_OF_WEEK_BASED_YEAR;
    private static final int[] a;
    private static final /* synthetic */ g[] b;

    @Override // j$.time.temporal.q
    public final boolean v() {
        return true;
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) b.clone();
    }

    static {
        g gVar = new g() { // from class: j$.time.temporal.c
            @Override // j$.time.temporal.q
            public final v j() {
                return v.k(90L, 92L);
            }

            @Override // j$.time.temporal.q
            public final boolean m(n nVar) {
                if (nVar.f(a.DAY_OF_YEAR) && nVar.f(a.MONTH_OF_YEAR) && nVar.f(a.YEAR)) {
                    q qVar = i.a;
                    if (AbstractC1338i.p(nVar).equals(j$.time.chrono.u.d)) {
                        return true;
                    }
                }
                return false;
            }

            @Override // j$.time.temporal.q
            public final v s(n nVar) {
                if (!m(nVar)) {
                    throw new RuntimeException("Unsupported field: DayOfQuarter");
                }
                long s = nVar.s(g.QUARTER_OF_YEAR);
                if (s == 1) {
                    long s2 = nVar.s(a.YEAR);
                    j$.time.chrono.u.d.getClass();
                    return j$.time.chrono.u.m(s2) ? v.j(1L, 91L) : v.j(1L, 90L);
                }
                if (s == 2) {
                    return v.j(1L, 91L);
                }
                if (s == 3 || s == 4) {
                    return v.j(1L, 92L);
                }
                return j();
            }

            @Override // j$.time.temporal.q
            public final long k(n nVar) {
                int[] iArr;
                if (!m(nVar)) {
                    throw new RuntimeException("Unsupported field: DayOfQuarter");
                }
                int k = nVar.k(a.DAY_OF_YEAR);
                int k2 = nVar.k(a.MONTH_OF_YEAR);
                long s = nVar.s(a.YEAR);
                iArr = g.a;
                int i = (k2 - 1) / 3;
                j$.time.chrono.u.d.getClass();
                return k - iArr[i + (j$.time.chrono.u.m(s) ? 4 : 0)];
            }

            @Override // j$.time.temporal.q
            public final l n(l lVar, long j) {
                long k = k(lVar);
                j().b(j, this);
                a aVar = a.DAY_OF_YEAR;
                return lVar.d((j - k) + lVar.s(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = gVar;
        g gVar2 = new g() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.q
            public final v j() {
                return v.j(1L, 4L);
            }

            @Override // j$.time.temporal.q
            public final boolean m(n nVar) {
                if (nVar.f(a.MONTH_OF_YEAR)) {
                    q qVar = i.a;
                    if (AbstractC1338i.p(nVar).equals(j$.time.chrono.u.d)) {
                        return true;
                    }
                }
                return false;
            }

            @Override // j$.time.temporal.q
            public final long k(n nVar) {
                if (!m(nVar)) {
                    throw new RuntimeException("Unsupported field: QuarterOfYear");
                }
                return (nVar.s(a.MONTH_OF_YEAR) + 2) / 3;
            }

            @Override // j$.time.temporal.q
            public final v s(n nVar) {
                if (!m(nVar)) {
                    throw new RuntimeException("Unsupported field: QuarterOfYear");
                }
                return j();
            }

            @Override // j$.time.temporal.q
            public final l n(l lVar, long j) {
                long k = k(lVar);
                j().b(j, this);
                a aVar = a.MONTH_OF_YEAR;
                return lVar.d(((j - k) * 3) + lVar.s(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = gVar2;
        g gVar3 = new g() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.q
            public final v j() {
                return v.k(52L, 53L);
            }

            @Override // j$.time.temporal.q
            public final boolean m(n nVar) {
                if (nVar.f(a.EPOCH_DAY)) {
                    q qVar = i.a;
                    if (AbstractC1338i.p(nVar).equals(j$.time.chrono.u.d)) {
                        return true;
                    }
                }
                return false;
            }

            @Override // j$.time.temporal.q
            public final v s(n nVar) {
                if (!m(nVar)) {
                    throw new RuntimeException("Unsupported field: WeekOfWeekBasedYear");
                }
                return g.F(j$.time.h.E(nVar));
            }

            @Override // j$.time.temporal.q
            public final long k(n nVar) {
                if (!m(nVar)) {
                    throw new RuntimeException("Unsupported field: WeekOfWeekBasedYear");
                }
                return g.C(j$.time.h.E(nVar));
            }

            @Override // j$.time.temporal.q
            public final l n(l lVar, long j) {
                j().b(j, this);
                return lVar.e(j$.com.android.tools.r8.a.l(j, k(lVar)), ChronoUnit.WEEKS);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = gVar3;
        g gVar4 = new g() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.q
            public final v j() {
                return a.YEAR.j();
            }

            @Override // j$.time.temporal.q
            public final boolean m(n nVar) {
                if (nVar.f(a.EPOCH_DAY)) {
                    q qVar = i.a;
                    if (AbstractC1338i.p(nVar).equals(j$.time.chrono.u.d)) {
                        return true;
                    }
                }
                return false;
            }

            @Override // j$.time.temporal.q
            public final long k(n nVar) {
                int G;
                if (!m(nVar)) {
                    throw new RuntimeException("Unsupported field: WeekBasedYear");
                }
                G = g.G(j$.time.h.E(nVar));
                return G;
            }

            @Override // j$.time.temporal.q
            public final v s(n nVar) {
                if (!m(nVar)) {
                    throw new RuntimeException("Unsupported field: WeekBasedYear");
                }
                return j();
            }

            @Override // j$.time.temporal.q
            public final l n(l lVar, long j) {
                int H;
                if (!m(lVar)) {
                    throw new RuntimeException("Unsupported field: WeekBasedYear");
                }
                int a2 = a.YEAR.j().a(j, g.WEEK_BASED_YEAR);
                j$.time.h E = j$.time.h.E(lVar);
                int k = E.k(a.DAY_OF_WEEK);
                int C = g.C(E);
                if (C == 53) {
                    H = g.H(a2);
                    if (H == 52) {
                        C = 52;
                    }
                }
                return lVar.m(j$.time.h.N(a2, 1, 4).R(((C - 1) * 7) + (k - r6.k(r0))));
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = gVar4;
        b = new g[]{gVar, gVar2, gVar3, gVar4};
        a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v F(j$.time.h hVar) {
        return v.j(1L, H(G(hVar)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int H(int i) {
        j$.time.h N = j$.time.h.N(i, 1, 1);
        if (N.G() != j$.time.e.THURSDAY) {
            return (N.G() == j$.time.e.WEDNESDAY && N.L()) ? 53 : 52;
        }
        return 53;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int C(j$.time.h hVar) {
        int ordinal = hVar.G().ordinal();
        int i = 1;
        int H = hVar.H() - 1;
        int i2 = (3 - ordinal) + H;
        int i3 = i2 - ((i2 / 7) * 7);
        int i4 = i3 - 3;
        if (i4 < -3) {
            i4 = i3 + 4;
        }
        if (H < i4) {
            return (int) v.j(1L, H(G(hVar.X(180).T(-1L)))).d();
        }
        int i5 = ((H - i4) / 7) + 1;
        if (i5 != 53 || i4 == -3 || (i4 == -2 && hVar.L())) {
            i = i5;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int G(j$.time.h hVar) {
        int J = hVar.J();
        int H = hVar.H();
        if (H <= 3) {
            return H - hVar.G().ordinal() < -2 ? J - 1 : J;
        }
        if (H >= 363) {
            return ((H - 363) - (hVar.L() ? 1 : 0)) - hVar.G().ordinal() >= 0 ? J + 1 : J;
        }
        return J;
    }
}
