package defpackage;

import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BroadcastChannelImpl;
import kotlinx.coroutines.channels.BufferedChannelKt;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.TrySelectDetailedResult;

/* renamed from: 돨듐딹듬땅돳돛땮땪듰땐땮둬들땮뒘됐땥둡뎠뒀뎽땣됴딤듽됩돴뒤됐딄뒝뒤딤듐듰뒀뎻땱뎰뒵땟딎돛땸돵땐뒵뒐뒨된둘땪돴돴땀뒀돴땱돠땪딃뎡땩땍돶뒬돸땦뒋땭땤뒈땱딝뎰뒐돵돶뒹둘돶딸듽뒼뒹됩딀땱뎽땭뎰됫된뒉듬됨돵돰둘될땝땔돝딐땤뎬됨땣땰딅듼딠돠뎽돶듬뎽딐돛돤땸뒀듨뒋땨됫뒾돤땹, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0454xa26b7022 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f3910xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ BroadcastChannelImpl f3911x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f3912x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ SelectInstance f3913x75d576dc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0454xa26b7022(BroadcastChannelImpl broadcastChannelImpl, Object obj, SelectInstance selectInstance, Continuation continuation) {
        super(2, continuation);
        this.f3911x3271d0aa = broadcastChannelImpl;
        this.f3912x1378447b = obj;
        this.f3913x75d576dc = selectInstance;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0454xa26b7022(this.f3911x3271d0aa, this.f3912x1378447b, this.f3913x75d576dc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0454xa26b7022) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ReentrantLock reentrantLock;
        HashMap hashMap;
        Object channel_closed;
        HashMap hashMap2;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.f3910xfbe0c504;
        boolean z = true;
        BroadcastChannelImpl broadcastChannelImpl = this.f3911x3271d0aa;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.f3912x1378447b;
                this.f3910xfbe0c504 = 1;
                if (broadcastChannelImpl.send(obj2, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } catch (Throwable th) {
            if (broadcastChannelImpl.isClosedForSend() && ((th instanceof ClosedSendChannelException) || broadcastChannelImpl.getSendException() == th)) {
                z = false;
            } else {
                throw th;
            }
        }
        reentrantLock = broadcastChannelImpl.f1805x8c6fc18a;
        SelectInstance selectInstance = this.f3913x75d576dc;
        reentrantLock.lock();
        try {
            hashMap = broadcastChannelImpl.f1808x85f0360e;
            if (z) {
                channel_closed = Unit.INSTANCE;
            } else {
                channel_closed = BufferedChannelKt.getCHANNEL_CLOSED();
            }
            hashMap.put(selectInstance, channel_closed);
            Intrinsics.checkNotNull(selectInstance, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            Unit unit = Unit.INSTANCE;
            if (((SelectImplementation) selectInstance).trySelectDetailed(broadcastChannelImpl, unit) != TrySelectDetailedResult.REREGISTER) {
                hashMap2 = broadcastChannelImpl.f1808x85f0360e;
                hashMap2.remove(selectInstance);
            }
            reentrantLock.unlock();
            return unit;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }
}
