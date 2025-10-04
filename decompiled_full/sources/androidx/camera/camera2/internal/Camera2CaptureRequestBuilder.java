package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.camera.camera2.internal.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.StreamSpec;
import defpackage.AbstractC1064x6e5ec593;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Camera2CaptureRequestBuilder {
    private static final String TAG = "Camera2CaptureRequestBuilder";

    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class Api23Impl {
        private Api23Impl() {
        }

        public static CaptureRequest.Builder createReprocessCaptureRequest(@NonNull CameraDevice cameraDevice, @NonNull TotalCaptureResult totalCaptureResult) {
            return cameraDevice.createReprocessCaptureRequest(totalCaptureResult);
        }
    }

    private Camera2CaptureRequestBuilder() {
    }

    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    private static void applyAeFpsRange(@NonNull CaptureConfig captureConfig, @NonNull CaptureRequest.Builder builder) {
        if (!captureConfig.getExpectedFrameRateRange().equals(StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
            builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, captureConfig.getExpectedFrameRateRange());
        }
    }

    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    private static void applyImplementationOptionToCaptureBuilder(CaptureRequest.Builder builder, Config config2) {
        CaptureRequestOptions build = CaptureRequestOptions.Builder.from(config2).build();
        build.getClass();
        for (Config.Option option : AbstractC1064x6e5ec593.m3778x9738a56c(build)) {
            CaptureRequest.Key key = (CaptureRequest.Key) option.getToken();
            try {
                builder.set(key, AbstractC1064x6e5ec593.m3779x9e171bf9(build, option));
            } catch (IllegalArgumentException unused) {
                Logger.e(TAG, "CaptureRequest.Key is not supported: " + key);
            }
        }
    }

    private static void applyTemplateParamsOverrideWorkaround(@NonNull CaptureRequest.Builder builder, int i, @NonNull TemplateParamsOverride templateParamsOverride) {
        for (Map.Entry<CaptureRequest.Key<?>, Object> entry : templateParamsOverride.getOverrideParams(i).entrySet()) {
            builder.set(entry.getKey(), entry.getValue());
        }
    }

    @VisibleForTesting
    public static void applyVideoStabilization(@NonNull CaptureConfig captureConfig, @NonNull CaptureRequest.Builder builder) {
        if (captureConfig.getPreviewStabilizationMode() != 1 && captureConfig.getVideoStabilizationMode() != 1) {
            if (captureConfig.getPreviewStabilizationMode() == 2) {
                builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 2);
                return;
            } else {
                if (captureConfig.getVideoStabilizationMode() == 2) {
                    builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 1);
                    return;
                }
                return;
            }
        }
        builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 0);
    }

    @Nullable
    public static CaptureRequest build(@NonNull CaptureConfig captureConfig, @Nullable CameraDevice cameraDevice, @NonNull Map<DeferrableSurface, Surface> map, boolean z, @NonNull TemplateParamsOverride templateParamsOverride) {
        CaptureRequest.Builder createCaptureRequest;
        int i;
        if (cameraDevice == null) {
            return null;
        }
        List<Surface> configuredSurfaces = getConfiguredSurfaces(captureConfig.getSurfaces(), map);
        if (configuredSurfaces.isEmpty()) {
            return null;
        }
        CameraCaptureResult cameraCaptureResult = captureConfig.getCameraCaptureResult();
        if (Build.VERSION.SDK_INT >= 23 && captureConfig.getTemplateType() == 5 && cameraCaptureResult != null && (cameraCaptureResult.getCaptureResult() instanceof TotalCaptureResult)) {
            Logger.d(TAG, "createReprocessCaptureRequest");
            createCaptureRequest = Api23Impl.createReprocessCaptureRequest(cameraDevice, (TotalCaptureResult) cameraCaptureResult.getCaptureResult());
        } else {
            Logger.d(TAG, "createCaptureRequest");
            if (captureConfig.getTemplateType() == 5) {
                if (z) {
                    i = 1;
                } else {
                    i = 2;
                }
                createCaptureRequest = cameraDevice.createCaptureRequest(i);
            } else {
                createCaptureRequest = cameraDevice.createCaptureRequest(captureConfig.getTemplateType());
            }
        }
        applyTemplateParamsOverrideWorkaround(createCaptureRequest, captureConfig.getTemplateType(), templateParamsOverride);
        applyAeFpsRange(captureConfig, createCaptureRequest);
        applyVideoStabilization(captureConfig, createCaptureRequest);
        Config implementationOptions = captureConfig.getImplementationOptions();
        Config.Option<Integer> option = CaptureConfig.OPTION_ROTATION;
        if (implementationOptions.containsOption(option)) {
            createCaptureRequest.set(CaptureRequest.JPEG_ORIENTATION, (Integer) captureConfig.getImplementationOptions().retrieveOption(option));
        }
        Config implementationOptions2 = captureConfig.getImplementationOptions();
        Config.Option<Integer> option2 = CaptureConfig.OPTION_JPEG_QUALITY;
        if (implementationOptions2.containsOption(option2)) {
            createCaptureRequest.set(CaptureRequest.JPEG_QUALITY, Byte.valueOf(((Integer) captureConfig.getImplementationOptions().retrieveOption(option2)).byteValue()));
        }
        applyImplementationOptionToCaptureBuilder(createCaptureRequest, captureConfig.getImplementationOptions());
        Iterator<Surface> it = configuredSurfaces.iterator();
        while (it.hasNext()) {
            createCaptureRequest.addTarget(it.next());
        }
        createCaptureRequest.setTag(captureConfig.getTagBundle());
        return createCaptureRequest.build();
    }

    @Nullable
    public static CaptureRequest buildWithoutTarget(@NonNull CaptureConfig captureConfig, @Nullable CameraDevice cameraDevice, @NonNull TemplateParamsOverride templateParamsOverride) {
        if (cameraDevice == null) {
            return null;
        }
        Logger.d(TAG, "template type = " + captureConfig.getTemplateType());
        CaptureRequest.Builder createCaptureRequest = cameraDevice.createCaptureRequest(captureConfig.getTemplateType());
        applyTemplateParamsOverrideWorkaround(createCaptureRequest, captureConfig.getTemplateType(), templateParamsOverride);
        applyImplementationOptionToCaptureBuilder(createCaptureRequest, captureConfig.getImplementationOptions());
        return createCaptureRequest.build();
    }

    @NonNull
    private static List<Surface> getConfiguredSurfaces(List<DeferrableSurface> list, Map<DeferrableSurface, Surface> map) {
        ArrayList arrayList = new ArrayList();
        Iterator<DeferrableSurface> it = list.iterator();
        while (it.hasNext()) {
            Surface surface = map.get(it.next());
            if (surface != null) {
                arrayList.add(surface);
            } else {
                throw new IllegalArgumentException("DeferrableSurface not in configuredSurfaceMap");
            }
        }
        return arrayList;
    }
}
