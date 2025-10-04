package defpackage;

import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 땤땔땤뒉뒀돴뒷듐둣듬땸듨땁둬땀땀둑둡뎬돴돸뎰땵땠땩딁둡뒵듟땟돰뒘딸땻돷듔둘땤된뒷딞땤땄딃두땤듰딃땨딜돶뒵땰땝들둥듸듌땬들딽뎸딐땃땜딤뒘뒐땠듻돷돨딝됫땅뎰땀둔듐듔땅뒨듬도뎻땭됐땪땩땻뒉땫뎸딟딤땝돛땹땯땵뎬땝땣뒝뎻돴듌됐뒈딨땀뎠둑딀땩됫땡땤된듸둡될땫돰땀됩땳딸땪딟, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1186xab1d803e implements Flow {

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f5578x3271d0aa = AtomicIntegerFieldUpdater.newUpdater(C1186xab1d803e.class, "consumed$volatile");
    private volatile /* synthetic */ int consumed$volatile;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Stream f5579xfbe0c504;

    public C1186xab1d803e(Stream stream) {
        this.f5579xfbe0c504 = stream;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0056 A[Catch: all -> 0x0030, TRY_LEAVE, TryCatch #0 {all -> 0x0030, blocks: (B:11:0x002b, B:14:0x0050, B:16:0x0056), top: B:10:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        C1185xf40d644e c1185xf40d644e;
        int i;
        C1186xab1d803e c1186xab1d803e;
        FlowCollector flowCollector2;
        Iterator it;
        if (continuation instanceof C1185xf40d644e) {
            c1185xf40d644e = (C1185xf40d644e) continuation;
            int i2 = c1185xf40d644e.f5577x9e171bf9;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c1185xf40d644e.f5577x9e171bf9 = i2 - Integer.MIN_VALUE;
                Object obj = c1185xf40d644e.f5575x75d576dc;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c1185xf40d644e.f5577x9e171bf9;
                if (i == 0) {
                    if (i == 1) {
                        it = c1185xf40d644e.f5574x1378447b;
                        FlowCollector flowCollector3 = c1185xf40d644e.f5573x3271d0aa;
                        c1186xab1d803e = c1185xf40d644e.f5572xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                            flowCollector2 = flowCollector3;
                        } catch (Throwable th) {
                            th = th;
                            c1186xab1d803e.f5579xfbe0c504.close();
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    if (f5578x3271d0aa.compareAndSet(this, 0, 1)) {
                        try {
                            c1186xab1d803e = this;
                            flowCollector2 = flowCollector;
                            it = this.f5579xfbe0c504.iterator();
                        } catch (Throwable th2) {
                            th = th2;
                            c1186xab1d803e = this;
                            c1186xab1d803e.f5579xfbe0c504.close();
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("Stream.consumeAsFlow can be collected only once");
                    }
                }
                while (it.hasNext()) {
                    Object next = it.next();
                    c1185xf40d644e.f5572xfbe0c504 = c1186xab1d803e;
                    c1185xf40d644e.f5573x3271d0aa = flowCollector2;
                    c1185xf40d644e.f5574x1378447b = it;
                    c1185xf40d644e.f5577x9e171bf9 = 1;
                    if (flowCollector2.emit(next, c1185xf40d644e) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                c1186xab1d803e.f5579xfbe0c504.close();
                return Unit.INSTANCE;
            }
        }
        c1185xf40d644e = new C1185xf40d644e(this, continuation);
        Object obj2 = c1185xf40d644e.f5575x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c1185xf40d644e.f5577x9e171bf9;
        if (i == 0) {
        }
        while (it.hasNext()) {
        }
        c1186xab1d803e.f5579xfbe0c504.close();
        return Unit.INSTANCE;
    }
}
