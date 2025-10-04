package defpackage;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.sync.MutexImpl;

/* renamed from: 돰듟딁뒨딅듸땱땹딀딠뒐돝둡땬땰땫땟뒛따딜둣듨딄돷땲둑땵뎽땍뎽땜땹뒹땹딸땣듬듼도둥뒻둬도딸딟뒝땻땥땐땄둑듰땮두듸뒻뒘뒵뎰됩땃뒀땨뒨땻땭뒛딸듻따땪땹돰돸뒵딨듬땱둘땪둘듬돸뒨딟듬땅땸땸딅뒙둥딝땯땫딎돤땦뒹됴뒝땯땀둥듨뒻땯딌뎽둥뒛될뒼뒻됐된돰뎸든뎡땀딻땻돛듬돝땬뎨뒵뎸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0462x3c05abf3 implements Function3 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3935xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f3936x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f3937x1378447b;

    public /* synthetic */ C0462x3c05abf3(Object obj, Object obj2, int i) {
        this.f3935xfbe0c504 = i;
        this.f3937x1378447b = obj;
        this.f3936x3271d0aa = obj2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Object obj4 = this.f3937x1378447b;
        Object obj5 = this.f3936x3271d0aa;
        switch (this.f3935xfbe0c504) {
            case 0:
                AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.f1812x1378447b;
                OnUndeliveredElementKt.callUndeliveredElement((Function1) obj4, obj5, (CoroutineContext) obj3);
                return Unit.INSTANCE;
            case 1:
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = MutexImpl.f2487x3db60231;
                ((MutexImpl) obj4).unlock(obj5);
                return Unit.INSTANCE;
            default:
                atomicReferenceFieldUpdater = MutexImpl.f2487x3db60231;
                C0991x18f9c879 c0991x18f9c879 = (C0991x18f9c879) obj5;
                MutexImpl mutexImpl = (MutexImpl) obj4;
                atomicReferenceFieldUpdater.set(mutexImpl, c0991x18f9c879.f5168x3271d0aa);
                mutexImpl.unlock(c0991x18f9c879.f5168x3271d0aa);
                return Unit.INSTANCE;
        }
    }
}
