package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableMap;

/* renamed from: 딟딠딟뎠둠듌땋딜땲뎠딄듨땄땠뒛딞땱땠들뎻됴땝돨딨땍땥돷뒀돤땠듽뒻뒻뒤딁땻땍뎨뒨돨딐땸땅땮됴돠땄땸되땄들딤땄듔뎹뎡땨땍뒻딞둑뒉돸뎹뒨딹듰땳뒛땪땲디뒀딸뒾둡땃땄돨됐땟딠딟딽따듌뒹뒀딠돰돷듸돤듌뒬됩땜땟딽든뒝땧땅땡뒀땰땔딁디됫딅뒉딎딅딹딻딹뎸땡돶됴뎽딃땳듬땯딐됐돠땧, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0989x8ffe90c3 implements Map, InterfaceC0958x7e2d96ff, KMutableMap {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Map f5164xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Function1 f5165x3271d0aa;

    public C0989x8ffe90c3(Map map, Function1 function1) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(function1, "default");
        this.f5164xfbe0c504 = map;
        this.f5165x3271d0aa = function1;
    }

    @Override // java.util.Map
    public final void clear() {
        this.f5164xfbe0c504.clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.f5164xfbe0c504.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.f5164xfbe0c504.containsValue(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        return this.f5164xfbe0c504.entrySet();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return this.f5164xfbe0c504.equals(obj);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return this.f5164xfbe0c504.get(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.f5164xfbe0c504.hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f5164xfbe0c504.isEmpty();
    }

    @Override // java.util.Map
    public final Set keySet() {
        return this.f5164xfbe0c504.keySet();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        return this.f5164xfbe0c504.put(obj, obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map from) {
        Intrinsics.checkNotNullParameter(from, "from");
        this.f5164xfbe0c504.putAll(from);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        return this.f5164xfbe0c504.remove(obj);
    }

    @Override // java.util.Map
    public final int size() {
        return this.f5164xfbe0c504.size();
    }

    public final String toString() {
        return this.f5164xfbe0c504.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        return this.f5164xfbe0c504.values();
    }

    @Override // defpackage.InterfaceC0958x7e2d96ff
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public final Object mo3521xfbe0c504(Object obj) {
        Map map = this.f5164xfbe0c504;
        Object obj2 = map.get(obj);
        if (obj2 == null && !map.containsKey(obj)) {
            return this.f5165x3271d0aa.invoke(obj);
        }
        return obj2;
    }

    @Override // defpackage.InterfaceC0958x7e2d96ff
    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public final Map mo3522x3271d0aa() {
        return this.f5164xfbe0c504;
    }
}
