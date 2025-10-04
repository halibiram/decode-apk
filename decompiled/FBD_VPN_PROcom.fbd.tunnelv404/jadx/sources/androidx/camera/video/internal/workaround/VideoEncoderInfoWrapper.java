package androidx.camera.video.internal.workaround;

import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.Logger;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.MediaCodecInfoReportIncorrectInfoQuirk;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.core.util.Preconditions;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC1282x6dc50a4c;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class VideoEncoderInfoWrapper implements VideoEncoderInfo {
    private static final int HEIGHT_4KDCI = 2160;
    private static final String TAG = "VideoEncoderInfoWrapper";
    private static final int WIDTH_4KDCI = 4096;
    private final Set<Size> mExtraSupportedSizes;
    private final Range<Integer> mSupportedHeights;
    private final Range<Integer> mSupportedWidths;
    private final VideoEncoderInfo mVideoEncoderInfo;

    private VideoEncoderInfoWrapper(@NonNull VideoEncoderInfo videoEncoderInfo) {
        HashSet hashSet = new HashSet();
        this.mExtraSupportedSizes = hashSet;
        this.mVideoEncoderInfo = videoEncoderInfo;
        int widthAlignment = videoEncoderInfo.getWidthAlignment();
        this.mSupportedWidths = Range.create(Integer.valueOf(widthAlignment), Integer.valueOf(((int) Math.ceil(4096.0d / widthAlignment)) * widthAlignment));
        int heightAlignment = videoEncoderInfo.getHeightAlignment();
        this.mSupportedHeights = Range.create(Integer.valueOf(heightAlignment), Integer.valueOf(((int) Math.ceil(2160.0d / heightAlignment)) * heightAlignment));
        hashSet.addAll(MediaCodecInfoReportIncorrectInfoQuirk.getExtraSupportedSizes());
    }

    private void addExtraSupportedSize(@NonNull Size size) {
        this.mExtraSupportedSizes.add(size);
    }

    @NonNull
    public static VideoEncoderInfo from(@NonNull VideoEncoderInfo videoEncoderInfo, @Nullable Size size) {
        if (!(videoEncoderInfo instanceof VideoEncoderInfoWrapper)) {
            if (DeviceQuirks.get(MediaCodecInfoReportIncorrectInfoQuirk.class) == null) {
                if (size != null && !videoEncoderInfo.isSizeSupportedAllowSwapping(size.getWidth(), size.getHeight())) {
                    Logger.w(TAG, "Detected that the device does not support a size " + size + " that should be valid in widths/heights = " + videoEncoderInfo.getSupportedWidths() + "/" + videoEncoderInfo.getSupportedHeights());
                }
            }
            videoEncoderInfo = new VideoEncoderInfoWrapper(videoEncoderInfo);
        }
        if (size != null && (videoEncoderInfo instanceof VideoEncoderInfoWrapper)) {
            ((VideoEncoderInfoWrapper) videoEncoderInfo).addExtraSupportedSize(size);
        }
        return videoEncoderInfo;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean canSwapWidthHeight() {
        return this.mVideoEncoderInfo.canSwapWidthHeight();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getHeightAlignment() {
        return this.mVideoEncoderInfo.getHeightAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.EncoderInfo
    @NonNull
    public String getName() {
        return this.mVideoEncoderInfo.getName();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    @NonNull
    public Range<Integer> getSupportedBitrateRange() {
        return this.mVideoEncoderInfo.getSupportedBitrateRange();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    @NonNull
    public Range<Integer> getSupportedHeights() {
        return this.mSupportedHeights;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    @NonNull
    public Range<Integer> getSupportedHeightsFor(int i) {
        boolean z;
        if (this.mSupportedWidths.contains((Range<Integer>) Integer.valueOf(i)) && i % this.mVideoEncoderInfo.getWidthAlignment() == 0) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Not supported width: ", " which is not in ");
        m2939xab142723.append(this.mSupportedWidths);
        m2939xab142723.append(" or can not be divided by alignment ");
        m2939xab142723.append(this.mVideoEncoderInfo.getWidthAlignment());
        Preconditions.checkArgument(z, m2939xab142723.toString());
        return this.mSupportedHeights;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    @NonNull
    public Range<Integer> getSupportedWidths() {
        return this.mSupportedWidths;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    @NonNull
    public Range<Integer> getSupportedWidthsFor(int i) {
        boolean z;
        if (this.mSupportedHeights.contains((Range<Integer>) Integer.valueOf(i)) && i % this.mVideoEncoderInfo.getHeightAlignment() == 0) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Not supported height: ", " which is not in ");
        m2939xab142723.append(this.mSupportedHeights);
        m2939xab142723.append(" or can not be divided by alignment ");
        m2939xab142723.append(this.mVideoEncoderInfo.getHeightAlignment());
        Preconditions.checkArgument(z, m2939xab142723.toString());
        return this.mSupportedWidths;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getWidthAlignment() {
        return this.mVideoEncoderInfo.getWidthAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean isSizeSupported(int i, int i2) {
        if (this.mVideoEncoderInfo.isSizeSupported(i, i2)) {
            return true;
        }
        for (Size size : this.mExtraSupportedSizes) {
            if (size.getWidth() == i && size.getHeight() == i2) {
                return true;
            }
        }
        if (this.mSupportedWidths.contains((Range<Integer>) Integer.valueOf(i)) && this.mSupportedHeights.contains((Range<Integer>) Integer.valueOf(i2)) && i % this.mVideoEncoderInfo.getWidthAlignment() == 0 && i2 % this.mVideoEncoderInfo.getHeightAlignment() == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final /* synthetic */ boolean isSizeSupportedAllowSwapping(int i, int i2) {
        return AbstractC1282x6dc50a4c.m4260xfbe0c504(this, i, i2);
    }
}
