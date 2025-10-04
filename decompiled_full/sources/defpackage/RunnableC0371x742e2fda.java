package defpackage;

import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraX;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.ConstantObservable;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.video.internal.BufferProvider;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.camera.view.CameraController;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.Violation;
import androidx.lifecycle.DispatchQueue;
import androidx.test.core.app.ActivityScenario;
import androidx.window.embedding.ExtensionEmbeddingBackend;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Callables;
import com.journeyapps.barcodescanner.camera.CameraInstance;
import com.journeyapps.barcodescanner.camera.CameraParametersCallback;
import com.tknetwork.tunnel.activities.ActivityUi;
import com.tknetwork.tunnel.utils.AsyncTasks;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.android.HandlerContext;

/* renamed from: 뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0371x742e2fda implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3758xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f3759x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f3760x1378447b;

    public /* synthetic */ RunnableC0371x742e2fda(Object obj, Object obj2, int i) {
        this.f3758xfbe0c504 = i;
        this.f3759x3271d0aa = obj;
        this.f3760x1378447b = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f3760x1378447b;
        Object obj2 = this.f3759x3271d0aa;
        switch (this.f3758xfbe0c504) {
            case 0:
                ActivityScenario.m822x1378447b((ActivityScenario) obj2, (ActivityScenario.ActivityAction) obj);
                return;
            case 1:
                ActivityUi.m1337x952a0a9e((ActivityUi) obj2, (ActivityUi) obj);
                return;
            case 2:
                ((AsyncTasks) obj2).lambda$startBackground$0(obj);
                return;
            case 3:
                ((AsyncTasks) obj2).lambda$startBackground$1((Object[]) obj);
                return;
            case 4:
                AudioSource.m390x75d576dc((AudioSource) obj2, (BufferProvider) obj);
                return;
            case 5:
                AudioSource.m389x1378447b((AudioSource.AudioSourceCallback) obj2, (Throwable) obj);
                return;
            case 6:
                AudioSource.m392x9e171bf9((AudioSource) obj2, (CallbackToFutureAdapter.Completer) obj);
                return;
            case 7:
                AudioSource.m395x3db60231((AudioSource) obj2, (AudioSource.AudioSourceCallback) obj);
                return;
            case 8:
                Callables.m1288xfbe0c504((Supplier) obj2, (Runnable) obj);
                return;
            case 9:
                Camera2CameraControlImpl.m33x1378447b((Camera2CameraControlImpl) obj2, (CallbackToFutureAdapter.Completer) obj);
                return;
            case 10:
                Camera2CameraControlImpl.m35x9738a56c((Camera2CameraControlImpl) obj2, (CameraCaptureCallback) obj);
                return;
            case 11:
                CameraController.m462x75d576dc((CameraController) obj2, (CameraSelector) obj);
                return;
            case 12:
                CameraInstance.m1335x75d576dc((CameraInstance) obj2, (CameraParametersCallback) obj);
                return;
            case 13:
                CameraRepository.m259xfbe0c504((CameraRepository) obj2, (CameraInternal) obj);
                return;
            case 14:
                CameraX.m191x3271d0aa((CallbackToFutureAdapter.Completer) obj, (CameraX) obj2);
                return;
            case 15:
                ConstantObservable.m261xfbe0c504((ConstantObservable) obj2, (Observable.Observer) obj);
                return;
            case 16:
                ConstraintTracker.m880xfbe0c504((List) obj2, (ConstraintTracker) obj);
                return;
            case 17:
                DefaultSurfaceProcessor.m306xd2bcb0cf((DefaultSurfaceProcessor) obj2, (SurfaceRequest) obj);
                return;
            case 18:
                DefaultSurfaceProcessor.m301x34271fae((DefaultSurfaceProcessor) obj2, (SurfaceOutput) obj);
                return;
            case 19:
                DeferrableSurface.m264x1378447b((String) obj, (DeferrableSurface) obj2);
                return;
            case 20:
                DispatchQueue.m628xfbe0c504((DispatchQueue) obj2, (Runnable) obj);
                return;
            case 21:
                DualSurfaceProcessor.m329x34271fae((DualSurfaceProcessor) obj2, (SurfaceRequest) obj);
                return;
            case 22:
                DualSurfaceProcessor.m328x9e171bf9((DualSurfaceProcessor) obj2, (SurfaceOutput) obj);
                return;
            case 23:
                EncoderImpl.m423x8c6fc18a((EncoderImpl) obj2, (CallbackToFutureAdapter.Completer) obj);
                return;
            case 24:
                ExtensionEmbeddingBackend.SplitListenerWrapper.m846xfbe0c504((ExtensionEmbeddingBackend.SplitListenerWrapper) obj2, (ArrayList) obj);
                return;
            case 25:
                FragmentStrictMode.m622xfbe0c504((FragmentStrictMode.Policy) obj2, (Violation) obj);
                return;
            case 26:
                FragmentStrictMode.m623x3271d0aa((String) obj2, (Violation) obj);
                return;
            case 27:
                int i = HandlerContext.f1799x9738a56c;
                ((CancellableContinuation) obj2).resumeUndispatched((HandlerContext) obj, Unit.INSTANCE);
                return;
            case 28:
                ImageAnalysis.m196x3271d0aa((SafeCloseImageReaderProxy) obj2, (SafeCloseImageReaderProxy) obj);
                return;
            default:
                ((LiveDataObservable) obj2).lambda$fetchData$0((CallbackToFutureAdapter.Completer) obj);
                return;
        }
    }
}
