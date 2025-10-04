package androidx.camera.core.impl;

import android.hardware.camera2.CaptureResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.impl.CameraCaptureMetaData;
import androidx.camera.core.impl.utils.ExifData;
import defpackage.AbstractC0496x71528f20;

/* loaded from: classes.dex */
public interface CameraCaptureResult {

    /* loaded from: classes.dex */
    public static final class EmptyCameraCaptureResult implements CameraCaptureResult {
        @NonNull
        public static CameraCaptureResult create() {
            return new EmptyCameraCaptureResult();
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        @NonNull
        public CameraCaptureMetaData.AeMode getAeMode() {
            return CameraCaptureMetaData.AeMode.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        @NonNull
        public CameraCaptureMetaData.AeState getAeState() {
            return CameraCaptureMetaData.AeState.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        @NonNull
        public CameraCaptureMetaData.AfMode getAfMode() {
            return CameraCaptureMetaData.AfMode.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        @NonNull
        public CameraCaptureMetaData.AfState getAfState() {
            return CameraCaptureMetaData.AfState.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        @NonNull
        public CameraCaptureMetaData.AwbMode getAwbMode() {
            return CameraCaptureMetaData.AwbMode.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        @NonNull
        public CameraCaptureMetaData.AwbState getAwbState() {
            return CameraCaptureMetaData.AwbState.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        @Nullable
        public CaptureResult getCaptureResult() {
            return null;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        @NonNull
        public CameraCaptureMetaData.FlashState getFlashState() {
            return CameraCaptureMetaData.FlashState.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        @NonNull
        public TagBundle getTagBundle() {
            return TagBundle.emptyBundle();
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public long getTimestamp() {
            return -1L;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public final /* synthetic */ void populateExifData(ExifData.Builder builder) {
            AbstractC0496x71528f20.m3121x3271d0aa(this, builder);
        }
    }

    @NonNull
    CameraCaptureMetaData.AeMode getAeMode();

    @NonNull
    CameraCaptureMetaData.AeState getAeState();

    @NonNull
    CameraCaptureMetaData.AfMode getAfMode();

    @NonNull
    CameraCaptureMetaData.AfState getAfState();

    @NonNull
    CameraCaptureMetaData.AwbMode getAwbMode();

    @NonNull
    CameraCaptureMetaData.AwbState getAwbState();

    @Nullable
    CaptureResult getCaptureResult();

    @NonNull
    CameraCaptureMetaData.FlashState getFlashState();

    @NonNull
    TagBundle getTagBundle();

    long getTimestamp();

    void populateExifData(@NonNull ExifData.Builder builder);
}
