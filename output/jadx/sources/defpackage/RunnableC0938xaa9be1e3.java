package defpackage;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.location.Location;
import android.net.Uri;
import android.util.Size;
import android.view.ScaleGestureDetector;
import android.view.View;
import androidx.browser.trusted.TrustedWebActivityServiceConnectionPool;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.ZoomState;
import androidx.camera.core.imagecapture.RequestWithCallback;
import androidx.camera.core.imagecapture.TakePictureManager;
import androidx.camera.core.imagecapture.TakePictureRequest;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.processing.SurfaceProcessorWithExecutor;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.video.Recorder;
import androidx.camera.video.VideoCapture;
import androidx.camera.video.VideoOutput;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.Consumer;
import androidx.room.MultiInstanceInvalidationClient;
import androidx.room.MultiInstanceInvalidationClient$callback$1;
import androidx.room.TransactionExecutor;
import androidx.window.layout.SidecarWindowBackend;
import androidx.window.layout.WindowLayoutInfo;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.background.greedy.TimeLimiter;
import androidx.work.multiprocess.RemoteWorkManagerClient;
import com.google.common.cache.RemovalListener;
import com.google.common.cache.RemovalListeners;
import com.google.common.cache.RemovalNotification;
import com.google.common.util.concurrent.ListenableFuture;
import com.tknetwork.tunnel.core.VpnProfile;
import com.v2ray.ang.viewmodel.MainViewModel;
import com.v2ray.ang.viewmodel.MainViewModel$mMsgReceiver$1;
import io.github.g00fy2.quickie.QRCodeAnalyzer;
import io.github.g00fy2.quickie.QROverlayView;
import io.github.g00fy2.quickie.QRScannerActivity;
import io.github.g00fy2.quickie.databinding.QuickieScannerActivityBinding;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.selects.SelectInstance;

