package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.camera.core.impl.CaptureConfig;

/* loaded from: classes.dex */
public interface CaptureStage {

    /* loaded from: classes.dex */
    public static final class DefaultCaptureStage implements CaptureStage {
        private final CaptureConfig mCaptureConfig = new CaptureConfig.Builder().build();

        @Override // androidx.camera.core.impl.CaptureStage
        @NonNull
        public CaptureConfig getCaptureConfig() {
            return this.mCaptureConfig;
        }

        @Override // androidx.camera.core.impl.CaptureStage
        public int getId() {
            return 0;
        }
    }

    @NonNull
    CaptureConfig getCaptureConfig();

    int getId();
}
