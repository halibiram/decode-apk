package defpackage;

import kotlin.ranges.ClosedFloatingPointRange;

/* renamed from: 됴뎠땫딀땲딟딎딠땁땸땝뒀돳둬듨뒾땸뎰득땱땃딃든뎽듰듬땹됫돛딁딝뒷뎠땫딎듌돶듐땦둥됫땩듔땱듰딽딐된땮뒬뎡뒷됩뎠돸뎽뒹듸뒾딞되딌딞뒀딎뎬둔딄땜땨됨돷된디딌딄땹땋땁득땯돠따둥땳뎰뒛듸듟되땳땁뒛땔둣듰딁딞땔뎨땡땭땹뒷땀둣듨딁땃딹땄뒐듐듼돤듌딎땵뎽돛듬둥뒬딹뒝딅딽둥뒐딝, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0585xf9452bc4 implements ClosedFloatingPointRange {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final float f4297xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final float f4298x3271d0aa;

    public C0585xf9452bc4(float f, float f2) {
        this.f4297xfbe0c504 = f;
        this.f4298x3271d0aa = f2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange, kotlin.ranges.ClosedRange
    public final boolean contains(Comparable comparable) {
        float floatValue = ((Number) comparable).floatValue();
        if (floatValue >= this.f4297xfbe0c504 && floatValue <= this.f4298x3271d0aa) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0585xf9452bc4) {
            if (!isEmpty() || !((C0585xf9452bc4) obj).isEmpty()) {
                C0585xf9452bc4 c0585xf9452bc4 = (C0585xf9452bc4) obj;
                if (this.f4297xfbe0c504 != c0585xf9452bc4.f4297xfbe0c504 || this.f4298x3271d0aa != c0585xf9452bc4.f4298x3271d0aa) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    public final Comparable getEndInclusive() {
        return Float.valueOf(this.f4298x3271d0aa);
    }

    @Override // kotlin.ranges.ClosedRange
    public final Comparable getStart() {
        return Float.valueOf(this.f4297xfbe0c504);
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (Float.floatToIntBits(this.f4297xfbe0c504) * 31) + Float.floatToIntBits(this.f4298x3271d0aa);
    }

    @Override // kotlin.ranges.ClosedFloatingPointRange, kotlin.ranges.ClosedRange
    public final boolean isEmpty() {
        if (this.f4297xfbe0c504 > this.f4298x3271d0aa) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange
    public final boolean lessThanOrEquals(Comparable comparable, Comparable comparable2) {
        if (((Number) comparable).floatValue() <= ((Number) comparable2).floatValue()) {
            return true;
        }
        return false;
    }

    public final String toString() {
        return this.f4297xfbe0c504 + ".." + this.f4298x3271d0aa;
    }
}
