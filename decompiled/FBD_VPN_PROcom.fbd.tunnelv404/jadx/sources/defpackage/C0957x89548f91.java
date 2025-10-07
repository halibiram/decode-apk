package defpackage;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* renamed from: 딐딎땀뒈땦둡딅땨듸딝땧딝딃땸딁딟듽땳땬둡딸듼듰둔땋땀딄딁돛듰딜뒝땍땍뒹땅딝땸듰땻뒵둔돷뒐땍둔뒋딄됴돳뒬딄디땤딠땬딄땪뎸뎹뎡듼땧둡뒘든땵뒤딽딃딽땬듼딐되뒤뒙땬드뒙뒐돤뒻뒙뒘땁둡듬뎹땳뒻땐둑둔돛됐뒝땟듻둘뒨된듌뒼딌뒨뎻뎠듐뒐뒾땅땀땮뒤땍뒨땹땲뒾득돨뒛돼뒉뎠뎽땠뒤땡, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0957x89548f91 implements Map.Entry, KMappedMarker {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Object f5133xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Object f5134x3271d0aa;

    public C0957x89548f91(Object obj, Object obj2) {
        this.f5133xfbe0c504 = obj;
        this.f5134x3271d0aa = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0957x89548f91)) {
            return false;
        }
        C0957x89548f91 c0957x89548f91 = (C0957x89548f91) obj;
        if (Intrinsics.areEqual(this.f5133xfbe0c504, c0957x89548f91.f5133xfbe0c504) && Intrinsics.areEqual(this.f5134x3271d0aa, c0957x89548f91.f5134x3271d0aa)) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f5133xfbe0c504;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f5134x3271d0aa;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int hashCode;
        int i = 0;
        Object obj = this.f5133xfbe0c504;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        int i2 = hashCode * 31;
        Object obj2 = this.f5134x3271d0aa;
        if (obj2 != null) {
            i = obj2.hashCode();
        }
        return i2 + i;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final String toString() {
        return "MapEntry(key=" + this.f5133xfbe0c504 + ", value=" + this.f5134x3271d0aa + ')';
    }
}
