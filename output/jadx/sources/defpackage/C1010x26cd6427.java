package defpackage;

import kotlin.ranges.OpenEndRange;

/* renamed from: 딤땫뎨땃듽땤땮뎠뒀땬될땃듌드둑뒾땐땄땅뒻땟두뒹딎듰돝땥듔땋땄땝딤돤돳뒉딸뒵둑돷될딟땮딃듽돰듟득딻땤뎽딄들딐땨땄땵돨들딜돰돝됨뒤딨땐듼돳돵땠돳땳뒷뎻뒾돷딨뒷따따뎡둔득딜땤딞딁든듽둑땸땜땹땳딜둔땡땀땜땵땳됫땧돠땅돵돠딅딝돨듨딹듐뒨땥땣돝뒉딄딤뎽든뎰듔땯들딌딟땣뒛돰, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1010x26cd6427 implements OpenEndRange {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final double f5202xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final double f5203x3271d0aa;

    public C1010x26cd6427(double d, double d2) {
        this.f5202xfbe0c504 = d;
        this.f5203x3271d0aa = d2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.OpenEndRange
    public final boolean contains(Comparable comparable) {
        double doubleValue = ((Number) comparable).doubleValue();
        if (doubleValue >= this.f5202xfbe0c504 && doubleValue < this.f5203x3271d0aa) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1010x26cd6427) {
            if (!isEmpty() || !((C1010x26cd6427) obj).isEmpty()) {
                C1010x26cd6427 c1010x26cd6427 = (C1010x26cd6427) obj;
                if (this.f5202xfbe0c504 != c1010x26cd6427.f5202xfbe0c504 || this.f5203x3271d0aa != c1010x26cd6427.f5203x3271d0aa) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.OpenEndRange
    public final Comparable getEndExclusive() {
        return Double.valueOf(this.f5203x3271d0aa);
    }

    @Override // kotlin.ranges.OpenEndRange
    public final Comparable getStart() {
        return Double.valueOf(this.f5202xfbe0c504);
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long doubleToLongBits = Double.doubleToLongBits(this.f5202xfbe0c504);
        int i = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31;
        long doubleToLongBits2 = Double.doubleToLongBits(this.f5203x3271d0aa);
        return ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32))) + i;
    }

    @Override // kotlin.ranges.OpenEndRange
    public final boolean isEmpty() {
        if (this.f5202xfbe0c504 >= this.f5203x3271d0aa) {
            return true;
        }
        return false;
    }

    public final String toString() {
        return this.f5202xfbe0c504 + "..<" + this.f5203x3271d0aa;
    }
}
