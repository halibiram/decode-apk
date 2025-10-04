package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureMetaData;
import j$.util.DesugarCollections;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;

/* loaded from: classes.dex */
public class ConvergenceUtils {
    private static final Set<CameraCaptureMetaData.AeState> AE_CONVERGED_STATE_SET;
    private static final Set<CameraCaptureMetaData.AeState> AE_TORCH_AS_FLASH_CONVERGED_STATE_SET;
    private static final Set<CameraCaptureMetaData.AfState> AF_CONVERGED_STATE_SET = DesugarCollections.unmodifiableSet(EnumSet.of(CameraCaptureMetaData.AfState.PASSIVE_FOCUSED, CameraCaptureMetaData.AfState.PASSIVE_NOT_FOCUSED, CameraCaptureMetaData.AfState.LOCKED_FOCUSED, CameraCaptureMetaData.AfState.LOCKED_NOT_FOCUSED));
    private static final Set<CameraCaptureMetaData.AwbState> AWB_CONVERGED_STATE_SET = DesugarCollections.unmodifiableSet(EnumSet.of(CameraCaptureMetaData.AwbState.CONVERGED, CameraCaptureMetaData.AwbState.UNKNOWN));
    private static final String TAG = "ConvergenceUtils";

    static {
        CameraCaptureMetaData.AeState aeState = CameraCaptureMetaData.AeState.CONVERGED;
        CameraCaptureMetaData.AeState aeState2 = CameraCaptureMetaData.AeState.FLASH_REQUIRED;
        CameraCaptureMetaData.AeState aeState3 = CameraCaptureMetaData.AeState.UNKNOWN;
        Set<CameraCaptureMetaData.AeState> unmodifiableSet = DesugarCollections.unmodifiableSet(EnumSet.of(aeState, aeState2, aeState3));
        AE_CONVERGED_STATE_SET = unmodifiableSet;
        EnumSet copyOf = EnumSet.copyOf((Collection) unmodifiableSet);
        copyOf.remove(aeState2);
        copyOf.remove(aeState3);
        AE_TORCH_AS_FLASH_CONVERGED_STATE_SET = DesugarCollections.unmodifiableSet(copyOf);
    }

    private ConvergenceUtils() {
    }

    public static boolean is3AConverged(@NonNull CameraCaptureResult cameraCaptureResult, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (cameraCaptureResult.getAfMode() != CameraCaptureMetaData.AfMode.OFF && cameraCaptureResult.getAfMode() != CameraCaptureMetaData.AfMode.UNKNOWN && !AF_CONVERGED_STATE_SET.contains(cameraCaptureResult.getAfState())) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (cameraCaptureResult.getAeMode() == CameraCaptureMetaData.AeMode.OFF) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z ? !(z3 || AE_CONVERGED_STATE_SET.contains(cameraCaptureResult.getAeState())) : !(z3 || AE_TORCH_AS_FLASH_CONVERGED_STATE_SET.contains(cameraCaptureResult.getAeState()))) {
            z4 = false;
        } else {
            z4 = true;
        }
        if (cameraCaptureResult.getAwbMode() == CameraCaptureMetaData.AwbMode.OFF || AWB_CONVERGED_STATE_SET.contains(cameraCaptureResult.getAwbState())) {
            z5 = true;
        } else {
            z5 = false;
        }
        Logger.d(TAG, "checkCaptureResult, AE=" + cameraCaptureResult.getAeState() + " AF =" + cameraCaptureResult.getAfState() + " AWB=" + cameraCaptureResult.getAwbState());
        if (z2 && z4 && z5) {
            return true;
        }
        return false;
    }
}
