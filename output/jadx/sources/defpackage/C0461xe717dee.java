package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.BufferedChannelKt;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;

/* renamed from: 돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0461xe717dee implements Function3 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3933xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f3934x3271d0aa;

    public /* synthetic */ C0461xe717dee(Object obj, int i) {
        this.f3933xfbe0c504 = i;
        this.f3934x3271d0aa = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, final Object obj3) {
        Object obj4 = this.f3934x3271d0aa;
        switch (this.f3933xfbe0c504) {
            case 0:
                final SelectInstance selectInstance = (SelectInstance) obj;
                AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.f1812x1378447b;
                final BufferedChannel bufferedChannel = (BufferedChannel) obj4;
                return new Function3() { // from class: 돰듰됫딜돛뒝땮돷돵뎻돵돤뒘돠땮뒈뒻듽듽땥돨땸뒘땳득땸땮땜딸땝돵따둣듼듰뒈딞딁딄뎰뒵돸돤든뎠딠땫땪뒐딌뒬딟된땥듐둥드땪든땭땣뒙땯돳땝뎡뎡딝뎠땩돶땭땜돝뒵돸땜드뒘땰돳돷땸둬듌땲뒀딃될뎹득듟듰돵땸딞땔딝됨딻딟딀돰뒨뒙땸둥땥뒈듬듼돰딞듌돴디될듔땦딝땱듟든땪딹디땰득땠뒬
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj5, Object obj6, Object obj7) {
                        AtomicLongFieldUpdater atomicLongFieldUpdater2 = BufferedChannel.f1812x1378447b;
                        Symbol channel_closed = BufferedChannelKt.getCHANNEL_CLOSED();
                        Object obj8 = obj3;
                        if (obj8 != channel_closed) {
                            OnUndeliveredElementKt.callUndeliveredElement(bufferedChannel.onUndeliveredElement, obj8, selectInstance.getContext());
                        }
                        return Unit.INSTANCE;
                    }
                };
            case 1:
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = CancellableContinuationImpl.f1754x1378447b;
                ((Function1) obj4).invoke((Throwable) obj);
                return Unit.INSTANCE;
            case 2:
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.f2487x3db60231;
                return new C0462x3c05abf3((MutexImpl) obj4, obj2, 1);
            default:
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = SemaphoreAndMutexImpl.f2491x1378447b;
                ((SemaphoreAndMutexImpl) obj4).release();
                return Unit.INSTANCE;
        }
    }
}
