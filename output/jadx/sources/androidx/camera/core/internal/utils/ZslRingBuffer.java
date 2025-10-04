package androidx.camera.core.internal.utils;

import androidx.annotation.NonNull;
import androidx.camera.core.ImageInfo;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.CameraCaptureMetaData;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraCaptureResults;
import androidx.camera.core.internal.utils.RingBuffer;

/* loaded from: classes.dex */
public final class ZslRingBuffer extends ArrayRingBuffer<ImageProxy> {
    public ZslRingBuffer(int i, @NonNull RingBuffer.OnRemoveCallback<ImageProxy> onRemoveCallback) {
        super(i, onRemoveCallback);
    }

    private boolean isValidZslFrame(@NonNull ImageInfo imageInfo) {
        CameraCaptureResult retrieveCameraCaptureResult = CameraCaptureResults.retrieveCameraCaptureResult(imageInfo);
        if ((retrieveCameraCaptureResult.getAfState() != CameraCaptureMetaData.AfState.LOCKED_FOCUSED && retrieveCameraCaptureResult.getAfState() != CameraCaptureMetaData.AfState.PASSIVE_FOCUSED) || retrieveCameraCaptureResult.getAeState() != CameraCaptureMetaData.AeState.CONVERGED || retrieveCameraCaptureResult.getAwbState() != CameraCaptureMetaData.AwbState.CONVERGED) {
            return false;
        }
        return true;
    }

    @Override // androidx.camera.core.internal.utils.ArrayRingBuffer, androidx.camera.core.internal.utils.RingBuffer
    public void enqueue(@NonNull ImageProxy imageProxy) {
        if (isValidZslFrame(imageProxy.getImageInfo())) {
            super.enqueue((ZslRingBuffer) imageProxy);
        } else {
            this.mOnRemoveCallback.onRemove(imageProxy);
        }
    }
}
