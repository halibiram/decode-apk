package defpackage;

import kotlin.ranges.OpenEndRange;

/* renamed from: 딤땬듬딽둑딃뒬듰딠디뒵땡도돵돠땟돤땮딄땦뒙둥뒬뒘드둔뎡둡둠됨땯딽듟땬땻뒼둠뒬둘딜든됫땨땨돝뒹든돠듬돠뒻뎹땔뒋됐듸뒋땋땥딀뒙뒻돷듬땦땋듟땩둠딨득돼돛딤땃땰땻들뒹땳듐둬딻듬딀딞듼땅뒾뒬뎬듼둑돨돶땥땤돳돶땸뒤땤땜땠도둡돨뒐듟땅듼땲뒉둑드딠딀뒋되딸딀뒋땧딤됴될듽둬땣땠, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1011xab6cb04d implements OpenEndRange {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final float f5204xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final float f5205x3271d0aa;

    public C1011xab6cb04d(float f, float f2) {
        this.f5204xfbe0c504 = f;
        this.f5205x3271d0aa = f2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.OpenEndRange
    public final boolean contains(Comparable comparable) {
        float floatValue = ((Number) comparable).floatValue();
        if (floatValue >= this.f5204xfbe0c504 && floatValue < this.f5205x3271d0aa) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1011xab6cb04d) {
            if (!isEmpty() || !((C1011xab6cb04d) obj).isEmpty()) {
                C1011xab6cb04d c1011xab6cb04d = (C1011xab6cb04d) obj;
                if (this.f5204xfbe0c504 != c1011xab6cb04d.f5204xfbe0c504 || this.f5205x3271d0aa != c1011xab6cb04d.f5205x3271d0aa) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.OpenEndRange
    public final Comparable getEndExclusive() {
        return Float.valueOf(this.f5205x3271d0aa);
    }

    @Override // kotlin.ranges.OpenEndRange
    public final Comparable getStart() {
        return Float.valueOf(this.f5204xfbe0c504);
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (Float.floatToIntBits(this.f5204xfbe0c504) * 31) + Float.floatToIntBits(this.f5205x3271d0aa);
    }

    @Override // kotlin.ranges.OpenEndRange
    public final boolean isEmpty() {
        if (this.f5204xfbe0c504 >= this.f5205x3271d0aa) {
            return true;
        }
        return false;
    }

    public final String toString() {
        return this.f5204xfbe0c504 + "..<" + this.f5205x3271d0aa;
    }
}
