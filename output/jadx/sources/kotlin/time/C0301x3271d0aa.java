package kotlin.time;

import defpackage.AbstractC0691xdc9a9f41;
import defpackage.AbstractC0975x7c3950e5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.ComparableTimeMark;

/* renamed from: kotlin.time.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0301x3271d0aa implements ComparableTimeMark {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final long f1727xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final AbstractLongTimeSource f1728x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final long f1729x1378447b;

    public C0301x3271d0aa(long j, AbstractLongTimeSource timeSource, long j2) {
        Intrinsics.checkNotNullParameter(timeSource, "timeSource");
        this.f1727xfbe0c504 = j;
        this.f1728x3271d0aa = timeSource;
        this.f1729x1378447b = j2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(ComparableTimeMark comparableTimeMark) {
        return ComparableTimeMark.DefaultImpls.compareTo(this, comparableTimeMark);
    }

    @Override // kotlin.time.TimeMark
    /* renamed from: elapsedNow-UwyO8pc */
    public final long mo2183elapsedNowUwyO8pc() {
        AbstractLongTimeSource abstractLongTimeSource = this.f1728x3271d0aa;
        return Duration.m2112minusLRDsOJo(LongSaturatedMathKt.saturatingOriginsDiff(AbstractLongTimeSource.access$adjustedRead(abstractLongTimeSource), this.f1727xfbe0c504, abstractLongTimeSource.getUnit()), this.f1729x1378447b);
    }

    @Override // kotlin.time.ComparableTimeMark
    public final boolean equals(Object obj) {
        if (obj instanceof C0301x3271d0aa) {
            if (Intrinsics.areEqual(this.f1728x3271d0aa, ((C0301x3271d0aa) obj).f1728x3271d0aa) && Duration.m2094equalsimpl0(mo2084minusUwyO8pc((ComparableTimeMark) obj), Duration.INSTANCE.m2158getZEROUwyO8pc())) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.time.TimeMark
    public final boolean hasNotPassedNow() {
        return ComparableTimeMark.DefaultImpls.hasNotPassedNow(this);
    }

    @Override // kotlin.time.TimeMark
    public final boolean hasPassedNow() {
        return ComparableTimeMark.DefaultImpls.hasPassedNow(this);
    }

    @Override // kotlin.time.ComparableTimeMark
    public final int hashCode() {
        int m2107hashCodeimpl = Duration.m2107hashCodeimpl(this.f1729x1378447b) * 37;
        long j = this.f1727xfbe0c504;
        return m2107hashCodeimpl + ((int) (j ^ (j >>> 32)));
    }

    @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
    /* renamed from: minus-LRDsOJo */
    public final ComparableTimeMark mo2083minusLRDsOJo(long j) {
        return ComparableTimeMark.DefaultImpls.m2086minusLRDsOJo(this, j);
    }

    @Override // kotlin.time.ComparableTimeMark
    /* renamed from: minus-UwyO8pc */
    public final long mo2084minusUwyO8pc(ComparableTimeMark other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (other instanceof C0301x3271d0aa) {
            C0301x3271d0aa c0301x3271d0aa = (C0301x3271d0aa) other;
            AbstractLongTimeSource abstractLongTimeSource = c0301x3271d0aa.f1728x3271d0aa;
            AbstractLongTimeSource abstractLongTimeSource2 = this.f1728x3271d0aa;
            if (Intrinsics.areEqual(abstractLongTimeSource2, abstractLongTimeSource)) {
                return Duration.m2113plusLRDsOJo(LongSaturatedMathKt.saturatingOriginsDiff(this.f1727xfbe0c504, c0301x3271d0aa.f1727xfbe0c504, abstractLongTimeSource2.getUnit()), Duration.m2112minusLRDsOJo(this.f1729x1378447b, c0301x3271d0aa.f1729x1378447b));
            }
        }
        throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + this + " and " + other);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LongTimeMark(");
        sb.append(this.f1727xfbe0c504);
        AbstractLongTimeSource abstractLongTimeSource = this.f1728x3271d0aa;
        sb.append(AbstractC0691xdc9a9f41.shortName(abstractLongTimeSource.getUnit()));
        sb.append(" + ");
        sb.append((Object) Duration.m2124toStringimpl(this.f1729x1378447b));
        sb.append(", ");
        sb.append(abstractLongTimeSource);
        sb.append(')');
        return sb.toString();
    }

    @Override // kotlin.time.TimeMark
    /* renamed from: minus-LRDsOJo */
    public final TimeMark mo2083minusLRDsOJo(long j) {
        return ComparableTimeMark.DefaultImpls.m2086minusLRDsOJo(this, j);
    }

    @Override // kotlin.time.TimeMark
    /* renamed from: plus-LRDsOJo */
    public final ComparableTimeMark mo2085plusLRDsOJo(long j) {
        DurationUnit unit = this.f1728x3271d0aa.getUnit();
        boolean m2109isInfiniteimpl = Duration.m2109isInfiniteimpl(j);
        long j2 = this.f1727xfbe0c504;
        if (m2109isInfiniteimpl) {
            return new C0301x3271d0aa(LongSaturatedMathKt.m2174saturatingAddNuflL3o(j2, unit, j), this.f1728x3271d0aa, Duration.INSTANCE.m2158getZEROUwyO8pc());
        }
        long m2127truncateToUwyO8pc$kotlin_stdlib = Duration.m2127truncateToUwyO8pc$kotlin_stdlib(j, unit);
        long m2113plusLRDsOJo = Duration.m2113plusLRDsOJo(Duration.m2112minusLRDsOJo(j, m2127truncateToUwyO8pc$kotlin_stdlib), this.f1729x1378447b);
        long m2174saturatingAddNuflL3o = LongSaturatedMathKt.m2174saturatingAddNuflL3o(j2, unit, m2127truncateToUwyO8pc$kotlin_stdlib);
        long m2127truncateToUwyO8pc$kotlin_stdlib2 = Duration.m2127truncateToUwyO8pc$kotlin_stdlib(m2113plusLRDsOJo, unit);
        long m2174saturatingAddNuflL3o2 = LongSaturatedMathKt.m2174saturatingAddNuflL3o(m2174saturatingAddNuflL3o, unit, m2127truncateToUwyO8pc$kotlin_stdlib2);
        long m2112minusLRDsOJo = Duration.m2112minusLRDsOJo(m2113plusLRDsOJo, m2127truncateToUwyO8pc$kotlin_stdlib2);
        long m2102getInWholeNanosecondsimpl = Duration.m2102getInWholeNanosecondsimpl(m2112minusLRDsOJo);
        if (m2174saturatingAddNuflL3o2 != 0 && m2102getInWholeNanosecondsimpl != 0 && (m2174saturatingAddNuflL3o2 ^ m2102getInWholeNanosecondsimpl) < 0) {
            long duration = DurationKt.toDuration(AbstractC0975x7c3950e5.getSign(m2102getInWholeNanosecondsimpl), unit);
            m2174saturatingAddNuflL3o2 = LongSaturatedMathKt.m2174saturatingAddNuflL3o(m2174saturatingAddNuflL3o2, unit, duration);
            m2112minusLRDsOJo = Duration.m2112minusLRDsOJo(m2112minusLRDsOJo, duration);
        }
        if ((1 | (m2174saturatingAddNuflL3o2 - 1)) == Long.MAX_VALUE) {
            m2112minusLRDsOJo = Duration.INSTANCE.m2158getZEROUwyO8pc();
        }
        return new C0301x3271d0aa(m2174saturatingAddNuflL3o2, this.f1728x3271d0aa, m2112minusLRDsOJo);
    }

    @Override // kotlin.time.ComparableTimeMark
    public final int compareTo(ComparableTimeMark comparableTimeMark) {
        return ComparableTimeMark.DefaultImpls.compareTo(this, comparableTimeMark);
    }
}
