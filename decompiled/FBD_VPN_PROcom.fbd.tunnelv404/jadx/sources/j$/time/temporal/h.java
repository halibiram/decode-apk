package j$.time.temporal;

import j$.time.Duration;

/* loaded from: classes4.dex */
enum h implements t {
    WEEK_BASED_YEARS("WeekBasedYears"),
    QUARTER_YEARS("QuarterYears");

    private final String a;

    static {
        Duration duration = Duration.ZERO;
    }

    h(String str) {
        this.a = str;
    }

    @Override // j$.time.temporal.t
    public final l j(l lVar, long j) {
        int i = b.a[ordinal()];
        if (i == 1) {
            return lVar.d(j$.com.android.tools.r8.a.e(lVar.k(r0), j), i.c);
        }
        if (i == 2) {
            return lVar.e(j / 4, ChronoUnit.YEARS).e((j % 4) * 3, ChronoUnit.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
