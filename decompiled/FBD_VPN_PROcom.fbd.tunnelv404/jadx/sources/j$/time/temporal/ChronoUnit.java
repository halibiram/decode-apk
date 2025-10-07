package j$.time.temporal;

import j$.time.Duration;

/* loaded from: classes4.dex */
public enum ChronoUnit implements t {
    NANOS("Nanos", Duration.k(1)),
    MICROS("Micros", Duration.k(1000)),
    MILLIS("Millis", Duration.k(1000000)),
    SECONDS("Seconds", Duration.m(1)),
    MINUTES("Minutes", Duration.m(60)),
    HOURS("Hours", Duration.m(3600)),
    HALF_DAYS("HalfDays", Duration.m(43200)),
    DAYS("Days", Duration.m(86400)),
    WEEKS("Weeks", Duration.m(604800)),
    MONTHS("Months", Duration.m(2629746)),
    YEARS("Years", Duration.m(31556952)),
    DECADES("Decades", Duration.m(315569520)),
    CENTURIES("Centuries", Duration.m(3155695200L)),
    MILLENNIA("Millennia", Duration.m(31556952000L)),
    ERAS("Eras", Duration.m(31556952000000000L)),
    FOREVER("Forever", Duration.n(Long.MAX_VALUE, 999999999));

    private final String a;
    private final Duration b;

    ChronoUnit(String str, Duration duration) {
        this.a = str;
        this.b = duration;
    }

    public Duration getDuration() {
        return this.b;
    }

    @Override // j$.time.temporal.t
    public final l j(l lVar, long j) {
        return lVar.e(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
