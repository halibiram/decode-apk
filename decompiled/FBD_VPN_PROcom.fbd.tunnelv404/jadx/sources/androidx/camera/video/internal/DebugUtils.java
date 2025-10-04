package androidx.camera.video.internal;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.Logger;
import androidx.camera.video.internal.compat.Api28Impl;
import androidx.camera.video.internal.compat.Api31Impl;
import androidx.core.util.Preconditions;
import defpackage.AbstractC0362x4440ab85;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.Scanner;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class DebugUtils {
    private static final String AUDIO_CAPS_PREFIX = "[AudioCaps] ";
    private static final String CODEC_CAPS_PREFIX = "[CodecCaps] ";
    private static final String ENCODER_CAPS_PREFIX = "[EncoderCaps] ";
    private static final String TAG = "DebugUtils";
    private static final String VIDEO_CAPS_PREFIX = "[VideoCaps] ";

    private DebugUtils() {
    }

    private static void dumpAudioCapabilities(@NonNull StringBuilder sb, @NonNull MediaCodecInfo.AudioCapabilities audioCapabilities, @NonNull MediaFormat mediaFormat) {
        logToString(sb, "[AudioCaps] getBitrateRange = " + audioCapabilities.getBitrateRange());
        logToString(sb, "[AudioCaps] getMaxInputChannelCount = " + audioCapabilities.getMaxInputChannelCount());
        if (Build.VERSION.SDK_INT >= 31) {
            logToString(sb, "[AudioCaps] getMinInputChannelCount = " + Api31Impl.getMinInputChannelCount(audioCapabilities));
            logToString(sb, "[AudioCaps] getInputChannelCountRanges = " + Arrays.toString(Api31Impl.getInputChannelCountRanges(audioCapabilities)));
        }
        logToString(sb, "[AudioCaps] getSupportedSampleRateRanges = " + Arrays.toString(audioCapabilities.getSupportedSampleRateRanges()));
        logToString(sb, "[AudioCaps] getSupportedSampleRates = " + Arrays.toString(audioCapabilities.getSupportedSampleRates()));
        try {
            int integer = mediaFormat.getInteger("sample-rate");
            logToString(sb, "[AudioCaps] isSampleRateSupported for " + integer + " = " + audioCapabilities.isSampleRateSupported(integer));
        } catch (IllegalArgumentException | NullPointerException unused) {
            logToString(sb, "[AudioCaps] mediaFormat does not contain sample rate");
        }
    }

    @NonNull
    public static String dumpCodecCapabilities(@NonNull String str, @NonNull MediaCodec mediaCodec, @NonNull MediaFormat mediaFormat) {
        StringBuilder sb = new StringBuilder();
        try {
            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodec.getCodecInfo().getCapabilitiesForType(str);
            Preconditions.checkArgument(capabilitiesForType != null);
            dumpCodecCapabilities(sb, capabilitiesForType, mediaFormat);
        } catch (IllegalArgumentException unused) {
            logToString(sb, "[" + mediaCodec.getName() + "] does not support mime " + str);
        }
        return sb.toString();
    }

    private static void dumpEncoderCapabilities(@NonNull StringBuilder sb, @NonNull MediaCodecInfo.EncoderCapabilities encoderCapabilities, @NonNull MediaFormat mediaFormat) {
        logToString(sb, "[EncoderCaps] getComplexityRange = " + encoderCapabilities.getComplexityRange());
        if (Build.VERSION.SDK_INT >= 28) {
            logToString(sb, "[EncoderCaps] getQualityRange = " + Api28Impl.getQualityRange(encoderCapabilities));
        }
        try {
            logToString(sb, "[EncoderCaps] isBitrateModeSupported = " + encoderCapabilities.isBitrateModeSupported(mediaFormat.getInteger("bitrate-mode")));
        } catch (IllegalArgumentException | NullPointerException unused) {
            logToString(sb, "[EncoderCaps] mediaFormat does not contain bitrate mode");
        }
    }

    @NonNull
    public static String dumpMediaCodecListForFormat(@NonNull MediaCodecList mediaCodecList, @NonNull MediaFormat mediaFormat) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        logToString(sb, "[Start] Dump MediaCodecList for mediaFormat " + mediaFormat);
        String string = mediaFormat.getString("mime");
        for (MediaCodecInfo mediaCodecInfo : mediaCodecList.getCodecInfos()) {
            if (mediaCodecInfo.isEncoder()) {
                boolean z2 = true;
                if (string != null) {
                    z = true;
                } else {
                    z = false;
                }
                try {
                    Preconditions.checkArgument(z);
                    MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(string);
                    if (capabilitiesForType == null) {
                        z2 = false;
                    }
                    Preconditions.checkArgument(z2);
                    logToString(sb, "[Start] [" + mediaCodecInfo.getName() + "]");
                    dumpCodecCapabilities(sb, capabilitiesForType, mediaFormat);
                    logToString(sb, "[End] [" + mediaCodecInfo.getName() + "]");
                } catch (IllegalArgumentException unused) {
                    logToString(sb, "[" + mediaCodecInfo.getName() + "] does not support mime " + string);
                }
            }
        }
        logToString(sb, "[End] Dump MediaCodecList");
        String sb2 = sb.toString();
        stringToLog(sb2);
        return sb2;
    }

    private static void dumpVideoCapabilities(@NonNull StringBuilder sb, @NonNull MediaCodecInfo.VideoCapabilities videoCapabilities, @NonNull MediaFormat mediaFormat) {
        int i;
        int i2;
        boolean z;
        boolean z2;
        logToString(sb, "[VideoCaps] getBitrateRange = " + videoCapabilities.getBitrateRange());
        logToString(sb, "[VideoCaps] getSupportedWidths = " + videoCapabilities.getSupportedWidths() + ", getWidthAlignment = " + videoCapabilities.getWidthAlignment());
        logToString(sb, "[VideoCaps] getSupportedHeights = " + videoCapabilities.getSupportedHeights() + ", getHeightAlignment = " + videoCapabilities.getHeightAlignment());
        int i3 = 0;
        boolean z3 = true;
        try {
            i = mediaFormat.getInteger("width");
            i2 = mediaFormat.getInteger("height");
            if (i > 0 && i2 > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.checkArgument(z2);
            z = true;
        } catch (IllegalArgumentException | NullPointerException unused) {
            logToString(sb, "[VideoCaps] mediaFormat does not contain valid width and height");
            i = 0;
            i2 = 0;
            z = false;
        }
        if (z) {
            try {
                logToString(sb, "[VideoCaps] getSupportedHeightsFor " + i + " = " + videoCapabilities.getSupportedHeightsFor(i));
            } catch (IllegalArgumentException unused2) {
                logToString(sb, AbstractC0362x4440ab85.m2929x9738a56c(i, "[VideoCaps] could not getSupportedHeightsFor "));
            }
            try {
                logToString(sb, "[VideoCaps] getSupportedWidthsFor " + i2 + " = " + videoCapabilities.getSupportedWidthsFor(i2));
            } catch (IllegalArgumentException unused3) {
                logToString(sb, AbstractC0362x4440ab85.m2929x9738a56c(i2, "[VideoCaps] could not getSupportedWidthsFor "));
            }
            StringBuilder m2937x8c6fc18a = AbstractC0362x4440ab85.m2937x8c6fc18a(i, i2, "[VideoCaps] isSizeSupported for ", "x", " = ");
            m2937x8c6fc18a.append(videoCapabilities.isSizeSupported(i, i2));
            logToString(sb, m2937x8c6fc18a.toString());
        }
        logToString(sb, "[VideoCaps] getSupportedFrameRates = " + videoCapabilities.getSupportedFrameRates());
        try {
            int integer = mediaFormat.getInteger("frame-rate");
            if (integer <= 0) {
                z3 = false;
            }
            Preconditions.checkArgument(z3);
            i3 = integer;
        } catch (IllegalArgumentException | NullPointerException unused4) {
            logToString(sb, "[VideoCaps] mediaFormat does not contain frame rate");
        }
        if (z) {
            StringBuilder m2937x8c6fc18a2 = AbstractC0362x4440ab85.m2937x8c6fc18a(i, i2, "[VideoCaps] getSupportedFrameRatesFor ", "x", " = ");
            m2937x8c6fc18a2.append(videoCapabilities.getSupportedFrameRatesFor(i, i2));
            logToString(sb, m2937x8c6fc18a2.toString());
        }
        if (z && i3 > 0) {
            StringBuilder m2937x8c6fc18a3 = AbstractC0362x4440ab85.m2937x8c6fc18a(i, i2, "[VideoCaps] areSizeAndRateSupported for ", "x", ", ");
            m2937x8c6fc18a3.append(i3);
            m2937x8c6fc18a3.append(" = ");
            m2937x8c6fc18a3.append(videoCapabilities.areSizeAndRateSupported(i, i2, i3));
            logToString(sb, m2937x8c6fc18a3.toString());
        }
    }

    private static String formatInterval(long j) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long hours = timeUnit.toHours(j);
        TimeUnit timeUnit2 = TimeUnit.HOURS;
        long minutes = timeUnit.toMinutes(j - timeUnit2.toMillis(hours));
        long millis = j - timeUnit2.toMillis(hours);
        TimeUnit timeUnit3 = TimeUnit.MINUTES;
        long seconds = timeUnit.toSeconds(millis - timeUnit3.toMillis(minutes));
        return String.format(Locale.US, "%02d:%02d:%02d.%03d", Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(seconds), Long.valueOf(((j - timeUnit2.toMillis(hours)) - timeUnit3.toMillis(minutes)) - TimeUnit.SECONDS.toMillis(seconds)));
    }

    private static void logToString(@NonNull StringBuilder sb, @NonNull String str) {
        sb.append(str);
        sb.append("\n");
    }

    @NonNull
    public static String readableBufferInfo(@NonNull MediaCodec.BufferInfo bufferInfo) {
        StringBuilder sb = new StringBuilder();
        sb.append("Dump BufferInfo: " + bufferInfo.toString() + "\n");
        sb.append("\toffset: " + bufferInfo.offset + "\n");
        sb.append("\tsize: " + bufferInfo.size + "\n");
        StringBuilder sb2 = new StringBuilder("\tflag: ");
        sb2.append(bufferInfo.flags);
        sb.append(sb2.toString());
        ArrayList arrayList = new ArrayList();
        if ((bufferInfo.flags & 4) != 0) {
            arrayList.add("EOS");
        }
        if ((bufferInfo.flags & 2) != 0) {
            arrayList.add("CODEC_CONFIG");
        }
        if ((bufferInfo.flags & 1) != 0) {
            arrayList.add("KEY_FRAME");
        }
        if ((bufferInfo.flags & 8) != 0) {
            arrayList.add("PARTIAL_FRAME");
        }
        if (!arrayList.isEmpty()) {
            sb.append(" (");
            sb.append(TextUtils.join(" | ", arrayList));
            sb.append(")");
        }
        sb.append("\n");
        sb.append("\tpresentationTime: " + bufferInfo.presentationTimeUs + " (" + readableUs(bufferInfo.presentationTimeUs) + ")\n");
        return sb.toString();
    }

    @NonNull
    public static String readableMs(long j) {
        return formatInterval(j);
    }

    @NonNull
    public static String readableUs(long j) {
        return readableMs(TimeUnit.MICROSECONDS.toMillis(j));
    }

    private static void stringToLog(@NonNull String str) {
        if (Logger.isInfoEnabled(TAG)) {
            Scanner scanner = new Scanner(str);
            while (scanner.hasNextLine()) {
                Logger.i(TAG, scanner.nextLine());
            }
        }
    }

    @NonNull
    private static String toString(@Nullable MediaCodecInfo.CodecProfileLevel codecProfileLevel) {
        if (codecProfileLevel == null) {
            return "null";
        }
        return String.format("{level=%d, profile=%d}", Integer.valueOf(codecProfileLevel.level), Integer.valueOf(codecProfileLevel.profile));
    }

    private static void dumpCodecCapabilities(@NonNull StringBuilder sb, @NonNull MediaCodecInfo.CodecCapabilities codecCapabilities, @NonNull MediaFormat mediaFormat) {
        try {
            logToString(sb, "[CodecCaps] isFormatSupported = " + codecCapabilities.isFormatSupported(mediaFormat));
        } catch (ClassCastException unused) {
            logToString(sb, "[CodecCaps] isFormatSupported=false");
        }
        logToString(sb, "[CodecCaps] getDefaultFormat = " + codecCapabilities.getDefaultFormat());
        if (codecCapabilities.profileLevels != null) {
            StringBuilder sb2 = new StringBuilder("[");
            ArrayList arrayList = new ArrayList();
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecCapabilities.profileLevels) {
                arrayList.add(toString(codecProfileLevel));
            }
            sb2.append(TextUtils.join(", ", arrayList));
            sb2.append("]");
            logToString(sb, "[CodecCaps] profileLevels = " + ((Object) sb2));
        }
        if (codecCapabilities.colorFormats != null) {
            logToString(sb, "[CodecCaps] colorFormats = " + Arrays.toString(codecCapabilities.colorFormats));
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities != null) {
            dumpVideoCapabilities(sb, videoCapabilities, mediaFormat);
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities != null) {
            dumpAudioCapabilities(sb, audioCapabilities, mediaFormat);
        }
        MediaCodecInfo.EncoderCapabilities encoderCapabilities = codecCapabilities.getEncoderCapabilities();
        if (encoderCapabilities != null) {
            dumpEncoderCapabilities(sb, encoderCapabilities, mediaFormat);
        }
    }
}
