package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.YieldKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 됴땤뎹땭됐뎸듟땱딽도뒀뒐딄땣돤딠땧땱돴땣딅돸뎻땦되뒐됫뒤됨땝듻뒐뎸돴땥딀듔뒛뒋듸둘땮딤돛둣될뒀딹뎽땦듨땳딎땵땨땟딞돝듔듻됴뎨딄뒀땃딹뎹돛돸듸득땬뒈됴둥딽든딐듟따뒐됩딤될듬땝딀땱듔득된땩딽뒤도딅둔돵땄땀둔땋뒾딻듬됐딤된땸들뎠듽딝두돶딁땟돴두됴딤땁듐땐땠땡뒉땥둠돨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0596x74ea8608 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Channel f4304xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ int f4305x3271d0aa;

    public C0596x74ea8608(Channel channel, int i) {
        this.f4304xfbe0c504 = channel;
        this.f4305x3271d0aa = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0595xaec9668d c0595xaec9668d;
        Object coroutine_suspended;
        int i;
        if (continuation instanceof C0595xaec9668d) {
            c0595xaec9668d = (C0595xaec9668d) continuation;
            int i2 = c0595xaec9668d.f4303x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0595xaec9668d.f4303x1378447b = i2 - Integer.MIN_VALUE;
                Object obj2 = c0595xaec9668d.f4301xfbe0c504;
                coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0595xaec9668d.f4303x1378447b;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.throwOnFailure(obj2);
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj2);
                } else {
                    ResultKt.throwOnFailure(obj2);
                    IndexedValue indexedValue = new IndexedValue(this.f4305x3271d0aa, obj);
                    c0595xaec9668d.f4303x1378447b = 1;
                    if (this.f4304xfbe0c504.send(indexedValue, c0595xaec9668d) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                c0595xaec9668d.f4303x1378447b = 2;
                if (YieldKt.yield(c0595xaec9668d) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
        }
        c0595xaec9668d = new C0595xaec9668d(this, continuation);
        Object obj22 = c0595xaec9668d.f4301xfbe0c504;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0595xaec9668d.f4303x1378447b;
        if (i == 0) {
        }
        c0595xaec9668d.f4303x1378447b = 2;
        if (YieldKt.yield(c0595xaec9668d) == coroutine_suspended) {
        }
        return Unit.INSTANCE;
    }
}
