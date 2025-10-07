package defpackage;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.os.CancellationSignal;
import androidx.transition.FragmentTransitionSupport;
import androidx.transition.Transition;
import androidx.work.ListenableFutureKt;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineStart;

/* renamed from: 뒉돝딠땡드드뎨뎰돶듌땮뒛두뒉땠듼딤듽딠둡돵땭돨땦될딠뒝땃둔딠뒷땜땍땐듸딹뎨뎬뒐두딎땋땜뒼땟땀듐될돶돠땳딸땪딝뒵땩뒹땬돰땤딄딽뒤땐뒘뎠뎬뎸된뒤됐땀됩뒀둠듼뒵듟딝둡뒉땁돸땫땋뒝드듨뎨땍땟땲돝뒹딀딻딨땨딠둣듌땐돰땮뒛둠뎽땯뒛땄땦뎬둘딻둥땪뒵듼뒉듟딅됴땋땅뎸뒨뒛땋돝됐, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0665x1dcd12c5 implements CallbackToFutureAdapter.Resolver, CancellationSignal.OnCancelListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4478xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4479x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f4480x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ Object f4481x75d576dc;

    public /* synthetic */ C0665x1dcd12c5(Object obj, int i, Object obj2, Object obj3) {
        this.f4478xfbe0c504 = i;
        this.f4481x75d576dc = obj;
        this.f4479x3271d0aa = obj2;
        this.f4480x1378447b = obj3;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        Object lambda$initGlRenderer$10;
        Object lambda$initGlRenderer$6;
        Object executeAsync$lambda$4;
        Object launchFuture$lambda$1;
        switch (this.f4478xfbe0c504) {
            case 0:
                lambda$initGlRenderer$10 = ((DefaultSurfaceProcessor) this.f4481x75d576dc).lambda$initGlRenderer$10((DynamicRange) this.f4479x3271d0aa, (Map) this.f4480x1378447b, completer);
                return lambda$initGlRenderer$10;
            case 1:
                lambda$initGlRenderer$6 = ((DualSurfaceProcessor) this.f4481x75d576dc).lambda$initGlRenderer$6((DynamicRange) this.f4479x3271d0aa, (Map) this.f4480x1378447b, completer);
                return lambda$initGlRenderer$6;
            case 2:
            default:
                launchFuture$lambda$1 = ListenableFutureKt.launchFuture$lambda$1((CoroutineContext) this.f4481x75d576dc, (CoroutineStart) this.f4479x3271d0aa, (Function2) this.f4480x1378447b, completer);
                return launchFuture$lambda$1;
            case 3:
                executeAsync$lambda$4 = ListenableFutureKt.executeAsync$lambda$4((Executor) this.f4481x75d576dc, (String) this.f4479x3271d0aa, (Function0) this.f4480x1378447b, completer);
                return executeAsync$lambda$4;
        }
    }

    @Override // androidx.core.os.CancellationSignal.OnCancelListener
    public void onCancel() {
        FragmentTransitionSupport.m832xfbe0c504((Runnable) this.f4481x75d576dc, (Transition) this.f4479x3271d0aa, (Runnable) this.f4480x1378447b);
    }
}
