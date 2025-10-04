package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* renamed from: 둔돷땪땡됨딠뎸딐듬돰땄뒐딄뒈땋땋땳듼땔듬뒐딃듬도땻땻돼듨드땬땯돴뒨돛땥뒻듸뒀딤땀땻될뎻될딨딄돛뒘뒘딀딨듻듟둣딻뒵딁뎸듸뒋딎뎻득딐도딎뎸될듸땍땐딠뒤땅뒹땠땄돰딃땔땔땥둠땵된땀딹뒙돛돸뎰딸땰듟둠땵뒷돷뒈땮땱딄땨땥뒝듽땯듬듼뒙뎹땥듽땻땭땟딟뎡딤땧들듸둬득돰땤도둔딄돤, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0605xf15eab87 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4350xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ ProducerScope f4351x3271d0aa;

    public /* synthetic */ C0605xf15eab87(ProducerScope producerScope, int i) {
        this.f4350xfbe0c504 = i;
        this.f4351x3271d0aa = producerScope;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c2  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0604x2b7a0c48 c0604x2b7a0c48;
        int i;
        C0761x9c85dff5 c0761x9c85dff5;
        int i2;
        C0767x84a772ac c0767x84a772ac;
        int i3;
        switch (this.f4350xfbe0c504) {
            case 0:
                if (continuation instanceof C0604x2b7a0c48) {
                    c0604x2b7a0c48 = (C0604x2b7a0c48) continuation;
                    int i4 = c0604x2b7a0c48.f4349x1378447b;
                    if ((i4 & Integer.MIN_VALUE) != 0) {
                        c0604x2b7a0c48.f4349x1378447b = i4 - Integer.MIN_VALUE;
                        Object obj2 = c0604x2b7a0c48.f4347xfbe0c504;
                        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                        i = c0604x2b7a0c48.f4349x1378447b;
                        if (i == 0) {
                            if (i == 1) {
                                ResultKt.throwOnFailure(obj2);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            ResultKt.throwOnFailure(obj2);
                            SendChannel channel = this.f4351x3271d0aa.getChannel();
                            if (obj == null) {
                                obj = NullSurrogateKt.NULL;
                            }
                            c0604x2b7a0c48.f4349x1378447b = 1;
                            if (channel.send(obj, c0604x2b7a0c48) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        return Unit.INSTANCE;
                    }
                }
                c0604x2b7a0c48 = new C0604x2b7a0c48(this, continuation);
                Object obj22 = c0604x2b7a0c48.f4347xfbe0c504;
                Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0604x2b7a0c48.f4349x1378447b;
                if (i == 0) {
                }
                return Unit.INSTANCE;
            case 1:
                if (continuation instanceof C0761x9c85dff5) {
                    c0761x9c85dff5 = (C0761x9c85dff5) continuation;
                    int i5 = c0761x9c85dff5.f4699x1378447b;
                    if ((i5 & Integer.MIN_VALUE) != 0) {
                        c0761x9c85dff5.f4699x1378447b = i5 - Integer.MIN_VALUE;
                        Object obj3 = c0761x9c85dff5.f4697xfbe0c504;
                        Object coroutine_suspended3 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                        i2 = c0761x9c85dff5.f4699x1378447b;
                        if (i2 == 0) {
                            if (i2 == 1) {
                                ResultKt.throwOnFailure(obj3);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            ResultKt.throwOnFailure(obj3);
                            if (obj == null) {
                                obj = NullSurrogateKt.NULL;
                            }
                            c0761x9c85dff5.f4699x1378447b = 1;
                            if (this.f4351x3271d0aa.send(obj, c0761x9c85dff5) == coroutine_suspended3) {
                                return coroutine_suspended3;
                            }
                        }
                        return Unit.INSTANCE;
                    }
                }
                c0761x9c85dff5 = new C0761x9c85dff5(this, continuation);
                Object obj32 = c0761x9c85dff5.f4697xfbe0c504;
                Object coroutine_suspended32 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i2 = c0761x9c85dff5.f4699x1378447b;
                if (i2 == 0) {
                }
                return Unit.INSTANCE;
            default:
                if (continuation instanceof C0767x84a772ac) {
                    c0767x84a772ac = (C0767x84a772ac) continuation;
                    int i6 = c0767x84a772ac.f4721x1378447b;
                    if ((i6 & Integer.MIN_VALUE) != 0) {
                        c0767x84a772ac.f4721x1378447b = i6 - Integer.MIN_VALUE;
                        Object obj4 = c0767x84a772ac.f4719xfbe0c504;
                        Object coroutine_suspended4 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                        i3 = c0767x84a772ac.f4721x1378447b;
                        if (i3 == 0) {
                            if (i3 == 1) {
                                ResultKt.throwOnFailure(obj4);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            ResultKt.throwOnFailure(obj4);
                            if (obj == null) {
                                obj = NullSurrogateKt.NULL;
                            }
                            c0767x84a772ac.f4721x1378447b = 1;
                            if (this.f4351x3271d0aa.send(obj, c0767x84a772ac) == coroutine_suspended4) {
                                return coroutine_suspended4;
                            }
                        }
                        return Unit.INSTANCE;
                    }
                }
                c0767x84a772ac = new C0767x84a772ac(this, continuation);
                Object obj42 = c0767x84a772ac.f4719xfbe0c504;
                Object coroutine_suspended42 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i3 = c0767x84a772ac.f4721x1378447b;
                if (i3 == 0) {
                }
                return Unit.INSTANCE;
        }
    }
}
