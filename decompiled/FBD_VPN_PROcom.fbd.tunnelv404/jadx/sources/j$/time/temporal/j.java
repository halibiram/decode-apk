package j$.time.temporal;

/* loaded from: classes4.dex */
enum j implements q {
    JULIAN_DAY("JulianDay", 2440588),
    MODIFIED_JULIAN_DAY("ModifiedJulianDay", 40587),
    RATA_DIE("RataDie", 719163);

    private static final long serialVersionUID = -7501623920830201812L;
    private final transient String a;
    private final transient v b;
    private final transient long c;

    @Override // j$.time.temporal.q
    public final boolean v() {
        return true;
    }

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
    }

    j(String str, long j) {
        this.a = str;
        this.b = v.j((-365243219162L) + j, 365241780471L + j);
        this.c = j;
    }

    @Override // j$.time.temporal.q
    public final v j() {
        return this.b;
    }

    @Override // j$.time.temporal.q
    public final boolean m(n nVar) {
        return nVar.f(a.EPOCH_DAY);
    }

    @Override // j$.time.temporal.q
    public final v s(n nVar) {
        if (!nVar.f(a.EPOCH_DAY)) {
            throw new RuntimeException("Unsupported field: " + this);
        }
        return this.b;
    }

    @Override // j$.time.temporal.q
    public final long k(n nVar) {
        return nVar.s(a.EPOCH_DAY) + this.c;
    }

    @Override // j$.time.temporal.q
    public final l n(l lVar, long j) {
        if (!this.b.i(j)) {
            throw new RuntimeException("Invalid value: " + this.a + " " + j);
        }
        return lVar.d(j$.com.android.tools.r8.a.l(j, this.c), a.EPOCH_DAY);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
