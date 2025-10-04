package defpackage;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.debug.internal.ConcurrentWeakMap;
import kotlinx.coroutines.debug.internal.ConcurrentWeakMapKt;

/* renamed from: 둣딀돵땨뎬둥둠땠듟뒾딄딻땋땳뎻딎뒼됴둑딽돴뒬땸땝둑뒬땹도딐땬두뒈돰돴땀됩땲됩땩딄돛될뒈뒤뒨뒉됨땸땸돨딠됩둥땣됩됐돷딁뒻된땀뒐두듽뎹됩딅땨됨땥딌딅딠따됩뎹듼뎡땩뒵땧땩듼땍둑땯땡듼땨땔뒙뒀둥돳땅둔돵땱땫딎돤돳딎딠땀됩땮딜뒨따땨뎸땄돨땐돳땭땅듽뒐돴뎨땳뎡땩뒙뒹뒤딄땍, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0633xa590e0c9 extends AbstractMutableSet {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Function2 f4413xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ ConcurrentWeakMap f4414x3271d0aa;

    public C0633xa590e0c9(ConcurrentWeakMap concurrentWeakMap, Function2 function2) {
        this.f4414x3271d0aa = concurrentWeakMap;
        this.f4413xfbe0c504 = function2;
    }

    @Override // kotlin.collections.AbstractMutableSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        ConcurrentWeakMapKt.access$noImpl();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.collections.AbstractMutableSet
    public final int getSize() {
        return this.f4414x3271d0aa.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        atomicReferenceFieldUpdater = ConcurrentWeakMap.f1867x1378447b;
        C0631x9c5d4812 c0631x9c5d4812 = (C0631x9c5d4812) atomicReferenceFieldUpdater.get(this.f4414x3271d0aa);
        c0631x9c5d4812.getClass();
        return new C0630xaece138c(c0631x9c5d4812, this.f4413xfbe0c504);
    }
}
