package defpackage;

import android.content.Context;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.CameraX;
import androidx.camera.core.ImageProcessor;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.InternalImageProcessor;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.video.VideoCapture;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.work.WorkerKt;
import com.android.volley.Response;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.play.core.appupdate.AppUpdateInfo;
import com.google.android.play.core.appupdate.AppUpdateManager;
import com.tknetwork.tunnel.activities.ActivityUi;
import config.ConfigUtil;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.Deferred;

/* renamed from: 뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0379x9172909e implements OnSuccessListener, Response.Listener, CallbackToFutureAdapter.Resolver, Config.OptionMatcher, SurfaceRequest.TransformationInfoListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3774xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f3775x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f3776x1378447b;

    public /* synthetic */ C0379x9172909e(Object obj, Object obj2, int i) {
        this.f3774xfbe0c504 = i;
        this.f3775x3271d0aa = obj;
        this.f3776x1378447b = obj2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        Object lambda$initInternal$0;
        Object orCreateCameraXInstance$lambda$18$lambda$17;
        Object lambda$initialSurfaceRecreationCompleter$6;
        Object lambda$setupSurfaceUpdateNotifier$6;
        Unit future$lambda$2;
        switch (this.f3774xfbe0c504) {
            case 2:
                lambda$initInternal$0 = ((CameraX) this.f3775x3271d0aa).lambda$initInternal$0((Context) this.f3776x1378447b, completer);
                return lambda$initInternal$0;
            case 3:
            case 5:
            default:
                future$lambda$2 = WorkerKt.future$lambda$2((Executor) this.f3775x3271d0aa, (Function0) this.f3776x1378447b, completer);
                return future$lambda$2;
            case 4:
                return CoroutineAdapterKt.m648xfbe0c504((Deferred) this.f3775x3271d0aa, this.f3776x1378447b, completer);
            case 6:
                return InternalImageProcessor.m308xfbe0c504((InternalImageProcessor) this.f3775x3271d0aa, (ImageProcessor.Request) this.f3776x1378447b, completer);
            case 7:
                orCreateCameraXInstance$lambda$18$lambda$17 = ProcessCameraProvider.getOrCreateCameraXInstance$lambda$18$lambda$17((ProcessCameraProvider) this.f3775x3271d0aa, (CameraX) this.f3776x1378447b, completer);
                return orCreateCameraXInstance$lambda$18$lambda$17;
            case 8:
                lambda$initialSurfaceRecreationCompleter$6 = ((SurfaceRequest) this.f3775x3271d0aa).lambda$initialSurfaceRecreationCompleter$6((AtomicReference) this.f3776x1378447b, completer);
                return lambda$initialSurfaceRecreationCompleter$6;
            case 9:
                lambda$setupSurfaceUpdateNotifier$6 = ((VideoCapture) this.f3775x3271d0aa).lambda$setupSurfaceUpdateNotifier$6((SessionConfig.Builder) this.f3776x1378447b, completer);
                return lambda$setupSurfaceUpdateNotifier$6;
        }
    }

    @Override // androidx.camera.core.impl.Config.OptionMatcher
    public boolean onOptionMatched(Config.Option option) {
        boolean lambda$from$0;
        lambda$from$0 = CaptureRequestOptions.Builder.lambda$from$0((CaptureRequestOptions.Builder) this.f3775x3271d0aa, (Config) this.f3776x1378447b, option);
        return lambda$from$0;
    }

    @Override // com.android.volley.Response.Listener
    public void onResponse(Object obj) {
        ((ActivityUi) this.f3775x3271d0aa).lambda$CheckingApi$78((ConfigUtil) this.f3776x1378447b, (String) obj);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((ActivityUi) this.f3775x3271d0aa).lambda$callInAppUpdate$60((AppUpdateManager) this.f3776x1378447b, (AppUpdateInfo) obj);
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfoListener
    public void onTransformationInfoUpdate(SurfaceRequest.TransformationInfo transformationInfo) {
        ((DefaultSurfaceProcessor) this.f3775x3271d0aa).lambda$onInputSurface$0((SurfaceRequest) this.f3776x1378447b, transformationInfo);
    }
}
