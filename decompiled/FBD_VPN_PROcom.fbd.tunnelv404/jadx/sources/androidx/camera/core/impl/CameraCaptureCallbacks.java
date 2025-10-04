package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class CameraCaptureCallbacks {

    /* loaded from: classes.dex */
    public static final class ComboCameraCaptureCallback extends CameraCaptureCallback {
        private final List<CameraCaptureCallback> mCallbacks = new ArrayList();

        public ComboCameraCaptureCallback(@NonNull List<CameraCaptureCallback> list) {
            for (CameraCaptureCallback cameraCaptureCallback : list) {
                if (!(cameraCaptureCallback instanceof NoOpCameraCaptureCallback)) {
                    this.mCallbacks.add(cameraCaptureCallback);
                }
            }
        }

        @NonNull
        public List<CameraCaptureCallback> getCallbacks() {
            return this.mCallbacks;
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCancelled(int i) {
            Iterator<CameraCaptureCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onCaptureCancelled(i);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
            Iterator<CameraCaptureCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onCaptureCompleted(i, cameraCaptureResult);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureFailed(int i, @NonNull CameraCaptureFailure cameraCaptureFailure) {
            Iterator<CameraCaptureCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onCaptureFailed(i, cameraCaptureFailure);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureProcessProgressed(int i, int i2) {
            Iterator<CameraCaptureCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onCaptureProcessProgressed(i, i2);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureStarted(int i) {
            Iterator<CameraCaptureCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onCaptureStarted(i);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class NoOpCameraCaptureCallback extends CameraCaptureCallback {
        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureFailed(int i, @NonNull CameraCaptureFailure cameraCaptureFailure) {
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureStarted(int i) {
        }
    }

    private CameraCaptureCallbacks() {
    }

    @NonNull
    public static CameraCaptureCallback createComboCallback(@NonNull List<CameraCaptureCallback> list) {
        if (list.isEmpty()) {
            return createNoOpCallback();
        }
        if (list.size() == 1) {
            return list.get(0);
        }
        return new ComboCameraCaptureCallback(list);
    }

    @NonNull
    public static CameraCaptureCallback createNoOpCallback() {
        return new NoOpCameraCaptureCallback();
    }

    @NonNull
    public static CameraCaptureCallback createComboCallback(@NonNull CameraCaptureCallback... cameraCaptureCallbackArr) {
        return createComboCallback((List<CameraCaptureCallback>) Arrays.asList(cameraCaptureCallbackArr));
    }
}
