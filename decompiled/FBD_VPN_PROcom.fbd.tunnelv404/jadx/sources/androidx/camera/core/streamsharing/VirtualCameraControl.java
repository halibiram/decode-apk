package androidx.camera.core.streamsharing;

import androidx.annotation.NonNull;
import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.ForwardingCameraControl;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.camera.core.streamsharing.VirtualCameraControl;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C1293xadddf3fb;
import j$.util.Objects;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class VirtualCameraControl extends ForwardingCameraControl {
    private static final int DEFAULT_JPEG_QUALITY = 100;
    private static final int DEFAULT_ROTATION_DEGREES = 0;
    private final StreamSharing.Control mStreamSharingControl;

    public VirtualCameraControl(@NonNull CameraControlInternal cameraControlInternal, @NonNull StreamSharing.Control control) {
        super(cameraControlInternal);
        this.mStreamSharingControl = control;
    }

    private int getJpegQuality(@NonNull CaptureConfig captureConfig) {
        Integer num = (Integer) captureConfig.getImplementationOptions().retrieveOption(CaptureConfig.OPTION_JPEG_QUALITY, 100);
        Objects.requireNonNull(num);
        return num.intValue();
    }

    private int getRotationDegrees(@NonNull CaptureConfig captureConfig) {
        Integer num = (Integer) captureConfig.getImplementationOptions().retrieveOption(CaptureConfig.OPTION_ROTATION, 0);
        Objects.requireNonNull(num);
        return num.intValue();
    }

    public static /* synthetic */ ListenableFuture lambda$submitStillCaptureRequests$0(ListenableFuture listenableFuture, CameraCapturePipeline cameraCapturePipeline) {
        return ((CameraCapturePipeline) listenableFuture.get()).invokePreCapture();
    }

    public /* synthetic */ ListenableFuture lambda$submitStillCaptureRequests$1(List list, Void r4) {
        return this.mStreamSharingControl.jpegSnapshot(getJpegQuality((CaptureConfig) list.get(0)), getRotationDegrees((CaptureConfig) list.get(0)));
    }

    public static /* synthetic */ ListenableFuture lambda$submitStillCaptureRequests$2(ListenableFuture listenableFuture, Void r1) {
        return ((CameraCapturePipeline) listenableFuture.get()).invokePostCapture();
    }

    @Override // androidx.camera.core.impl.ForwardingCameraControl, androidx.camera.core.impl.CameraControlInternal
    @NonNull
    public ListenableFuture<List<Void>> submitStillCaptureRequests(@NonNull final List<CaptureConfig> list, int i, int i2) {
        boolean z = true;
        if (list.size() != 1) {
            z = false;
        }
        Preconditions.checkArgument(z, "Only support one capture config.");
        ListenableFuture<CameraCapturePipeline> cameraCapturePipelineAsync = getCameraCapturePipelineAsync(i, i2);
        return Futures.allAsList(Collections.singletonList(FutureChain.from(cameraCapturePipelineAsync).transformAsync(new C1293xadddf3fb(cameraCapturePipelineAsync, 0), CameraXExecutors.directExecutor()).transformAsync(new AsyncFunction() { // from class: 땲돠따돠뎰딄돸돰땟둥둬딞딅뒀딅돼딤땀땬땀딻딨땪둡돰땪딝딠뒾딎땟땍둣딎뒀돷뒵딜딹뎡둬뒹뒼땳되뎬뒾뒐디듻딤듬딟땮땲땥둔땄듌돛돼들따두딻땮땹듨돤땫땋딅땐땍딐뎻되될둥둣되될따둘돠듽둬땮된뒀딝땔듔땐둡뒝뒋땻땩땮돠됨뒈딀딅딟땃둠뒬돸딸딌됐돤듐뒷땁듻뒹도딽든딠드딨듻땧뒨돛둬
            @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                ListenableFuture lambda$submitStillCaptureRequests$1;
                lambda$submitStillCaptureRequests$1 = VirtualCameraControl.this.lambda$submitStillCaptureRequests$1(list, (Void) obj);
                return lambda$submitStillCaptureRequests$1;
            }
        }, CameraXExecutors.directExecutor()).transformAsync(new C1293xadddf3fb(cameraCapturePipelineAsync, 1), CameraXExecutors.directExecutor())));
    }
}
