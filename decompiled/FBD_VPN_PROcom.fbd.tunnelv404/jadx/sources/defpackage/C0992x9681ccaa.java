package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.selects.SelectInstanceInternal;
import kotlinx.coroutines.sync.MutexImpl;

/* renamed from: 딟땻됴돼뎸딟딐됩뒀뎽뒛뎠돷땡돸땳뒻뒋땀돴뎡땔땄돼됐듻뒋땤둬땪듌딌됐땬땸땩돤땹땝땬득딞뒨된땟두딞땝딌듻딞듼드뒝땨땵돴돝뎠도땦디듼땬돸듨듔뎹땀땯뎻뒋됩돷뒵땠되돸뒻돷땅뒉땸땲됴되땍땪듸둔뎽됐딜돸땥들둑땧딹땄둣둔땤땰되뒻땬둡돝땮뒋디둬땁뒈땨뒀득딻딠돨둔딟땰돵땲딽땬뎠땐, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0992x9681ccaa implements SelectInstanceInternal {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final SelectInstanceInternal f5170xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Object f5171x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ MutexImpl f5172x1378447b;

    public C0992x9681ccaa(MutexImpl mutexImpl, SelectInstanceInternal selectInstanceInternal, Object obj) {
        this.f5172x1378447b = mutexImpl;
        this.f5170xfbe0c504 = selectInstanceInternal;
        this.f5171x3271d0aa = obj;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public final void disposeOnCompletion(DisposableHandle disposableHandle) {
        this.f5170xfbe0c504.disposeOnCompletion(disposableHandle);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public final CoroutineContext getContext() {
        return this.f5170xfbe0c504.getContext();
    }

    @Override // kotlinx.coroutines.Waiter
    public final void invokeOnCancellation(Segment segment, int i) {
        this.f5170xfbe0c504.invokeOnCancellation(segment, i);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public final void selectInRegistrationPhase(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        atomicReferenceFieldUpdater = MutexImpl.f2487x3db60231;
        atomicReferenceFieldUpdater.set(this.f5172x1378447b, this.f5171x3271d0aa);
        this.f5170xfbe0c504.selectInRegistrationPhase(obj);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public final boolean trySelect(Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        boolean trySelect = this.f5170xfbe0c504.trySelect(obj, obj2);
        if (trySelect) {
            atomicReferenceFieldUpdater = MutexImpl.f2487x3db60231;
            atomicReferenceFieldUpdater.set(this.f5172x1378447b, this.f5171x3271d0aa);
        }
        return trySelect;
    }
}
