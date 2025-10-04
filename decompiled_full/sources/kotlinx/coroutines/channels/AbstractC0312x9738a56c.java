package kotlinx.coroutines.channels;

import defpackage.AbstractC0892xc141c517;
import defpackage.C0540x5fdc40bd;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.channels.ReceiveChannel;

/* renamed from: kotlinx.coroutines.channels.뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract /* synthetic */ class AbstractC0312x9738a56c {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0067 A[Catch: all -> 0x0071, TRY_LEAVE, TryCatch #1 {all -> 0x0071, blocks: (B:15:0x005f, B:17:0x0067), top: B:14:0x005f }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x005b -> B:13:0x0032). Please report as a decompilation issue!!! */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m2303xfbe0c504(BroadcastChannel broadcastChannel, Function1 function1, Continuation continuation) {
        C0540x5fdc40bd c0540x5fdc40bd;
        int i;
        ReceiveChannel receiveChannel;
        Throwable th;
        ReceiveChannel receiveChannel2;
        ChannelIterator it;
        C0540x5fdc40bd c0540x5fdc40bd2;
        Object hasNext;
        if (continuation instanceof C0540x5fdc40bd) {
            C0540x5fdc40bd c0540x5fdc40bd3 = (C0540x5fdc40bd) continuation;
            int i2 = c0540x5fdc40bd3.f4101x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0540x5fdc40bd3.f4101x9738a56c = i2 - Integer.MIN_VALUE;
                c0540x5fdc40bd = c0540x5fdc40bd3;
                Object obj = c0540x5fdc40bd.f4100x75d576dc;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0540x5fdc40bd.f4101x9738a56c;
                if (i == 0) {
                    if (i == 1) {
                        ChannelIterator channelIterator = c0540x5fdc40bd.f4099x1378447b;
                        receiveChannel = c0540x5fdc40bd.f4098x3271d0aa;
                        Function1 function12 = c0540x5fdc40bd.f4097xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                            C0540x5fdc40bd c0540x5fdc40bd4 = c0540x5fdc40bd;
                            ReceiveChannel receiveChannel3 = receiveChannel;
                            function1 = function12;
                            ChannelIterator channelIterator2 = channelIterator;
                            C0540x5fdc40bd c0540x5fdc40bd5 = c0540x5fdc40bd4;
                            try {
                                if (!((Boolean) obj).booleanValue()) {
                                    try {
                                        function1.invoke(channelIterator2.next());
                                        c0540x5fdc40bd2.f4097xfbe0c504 = function1;
                                        c0540x5fdc40bd2.f4098x3271d0aa = receiveChannel2;
                                        c0540x5fdc40bd2.f4099x1378447b = it;
                                        c0540x5fdc40bd2.f4101x9738a56c = 1;
                                        hasNext = it.hasNext(c0540x5fdc40bd2);
                                        if (hasNext != coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                        c0540x5fdc40bd4 = c0540x5fdc40bd2;
                                        receiveChannel3 = receiveChannel2;
                                        obj = hasNext;
                                        channelIterator2 = it;
                                        C0540x5fdc40bd c0540x5fdc40bd52 = c0540x5fdc40bd4;
                                        if (!((Boolean) obj).booleanValue()) {
                                            InlineMarker.finallyStart(1);
                                            ReceiveChannel.DefaultImpls.cancel$default(receiveChannel3, (CancellationException) null, 1, (Object) null);
                                            InlineMarker.finallyEnd(1);
                                            return Unit.INSTANCE;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        receiveChannel = receiveChannel2;
                                    }
                                    receiveChannel2 = receiveChannel3;
                                    c0540x5fdc40bd2 = c0540x5fdc40bd52;
                                    it = channelIterator2;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                receiveChannel = receiveChannel3;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    ReceiveChannel openSubscription = broadcastChannel.openSubscription();
                    try {
                        receiveChannel2 = openSubscription;
                        it = openSubscription.iterator();
                        c0540x5fdc40bd2 = c0540x5fdc40bd;
                        c0540x5fdc40bd2.f4097xfbe0c504 = function1;
                        c0540x5fdc40bd2.f4098x3271d0aa = receiveChannel2;
                        c0540x5fdc40bd2.f4099x1378447b = it;
                        c0540x5fdc40bd2.f4101x9738a56c = 1;
                        hasNext = it.hasNext(c0540x5fdc40bd2);
                        if (hasNext != coroutine_suspended) {
                        }
                    } catch (Throwable th5) {
                        receiveChannel = openSubscription;
                        th = th5;
                    }
                }
                InlineMarker.finallyStart(1);
                ReceiveChannel.DefaultImpls.cancel$default(receiveChannel, (CancellationException) null, 1, (Object) null);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        c0540x5fdc40bd = new ContinuationImpl(continuation);
        Object obj2 = c0540x5fdc40bd.f4100x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0540x5fdc40bd.f4101x9738a56c;
        if (i == 0) {
        }
        InlineMarker.finallyStart(1);
        ReceiveChannel.DefaultImpls.cancel$default(receiveChannel, (CancellationException) null, 1, (Object) null);
        InlineMarker.finallyEnd(1);
        throw th;
    }
}