/* renamed from: 딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0938xaa9be1e3 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5089xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f5090x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f5091x1378447b;

    public /* synthetic */ RunnableC0938xaa9be1e3(Object obj, Object obj2, int i) {
        this.f5089xfbe0c504 = i;
        this.f5090x3271d0aa = obj;
        this.f5091x1378447b = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        CameraSelector cameraSelector;
        int i = 4;
        int i2 = 2;
        int i3 = 0;
        int i4 = 1;
        Object obj = this.f5091x1378447b;
        Object obj2 = this.f5090x3271d0aa;
        switch (this.f5089xfbe0c504) {
            case 0:
                ((Consumer) obj2).accept((Location) obj);
                return;
            case 1:
                MainViewModel$mMsgReceiver$1.m1741xfbe0c504((Intent) obj2, (MainViewModel) obj);
                return;
            case 2:
                MetadataImageReader.m210xfbe0c504((MetadataImageReader) obj2, (ImageReaderProxy.OnImageAvailableListener) obj);
                return;
            case 3:
                MultiInstanceInvalidationClient$callback$1.m660xfbe0c504((MultiInstanceInvalidationClient) obj2, (String[]) obj);
                return;
            case 4:
                ((SelectInstance) obj2).trySelect((C1009x7e4e4697) obj, Unit.INSTANCE);
                return;
            case 5:
                ((Preview.SurfaceProvider) obj2).onSurfaceRequested((SurfaceRequest) obj);
                return;
            case 6:
                ((Preview) obj2).lambda$createPipeline$0((CameraInternal) obj);
                return;
            case 7:
                ListenableFuture listenableFuture = (ListenableFuture) obj2;
                QRScannerActivity qRScannerActivity = (QRScannerActivity) obj;
                QRScannerActivity.Companion companion = QRScannerActivity.INSTANCE;
                try {
                    ProcessCameraProvider processCameraProvider = (ProcessCameraProvider) listenableFuture.get();
                    Preview build = new Preview.Builder().build();
                    QuickieScannerActivityBinding quickieScannerActivityBinding = qRScannerActivity.f1094x3271d0aa;
                    QuickieScannerActivityBinding quickieScannerActivityBinding2 = null;
                    if (quickieScannerActivityBinding == null) {
                        quickieScannerActivityBinding = null;
                    }
                    build.setSurfaceProvider(quickieScannerActivityBinding.previewView.getSurfaceProvider());
                    Intrinsics.checkNotNullExpressionValue(build, "also(...)");
                    ImageAnalysis build2 = new ImageAnalysis.Builder().setBackpressureStrategy(0).setResolutionSelector(new ResolutionSelector.Builder().setResolutionStrategy(new ResolutionStrategy(new Size(VpnProfile.DEFAULT_MSSFIX_SIZE, 720), 1)).build()).build();
                    ExecutorService executorService = qRScannerActivity.f1095x1378447b;
                    if (executorService == null) {
                        executorService = null;
                    }
                    build2.setAnalyzer(executorService, new QRCodeAnalyzer(qRScannerActivity.f1096x75d576dc, new C0836x3e38e592(build2, qRScannerActivity, 3), new C1052x3eba90a4(qRScannerActivity, i), new C1052x3eba90a4(qRScannerActivity, i3)));
                    Intrinsics.checkNotNullExpressionValue(build2, "also(...)");
                    processCameraProvider.unbindAll();
                    if (qRScannerActivity.f1100x95f25580) {
                        cameraSelector = CameraSelector.DEFAULT_FRONT_CAMERA;
                    } else {
                        cameraSelector = CameraSelector.DEFAULT_BACK_CAMERA;
                    }
                    Intrinsics.checkNotNull(cameraSelector);
                    try {
                        final Camera bindToLifecycle = processCameraProvider.bindToLifecycle(qRScannerActivity, cameraSelector, build, build2);
                        ScaleGestureDetector scaleGestureDetector = new ScaleGestureDetector(qRScannerActivity, new ScaleGestureDetector.SimpleOnScaleGestureListener() { // from class: io.github.g00fy2.quickie.QRScannerActivity$startCamera$1$listener$1
                            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
                            public boolean onScale(ScaleGestureDetector detector) {
                                float f;
                                Intrinsics.checkNotNullParameter(detector, "detector");
                                Camera camera = Camera.this;
                                ZoomState value = camera.getCameraInfo().getZoomState().getValue();
                                if (value != null) {
                                    f = value.getZoomRatio();
                                } else {
                                    f = 1.0f;
                                }
                                camera.getCameraControl().setZoomRatio(f * detector.getScaleFactor());
                                return true;
                            }
                        });
                        QuickieScannerActivityBinding quickieScannerActivityBinding3 = qRScannerActivity.f1094x3271d0aa;
                        if (quickieScannerActivityBinding3 == null) {
                            quickieScannerActivityBinding3 = null;
                        }
                        quickieScannerActivityBinding3.overlayView.setOnTouchListener(new ViewOnTouchListenerC0685x19514a05(scaleGestureDetector, i4));
                        QuickieScannerActivityBinding quickieScannerActivityBinding4 = qRScannerActivity.f1094x3271d0aa;
                        if (quickieScannerActivityBinding4 == null) {
                            quickieScannerActivityBinding4 = null;
                        }
                        quickieScannerActivityBinding4.overlayView.setVisibility(0);
                        QuickieScannerActivityBinding quickieScannerActivityBinding5 = qRScannerActivity.f1094x3271d0aa;
                        if (quickieScannerActivityBinding5 == null) {
                            quickieScannerActivityBinding5 = null;
                        }
                        quickieScannerActivityBinding5.overlayView.setCloseVisibilityAndOnClick(qRScannerActivity.f1099x34271fae, new C0350x95f25580(qRScannerActivity, 12));
                        if (qRScannerActivity.f1098x9e171bf9 && bindToLifecycle.getCameraInfo().hasFlashUnit()) {
                            QuickieScannerActivityBinding quickieScannerActivityBinding6 = qRScannerActivity.f1094x3271d0aa;
                            if (quickieScannerActivityBinding6 == null) {
                                quickieScannerActivityBinding6 = null;
                            }
                            quickieScannerActivityBinding6.overlayView.setTorchVisibilityAndOnClick(true, new C0346x75d576dc(bindToLifecycle, 13));
                            bindToLifecycle.getCameraInfo().getTorchState().observe(qRScannerActivity, new C1054x80ce2c65(new C1052x3eba90a4(qRScannerActivity, i4)));
                        } else {
                            QuickieScannerActivityBinding quickieScannerActivityBinding7 = qRScannerActivity.f1094x3271d0aa;
                            if (quickieScannerActivityBinding7 == null) {
                                quickieScannerActivityBinding7 = null;
                            }
                            QROverlayView.setTorchVisibilityAndOnClick$default(quickieScannerActivityBinding7.overlayView, false, null, 2, null);
                        }
                        QuickieScannerActivityBinding quickieScannerActivityBinding8 = qRScannerActivity.f1094x3271d0aa;
                        if (quickieScannerActivityBinding8 == null) {
                            quickieScannerActivityBinding8 = null;
                        }
                        quickieScannerActivityBinding8.overlayView.setGalleryVisibilityAndOnClick(true, new C1052x3eba90a4(qRScannerActivity, i2));
                        return;
                    } catch (Exception e) {
                        QuickieScannerActivityBinding quickieScannerActivityBinding9 = qRScannerActivity.f1094x3271d0aa;
                        if (quickieScannerActivityBinding9 != null) {
                            quickieScannerActivityBinding2 = quickieScannerActivityBinding9;
                        }
                        quickieScannerActivityBinding2.overlayView.setVisibility(4);
                        qRScannerActivity.m1747x1db10c9d(e);
                        return;
                    }
                } catch (Exception e2) {
                    qRScannerActivity.m1747x1db10c9d(e2);
                    return;
                }
            case 8:
                ((Executor) obj2).execute((Runnable) obj);
                return;
            case 9:
                ((Recorder) obj2).lambda$onSourceStateChanged$1((VideoOutput.SourceState) obj);
                return;
            case 10:
                RemoteWorkManagerClient.m901x1378447b((RemoteWorkManagerClient) obj2, (ListenableFuture) obj);
                return;
            case 11:
                RemovalListeners.m1262xfbe0c504((RemovalListener) obj2, (RemovalNotification) obj);
                return;
            case 12:
                ((ResourcesCompat.FontCallback) obj2).lambda$callbackSuccessAsync$0((Typeface) obj);
                return;
            case 13:
                SidecarWindowBackend.WindowLayoutChangeCallbackWrapper.m848xfbe0c504((SidecarWindowBackend.WindowLayoutChangeCallbackWrapper) obj2, (WindowLayoutInfo) obj);
                return;
            case 14:
                SurfaceProcessorWithExecutor.m322x3271d0aa((SurfaceProcessorWithExecutor) obj2, (SurfaceRequest) obj);
                return;
            case 15:
                SurfaceProcessorWithExecutor.m321xfbe0c504((SurfaceProcessorWithExecutor) obj2, (SurfaceOutput) obj);
                return;
            case 16:
                ((TakePictureManager) obj2).lambda$trackCurrentRequests$1((RequestWithCallback) obj);
                return;
            case 17:
                ((TakePictureRequest) obj2).lambda$onResult$2((ImageProxy) obj);
                return;
            case 18:
                ((TakePictureRequest) obj2).lambda$onPostviewBitmapAvailable$4((Bitmap) obj);
                return;
            case 19:
                ((TakePictureRequest) obj2).lambda$onResult$1((ImageCapture.OutputFileResults) obj);
                return;
            case 20:
                ((TakePictureRequest) obj2).lambda$onError$0((ImageCaptureException) obj);
                return;
            case 21:
                Threads.lambda$runOnMainSync$0((Runnable) obj2, (CountDownLatch) obj);
                return;
            case 22:
                TimeLimiter.m877xfbe0c504((TimeLimiter) obj2, (StartStopToken) obj);
                return;
            case 23:
                TransactionExecutor.m680xfbe0c504((Runnable) obj2, (TransactionExecutor) obj);
                return;
            case 24:
                TrustedWebActivityServiceConnectionPool.m28xfbe0c504((TrustedWebActivityServiceConnectionPool) obj2, (Uri) obj);
                return;
            case 25:
                ((VideoCapture) obj2).lambda$createPipeline$2((DeferrableSurface) obj);
                return;
            default:
                ViewTransition.m524xfbe0c504((ViewTransition) obj2, (View[]) obj);
                return;
        }
    }
}
