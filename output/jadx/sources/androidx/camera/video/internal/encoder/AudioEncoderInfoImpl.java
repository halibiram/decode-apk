package androidx.camera.video.internal.encoder;

import android.media.MediaCodecInfo;
import android.util.Range;
import androidx.annotation.NonNull;
import androidx.camera.video.internal.utils.CodecUtil;
import j$.util.Objects;

/* loaded from: classes.dex */
public class AudioEncoderInfoImpl extends EncoderInfoImpl implements AudioEncoderInfo {
    private final MediaCodecInfo.AudioCapabilities mAudioCapabilities;

    public AudioEncoderInfoImpl(@NonNull MediaCodecInfo mediaCodecInfo, @NonNull String str) {
        super(mediaCodecInfo, str);
        MediaCodecInfo.AudioCapabilities audioCapabilities = this.mCodecCapabilities.getAudioCapabilities();
        Objects.requireNonNull(audioCapabilities);
        this.mAudioCapabilities = audioCapabilities;
    }

    @NonNull
    public static AudioEncoderInfoImpl from(@NonNull AudioEncoderConfig audioEncoderConfig) {
        return new AudioEncoderInfoImpl(CodecUtil.findCodecAndGetCodecInfo(audioEncoderConfig), audioEncoderConfig.getMimeType());
    }

    @Override // androidx.camera.video.internal.encoder.AudioEncoderInfo
    @NonNull
    public Range<Integer> getBitrateRange() {
        return this.mAudioCapabilities.getBitrateRange();
    }
}
