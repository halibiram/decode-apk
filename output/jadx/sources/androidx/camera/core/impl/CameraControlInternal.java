package androidx.camera.core.impl;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.CameraControl;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.FocusMeteringResult;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public interface CameraControlInternal extends CameraControl {

    @NonNull
    public static final CameraControlInternal DEFAULT_EMPTY_INSTANCE = new CameraControlInternal() { // from class: androidx.camera.core.impl.CameraControlInternal.2
        @Override // androidx.camera.core.impl.CameraControlInternal
        public void addInteropConfig(@NonNull Config config2) {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public void addZslConfig(@NonNull SessionConfig.Builder builder) {
        }

        @Override // androidx.camera.core.CameraControl
        @NonNull
        public ListenableFuture<Void> cancelFocusAndMetering() {
            return Futures.immediateFuture(null);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public void clearInteropConfig() {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final /* synthetic */ void decrementVideoUsage() {
            CC.m251xfbe0c504(this);
        }

        @Override // androidx.camera.core.CameraControl
        @NonNull
        public ListenableFuture<Void> enableTorch(boolean z) {
            return Futures.immediateFuture(null);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final /* synthetic */ ListenableFuture getCameraCapturePipelineAsync(int i, int i2) {
            return CC.m252x3271d0aa(this, i, i2);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public int getFlashMode() {
            return 2;
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final /* synthetic */ CameraControlInternal getImplementation() {
            return CC.m253x1378447b(this);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        @NonNull
        public Config getInteropConfig() {
            return null;
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        @NonNull
        public Rect getSensorRect() {
            return new Rect();
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        @NonNull
        public SessionConfig getSessionConfig() {
            return SessionConfig.defaultEmptySessionConfig();
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final /* synthetic */ void incrementVideoUsage() {
            CC.m254x75d576dc(this);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final /* synthetic */ boolean isInVideoUsage() {
            return CC.m255x9738a56c(this);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public boolean isZslDisabledByByUserCaseConfig() {
            return false;
        }

        @Override // androidx.camera.core.CameraControl
        @NonNull
        public ListenableFuture<Integer> setExposureCompensationIndex(int i) {
            return Futures.immediateFuture(0);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public void setFlashMode(int i) {
        }

        @Override // androidx.camera.core.CameraControl
        @NonNull
        public ListenableFuture<Void> setLinearZoom(float f) {
            return Futures.immediateFuture(null);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final /* synthetic */ void setScreenFlash(ImageCapture.ScreenFlash screenFlash) {
            CC.m256x9e171bf9(this, screenFlash);
        }

        @Override // androidx.camera.core.CameraControl
        @NonNull
        public ListenableFuture<Void> setZoomRatio(float f) {
            return Futures.immediateFuture(null);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public void setZslDisabledByUserCaseConfig(boolean z) {
        }

        @Override // androidx.camera.core.CameraControl
        @NonNull
        public ListenableFuture<FocusMeteringResult> startFocusAndMetering(@NonNull FocusMeteringAction focusMeteringAction) {
            return Futures.immediateFuture(FocusMeteringResult.emptyInstance());
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        @NonNull
        public ListenableFuture<List<Void>> submitStillCaptureRequests(@NonNull List<CaptureConfig> list, int i, int i2) {
            return Futures.immediateFuture(Collections.emptyList());
        }
    };

    /* loaded from: classes.dex */
    public interface ControlUpdateCallback {
        void onCameraControlCaptureRequests(@NonNull List<CaptureConfig> list);

        void onCameraControlUpdateSessionConfig();
    }

    void addInteropConfig(@NonNull Config config2);

    void addZslConfig(@NonNull SessionConfig.Builder builder);

    void clearInteropConfig();

    void decrementVideoUsage();

    @NonNull
    ListenableFuture<CameraCapturePipeline> getCameraCapturePipelineAsync(int i, int i2);

    int getFlashMode();

    @NonNull
    CameraControlInternal getImplementation();

    @NonNull
    Config getInteropConfig();

    @NonNull
    Rect getSensorRect();

    @NonNull
    SessionConfig getSessionConfig();

    void incrementVideoUsage();

    @VisibleForTesting
    boolean isInVideoUsage();

    boolean isZslDisabledByByUserCaseConfig();

    void setFlashMode(int i);

    void setScreenFlash(@Nullable ImageCapture.ScreenFlash screenFlash);

    void setZslDisabledByUserCaseConfig(boolean z);

    @NonNull
    ListenableFuture<List<Void>> submitStillCaptureRequests(@NonNull List<CaptureConfig> list, int i, int i2);

    /* loaded from: classes.dex */
    public static final class CameraControlException extends Exception {

        @NonNull
        private CameraCaptureFailure mCameraCaptureFailure;

        public CameraControlException(@NonNull CameraCaptureFailure cameraCaptureFailure) {
            this.mCameraCaptureFailure = cameraCaptureFailure;
        }

        @NonNull
        public CameraCaptureFailure getCameraCaptureFailure() {
            return this.mCameraCaptureFailure;
        }

        public CameraControlException(@NonNull CameraCaptureFailure cameraCaptureFailure, @NonNull Throwable th) {
            super(th);
            this.mCameraCaptureFailure = cameraCaptureFailure;
        }
    }

    /* renamed from: androidx.camera.core.impl.CameraControlInternal$-CC, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class CC {
        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public static ListenableFuture m252x3271d0aa(final CameraControlInternal cameraControlInternal, int i, int i2) {
            return Futures.immediateFuture(new CameraCapturePipeline() { // from class: androidx.camera.core.impl.CameraControlInternal.1
                @Override // androidx.camera.core.imagecapture.CameraCapturePipeline
                @NonNull
                public ListenableFuture<Void> invokePostCapture() {
                    return Futures.immediateFuture(null);
                }

                @Override // androidx.camera.core.imagecapture.CameraCapturePipeline
                @NonNull
                public ListenableFuture<Void> invokePreCapture() {
                    return Futures.immediateFuture(null);
                }
            });
        }

        /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
        public static boolean m255x9738a56c(CameraControlInternal cameraControlInternal) {
            return false;
        }

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public static void m251xfbe0c504(CameraControlInternal cameraControlInternal) {
        }

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
        public static CameraControlInternal m253x1378447b(CameraControlInternal cameraControlInternal) {
            return cameraControlInternal;
        }

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
        public static void m254x75d576dc(CameraControlInternal cameraControlInternal) {
        }

        /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
        public static void m256x9e171bf9(CameraControlInternal cameraControlInternal, ImageCapture.ScreenFlash screenFlash) {
        }
    }
}
