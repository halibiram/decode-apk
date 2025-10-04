package androidx.camera.video.internal.encoder;

import android.media.MediaCodecInfo;
import android.util.Range;
import androidx.annotation.NonNull;
import androidx.arch.core.util.Function;
import androidx.camera.core.Logger;
import androidx.camera.video.internal.utils.CodecUtil;
import androidx.camera.video.internal.workaround.VideoEncoderInfoWrapper;
import defpackage.AbstractC1282x6dc50a4c;
import defpackage.C0667x7214e6ee;
import j$.util.Objects;

/* loaded from: classes.dex */
public class VideoEncoderInfoImpl extends EncoderInfoImpl implements VideoEncoderInfo {

    @NonNull
    public static final Function<VideoEncoderConfig, VideoEncoderInfo> FINDER = new C0667x7214e6ee(4);
    private static final String TAG = "VideoEncoderInfoImpl";
    private final MediaCodecInfo.VideoCapabilities mVideoCapabilities;

    public VideoEncoderInfoImpl(@NonNull MediaCodecInfo mediaCodecInfo, @NonNull String str) {
        super(mediaCodecInfo, str);
        MediaCodecInfo.VideoCapabilities videoCapabilities = this.mCodecCapabilities.getVideoCapabilities();
        Objects.requireNonNull(videoCapabilities);
        this.mVideoCapabilities = videoCapabilities;
    }

    @NonNull
    public static VideoEncoderInfoImpl from(@NonNull VideoEncoderConfig videoEncoderConfig) {
        return new VideoEncoderInfoImpl(CodecUtil.findCodecAndGetCodecInfo(videoEncoderConfig), videoEncoderConfig.getMimeType());
    }

    public static /* synthetic */ VideoEncoderInfo lambda$static$0(VideoEncoderConfig videoEncoderConfig) {
        try {
            return VideoEncoderInfoWrapper.from(from(videoEncoderConfig), null);
        } catch (InvalidConfigException e) {
            Logger.w(TAG, "Unable to find a VideoEncoderInfoImpl", e);
            return null;
        }
    }

    @NonNull
    private static IllegalArgumentException toIllegalArgumentException(@NonNull Throwable th) {
        if (th instanceof IllegalArgumentException) {
            return (IllegalArgumentException) th;
        }
        return new IllegalArgumentException(th);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean canSwapWidthHeight() {
        return true;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getHeightAlignment() {
        return this.mVideoCapabilities.getHeightAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    @NonNull
    public Range<Integer> getSupportedBitrateRange() {
        return this.mVideoCapabilities.getBitrateRange();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    @NonNull
    public Range<Integer> getSupportedHeights() {
        return this.mVideoCapabilities.getSupportedHeights();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    @NonNull
    public Range<Integer> getSupportedHeightsFor(int i) {
        try {
            return this.mVideoCapabilities.getSupportedHeightsFor(i);
        } catch (Throwable th) {
            throw toIllegalArgumentException(th);
        }
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    @NonNull
    public Range<Integer> getSupportedWidths() {
        return this.mVideoCapabilities.getSupportedWidths();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    @NonNull
    public Range<Integer> getSupportedWidthsFor(int i) {
        try {
            return this.mVideoCapabilities.getSupportedWidthsFor(i);
        } catch (Throwable th) {
            throw toIllegalArgumentException(th);
        }
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getWidthAlignment() {
        return this.mVideoCapabilities.getWidthAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean isSizeSupported(int i, int i2) {
        return this.mVideoCapabilities.isSizeSupported(i, i2);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final /* synthetic */ boolean isSizeSupportedAllowSwapping(int i, int i2) {
        return AbstractC1282x6dc50a4c.m4260xfbe0c504(this, i, i2);
    }
}
