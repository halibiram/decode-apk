package defpackage;

import kotlin.ranges.ClosedFloatingPointRange;

/* renamed from: 됫땸땁되듌듬뒋땄땯딟딌뎰뒻뎰될뒵됐뒛땀딄돠두땩돤딻따딟뒘땃뎽딠디뎬뒹뒀득돴땡땮땥디딀땃듬둥딅뒈돠뒋뎹딽땦땁딅땲딐돷듔듬딟딄땸따땄땃뎰돠딄땹뎻땃뒈땲뒝돵딃돠땋딎돨뒙땸듰둠딸뎹들뒘땡뎹듟둥땮딅땍돝돝딁된딁땄뎰뒤둥땻듨됨딄듬돤뒙뒷땥돴딌땋돛득듼뒤딅뒷딅땠땋들딎땯돰돨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0584x37906f28 implements ClosedFloatingPointRange {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final double f4295xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final double f4296x3271d0aa;

    public C0584x37906f28(double d, double d2) {
        this.f4295xfbe0c504 = d;
        this.f4296x3271d0aa = d2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange, kotlin.ranges.ClosedRange
    public final boolean contains(Comparable comparable) {
        double doubleValue = ((Number) comparable).doubleValue();
        if (doubleValue >= this.f4295xfbe0c504 && doubleValue <= this.f4296x3271d0aa) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0584x37906f28) {
            if (!isEmpty() || !((C0584x37906f28) obj).isEmpty()) {
                C0584x37906f28 c0584x37906f28 = (C0584x37906f28) obj;
                if (this.f4295xfbe0c504 != c0584x37906f28.f4295xfbe0c504 || this.f4296x3271d0aa != c0584x37906f28.f4296x3271d0aa) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    public final Comparable getEndInclusive() {
        return Double.valueOf(this.f4296x3271d0aa);
    }

    @Override // kotlin.ranges.ClosedRange
    public final Comparable getStart() {
        return Double.valueOf(this.f4295xfbe0c504);
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long doubleToLongBits = Double.doubleToLongBits(this.f4295xfbe0c504);
        int i = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31;
        long doubleToLongBits2 = Double.doubleToLongBits(this.f4296x3271d0aa);
        return ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32))) + i;
    }

    @Override // kotlin.ranges.ClosedFloatingPointRange, kotlin.ranges.ClosedRange
    public final boolean isEmpty() {
        if (this.f4295xfbe0c504 > this.f4296x3271d0aa) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange
    public final boolean lessThanOrEquals(Comparable comparable, Comparable comparable2) {
        if (((Number) comparable).doubleValue() <= ((Number) comparable2).doubleValue()) {
            return true;
        }
        return false;
    }

    public final String toString() {
        return this.f4295xfbe0c504 + ".." + this.f4296x3271d0aa;
    }
}
