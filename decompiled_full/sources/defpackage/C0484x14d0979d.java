package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* renamed from: 돴뒹딁둬둥땸듸디둠딃딎딀땁땁되딨땬듟돴뎬땬뒵둑땄땠듟따땐뒼듸돝듰땜돝둑돳돵땠듨든됩돰됐딻도득돤됐돼땐득뒉땳뒋딄뎬땤듼땲듟딻딄뎨돠땯뒛땲둣돳듸땩둠됫듼들땥뒤뒨돤돤딻땍땹딹뎡딎뒬땵뒛딠듌땁듟된뎸뒼둥딄뎽뒵땥되땮땅땀딟땫돝돶땝뎡뒻되딄뒈듻둣돸됴땄뒛도뒝땵뒷땯돝디딽딅, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0484x14d0979d extends C0526xd072ab8a {

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Function2 f3977x3271d0aa;

    public C0484x14d0979d(Function2 function2, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(function2, coroutineContext, i, bufferOverflow);
        this.f3977x3271d0aa = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // defpackage.C0526xd072ab8a, kotlinx.coroutines.flow.internal.ChannelFlow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object collectTo(ProducerScope producerScope, Continuation continuation) {
        C0483x46fa6192 c0483x46fa6192;
        int i;
        if (continuation instanceof C0483x46fa6192) {
            c0483x46fa6192 = (C0483x46fa6192) continuation;
            int i2 = c0483x46fa6192.f3976x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0483x46fa6192.f3976x75d576dc = i2 - Integer.MIN_VALUE;
                Object obj = c0483x46fa6192.f3974x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0483x46fa6192.f3976x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        producerScope = c0483x46fa6192.f3973xfbe0c504;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    c0483x46fa6192.f3973xfbe0c504 = producerScope;
                    c0483x46fa6192.f3976x75d576dc = 1;
                    if (super.collectTo(producerScope, c0483x46fa6192) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                if (!producerScope.isClosedForSend()) {
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
            }
        }
        c0483x46fa6192 = new C0483x46fa6192(this, continuation);
        Object obj2 = c0483x46fa6192.f3974x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0483x46fa6192.f3976x75d576dc;
        if (i == 0) {
        }
        if (!producerScope.isClosedForSend()) {
        }
    }

    @Override // defpackage.C0526xd072ab8a, kotlinx.coroutines.flow.internal.ChannelFlow
    public final ChannelFlow create(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return new C0484x14d0979d(this.f3977x3271d0aa, coroutineContext, i, bufferOverflow);
    }
}
