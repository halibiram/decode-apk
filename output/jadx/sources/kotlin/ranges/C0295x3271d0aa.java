package kotlin.ranges;

import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedRange;

/* renamed from: kotlin.ranges.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0295x3271d0aa implements ClosedRange {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Comparable f1521xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Comparable f1522x3271d0aa;

    public C0295x3271d0aa(Comparable start, Comparable endInclusive) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(endInclusive, "endInclusive");
        this.f1521xfbe0c504 = start;
        this.f1522x3271d0aa = endInclusive;
    }

    @Override // kotlin.ranges.ClosedRange
    public final boolean contains(Comparable comparable) {
        return ClosedRange.DefaultImpls.contains(this, comparable);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
    
        if (kotlin.ranges.ClosedRange.DefaultImpls.isEmpty(r0) == false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        if (obj instanceof C0295x3271d0aa) {
            if (ClosedRange.DefaultImpls.isEmpty(this)) {
                C0295x3271d0aa c0295x3271d0aa = (C0295x3271d0aa) obj;
                c0295x3271d0aa.getClass();
            }
            C0295x3271d0aa c0295x3271d0aa2 = (C0295x3271d0aa) obj;
            if (Intrinsics.areEqual(this.f1521xfbe0c504, c0295x3271d0aa2.f1521xfbe0c504)) {
                if (Intrinsics.areEqual(this.f1522x3271d0aa, c0295x3271d0aa2.f1522x3271d0aa)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    public final Comparable getEndInclusive() {
        return this.f1522x3271d0aa;
    }

    @Override // kotlin.ranges.ClosedRange
    public final Comparable getStart() {
        return this.f1521xfbe0c504;
    }

    public final int hashCode() {
        if (ClosedRange.DefaultImpls.isEmpty(this)) {
            return -1;
        }
        return (this.f1521xfbe0c504.hashCode() * 31) + this.f1522x3271d0aa.hashCode();
    }

    @Override // kotlin.ranges.ClosedRange
    public final boolean isEmpty() {
        return ClosedRange.DefaultImpls.isEmpty(this);
    }

    public final String toString() {
        return this.f1521xfbe0c504 + ".." + this.f1522x3271d0aa;
    }
}
