package defpackage;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.internal.ExceptionsConstructorKt;

/* renamed from: 뒝땜땡돤듰땦딨뎰땡딄땍될뒋땄땸디땫돨딃땵듸돸땱땐돶돴땋딤둔돤뒙딃뎰딄땮든딁딄되됩땣둡드듽도땔땹뎽딟듻듌뒵드됩뎠땀땪딀땻둔땍뒛듸땁듐뒋됴땬땁땤뒋딞땝듰딀뒵뒘둣뒘둥딀돴듌땸뎨땪딸뒙뎡둡뎹돰땄딸듨돼땅돶디뒾뎨딁뒷따딄들땔딨듨뒋돤듨땋딄득돴돝드듬땦될땀딻두땬들돵땄뒵뒙, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0718xb260a14b implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4611xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Function1 f4612x3271d0aa;

    public /* synthetic */ C0718xb260a14b(int i, Function1 function1) {
        this.f4611xfbe0c504 = i;
        this.f4612x3271d0aa = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object m1764constructorimpl;
        Function1 function1 = this.f4612x3271d0aa;
        switch (this.f4611xfbe0c504) {
            case 0:
                Throwable th = (Throwable) obj;
                int i = ExceptionsConstructorKt.f2389xfbe0c504;
                Object obj2 = null;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Throwable th2 = (Throwable) function1.invoke(th);
                    if (!Intrinsics.areEqual(th.getMessage(), th2.getMessage()) && !Intrinsics.areEqual(th2.getMessage(), th.toString())) {
                        th2 = null;
                    }
                    m1764constructorimpl = Result.m1764constructorimpl(th2);
                } catch (Throwable th3) {
                    Result.Companion companion2 = Result.INSTANCE;
                    m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th3));
                }
                if (!Result.m1769isFailureimpl(m1764constructorimpl)) {
                    obj2 = m1764constructorimpl;
                }
                return (Throwable) obj2;
            case 1:
                return Long.valueOf(DelayKt.m2225toDelayMillisLRDsOJo(((Duration) function1.invoke(obj)).getF1704xfbe0c504()));
            default:
                function1.invoke(obj);
                return obj;
        }
    }
}
