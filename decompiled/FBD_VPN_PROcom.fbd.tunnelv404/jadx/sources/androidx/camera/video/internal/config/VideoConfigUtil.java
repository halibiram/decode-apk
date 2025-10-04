package androidx.camera.video.internal.config;

import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.MediaSpec;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.config.VideoMimeInfo;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.encoder.VideoEncoderDataSpace;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import androidx.core.util.Preconditions;
import androidx.core.util.Supplier;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class VideoConfigUtil {
    private static final Timebase DEFAULT_TIME_BASE;
    private static final Map<String, Map<Integer, VideoEncoderDataSpace>> MIME_TO_DATA_SPACE_MAP;
    private static final String TAG = "VideoConfigUtil";

    static {
        HashMap hashMap = new HashMap();
        MIME_TO_DATA_SPACE_MAP = hashMap;
        DEFAULT_TIME_BASE = Timebase.UPTIME;
        HashMap hashMap2 = new HashMap();
        VideoEncoderDataSpace videoEncoderDataSpace = VideoEncoderDataSpace.ENCODER_DATA_SPACE_UNSPECIFIED;
        hashMap2.put(1, videoEncoderDataSpace);
        VideoEncoderDataSpace videoEncoderDataSpace2 = VideoEncoderDataSpace.ENCODER_DATA_SPACE_BT2020_HLG;
        hashMap2.put(2, videoEncoderDataSpace2);
        VideoEncoderDataSpace videoEncoderDataSpace3 = VideoEncoderDataSpace.ENCODER_DATA_SPACE_BT2020_PQ;
        hashMap2.put(4096, videoEncoderDataSpace3);
        hashMap2.put(8192, videoEncoderDataSpace3);
        HashMap hashMap3 = new HashMap();
        hashMap3.put(1, videoEncoderDataSpace);
        hashMap3.put(2, videoEncoderDataSpace2);
        hashMap3.put(4096, videoEncoderDataSpace3);
        hashMap3.put(8192, videoEncoderDataSpace3);
        HashMap hashMap4 = new HashMap();
        hashMap4.put(1, videoEncoderDataSpace);
        hashMap4.put(4, videoEncoderDataSpace2);
        hashMap4.put(4096, videoEncoderDataSpace3);
        hashMap4.put(16384, videoEncoderDataSpace3);
        hashMap4.put(2, videoEncoderDataSpace);
        hashMap4.put(8, videoEncoderDataSpace2);
        hashMap4.put(8192, videoEncoderDataSpace3);
        hashMap4.put(32768, videoEncoderDataSpace3);
        HashMap hashMap5 = new HashMap();
        hashMap5.put(256, videoEncoderDataSpace2);
        hashMap5.put(512, VideoEncoderDataSpace.ENCODER_DATA_SPACE_BT709);
        hashMap.put("video/hevc", hashMap2);
        hashMap.put("video/av01", hashMap3);
        hashMap.put("video/x-vnd.on2.vp9", hashMap4);
        hashMap.put("video/dolby-vision", hashMap5);
    }

    private VideoConfigUtil() {
    }

    @NonNull
    private static String getDynamicRangeDefaultMime(@NonNull DynamicRange dynamicRange) {
        int encoding = dynamicRange.getEncoding();
        if (encoding != 1) {
            if (encoding != 3 && encoding != 4 && encoding != 5) {
                if (encoding == 6) {
                    return "video/dolby-vision";
                }
                throw new UnsupportedOperationException("Unsupported dynamic range: " + dynamicRange + "\nNo supported default mime type available.");
            }
            return "video/hevc";
        }
        return "video/avc";
    }

    @NonNull
    public static VideoEncoderDataSpace mimeAndProfileToEncoderDataSpace(@NonNull String str, int i) {
        VideoEncoderDataSpace videoEncoderDataSpace;
        Map<Integer, VideoEncoderDataSpace> map = MIME_TO_DATA_SPACE_MAP.get(str);
        if (map != null && (videoEncoderDataSpace = map.get(Integer.valueOf(i))) != null) {
            return videoEncoderDataSpace;
        }
        Logger.w(TAG, String.format("Unsupported mime type %s or profile level %d. Data space is unspecified.", str, Integer.valueOf(i)));
        return VideoEncoderDataSpace.ENCODER_DATA_SPACE_UNSPECIFIED;
    }

    @NonNull
    public static VideoEncoderConfig resolveVideoEncoderConfig(@NonNull VideoMimeInfo videoMimeInfo, @NonNull Timebase timebase, @NonNull VideoSpec videoSpec, @NonNull Size size, @NonNull DynamicRange dynamicRange, @NonNull Range<Integer> range) {
        Supplier videoEncoderConfigDefaultResolver;
        EncoderProfilesProxy.VideoProfileProxy compatibleVideoProfile = videoMimeInfo.getCompatibleVideoProfile();
        if (compatibleVideoProfile != null) {
            videoEncoderConfigDefaultResolver = new VideoEncoderConfigVideoProfileResolver(videoMimeInfo.getMimeType(), timebase, videoSpec, size, compatibleVideoProfile, dynamicRange, range);
        } else {
            videoEncoderConfigDefaultResolver = new VideoEncoderConfigDefaultResolver(videoMimeInfo.getMimeType(), timebase, videoSpec, size, dynamicRange, range);
        }
        return (VideoEncoderConfig) videoEncoderConfigDefaultResolver.get();
    }

    @NonNull
    public static VideoMimeInfo resolveVideoMimeInfo(@NonNull MediaSpec mediaSpec, @NonNull DynamicRange dynamicRange, @Nullable VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy) {
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxy;
        Preconditions.checkState(dynamicRange.isFullySpecified(), "Dynamic range must be a fully specified dynamic range [provided dynamic range: " + dynamicRange + "]");
        String outputFormatToVideoMime = MediaSpec.outputFormatToVideoMime(mediaSpec.getOutputFormat());
        if (videoValidatedEncoderProfilesProxy != null) {
            Set<Integer> dynamicRangeToVideoProfileHdrFormats = DynamicRangeUtil.dynamicRangeToVideoProfileHdrFormats(dynamicRange);
            Set<Integer> dynamicRangeToVideoProfileBitDepth = DynamicRangeUtil.dynamicRangeToVideoProfileBitDepth(dynamicRange);
            Iterator<EncoderProfilesProxy.VideoProfileProxy> it = videoValidatedEncoderProfilesProxy.getVideoProfiles().iterator();
            while (it.hasNext()) {
                videoProfileProxy = it.next();
                if (dynamicRangeToVideoProfileHdrFormats.contains(Integer.valueOf(videoProfileProxy.getHdrFormat())) && dynamicRangeToVideoProfileBitDepth.contains(Integer.valueOf(videoProfileProxy.getBitDepth()))) {
                    String mediaType = videoProfileProxy.getMediaType();
                    if (Objects.equals(outputFormatToVideoMime, mediaType)) {
                        Logger.d(TAG, "MediaSpec video mime matches EncoderProfiles. Using EncoderProfiles to derive VIDEO settings [mime type: " + outputFormatToVideoMime + "]");
                    } else if (mediaSpec.getOutputFormat() == -1) {
                        Logger.d(TAG, "MediaSpec contains OUTPUT_FORMAT_AUTO. Using CamcorderProfile to derive VIDEO settings [mime type: " + outputFormatToVideoMime + ", dynamic range: " + dynamicRange + "]");
                    }
                    outputFormatToVideoMime = mediaType;
                    break;
                }
            }
        }
        videoProfileProxy = null;
        if (videoProfileProxy == null) {
            if (mediaSpec.getOutputFormat() == -1) {
                outputFormatToVideoMime = getDynamicRangeDefaultMime(dynamicRange);
            }
            if (videoValidatedEncoderProfilesProxy == null) {
                Logger.d(TAG, "No EncoderProfiles present. May rely on fallback defaults to derive VIDEO settings [chosen mime type: " + outputFormatToVideoMime + ", dynamic range: " + dynamicRange + "]");
            } else {
                Logger.d(TAG, "No video EncoderProfile is compatible with requested output format and dynamic range. May rely on fallback defaults to derive VIDEO settings [chosen mime type: " + outputFormatToVideoMime + ", dynamic range: " + dynamicRange + "]");
            }
        }
        VideoMimeInfo.Builder builder = VideoMimeInfo.builder(outputFormatToVideoMime);
        if (videoProfileProxy != null) {
            builder.setCompatibleVideoProfile(videoProfileProxy);
        }
        return builder.build();
    }

    public static int scaleAndClampBitrate(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, @NonNull Range<Integer> range) {
        String str;
        Rational rational = new Rational(i2, i3);
        Rational rational2 = new Rational(i4, i5);
        int doubleValue = (int) (new Rational(i8, i9).doubleValue() * new Rational(i6, i7).doubleValue() * rational2.doubleValue() * rational.doubleValue() * i);
        if (Logger.isDebugEnabled(TAG)) {
            str = String.format("Base Bitrate(%dbps) * Bit Depth Ratio (%d / %d) * Frame Rate Ratio(%d / %d) * Width Ratio(%d / %d) * Height Ratio(%d / %d) = %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i9), Integer.valueOf(doubleValue));
        } else {
            str = "";
        }
        if (!VideoSpec.BITRATE_RANGE_AUTO.equals(range)) {
            Integer clamp = range.clamp(Integer.valueOf(doubleValue));
            int intValue = clamp.intValue();
            if (Logger.isDebugEnabled(TAG)) {
                str = str.concat(String.format("\nClamped to range %s -> %dbps", range, clamp));
            }
            doubleValue = intValue;
        }
        Logger.d(TAG, str);
        return doubleValue;
    }

    @NonNull
    public static VideoEncoderConfig toVideoEncoderConfig(@NonNull EncoderProfilesProxy.VideoProfileProxy videoProfileProxy) {
        return VideoEncoderConfig.builder().setMimeType(videoProfileProxy.getMediaType()).setProfile(videoProfileProxy.getProfile()).setResolution(new Size(videoProfileProxy.getWidth(), videoProfileProxy.getHeight())).setFrameRate(videoProfileProxy.getFrameRate()).setBitrate(videoProfileProxy.getBitrate()).setInputTimebase(DEFAULT_TIME_BASE).build();
    }
}
