package androidx.camera.video.internal.encoder;

import androidx.annotation.NonNull;
import defpackage.AbstractC0702x4f069aa2;

/* loaded from: classes.dex */
public interface EncoderCallback {
    public static final EncoderCallback EMPTY = new EncoderCallback() { // from class: androidx.camera.video.internal.encoder.EncoderCallback.1
        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodeError(@NonNull EncodeException encodeException) {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public final /* synthetic */ void onEncodePaused() {
            AbstractC0702x4f069aa2.m3310xfbe0c504(this);
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodeStart() {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodeStop() {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodedData(@NonNull EncodedData encodedData) {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onOutputConfigUpdate(@NonNull OutputConfig outputConfig) {
        }
    };

    void onEncodeError(@NonNull EncodeException encodeException);

    void onEncodePaused();

    void onEncodeStart();

    void onEncodeStop();

    void onEncodedData(@NonNull EncodedData encodedData);

    void onOutputConfigUpdate(@NonNull OutputConfig outputConfig);
}
