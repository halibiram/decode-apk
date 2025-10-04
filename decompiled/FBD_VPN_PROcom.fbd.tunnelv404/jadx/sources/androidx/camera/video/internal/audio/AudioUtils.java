package androidx.camera.video.internal.audio;

import android.media.AudioTimestamp;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import defpackage.AbstractC0362x4440ab85;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class AudioUtils {
    private AudioUtils() {
    }

    public static int channelCountToChannelConfig(int i) {
        return i == 1 ? 16 : 12;
    }

    public static int channelCountToChannelMask(int i) {
        return i == 1 ? 16 : 12;
    }

    public static long computeInterpolatedTimeNs(int i, long j, @NonNull AudioTimestamp audioTimestamp) {
        boolean z;
        boolean z2 = false;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "sampleRate must be greater than 0.");
        if (j >= 0) {
            z2 = true;
        }
        Preconditions.checkArgument(z2, "framePosition must be no less than 0.");
        long frameCountToDurationNs = audioTimestamp.nanoTime + frameCountToDurationNs(j - audioTimestamp.framePosition, i);
        if (frameCountToDurationNs < 0) {
            return 0L;
        }
        return frameCountToDurationNs;
    }

    public static long frameCountToDurationNs(long j, int i) {
        boolean z;
        long j2 = i;
        if (j2 > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "sampleRate must be greater than 0.");
        return (TimeUnit.SECONDS.toNanos(1L) * j) / j2;
    }

    public static long frameCountToSize(long j, int i) {
        boolean z;
        long j2 = i;
        if (j2 > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "bytesPerFrame must be greater than 0.");
        return j * j2;
    }

    public static int getBytesPerFrame(int i, int i2) {
        boolean z;
        if (i2 > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "Invalid channel count: " + i2);
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    if (i != 21) {
                        if (i != 22) {
                            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Invalid audio encoding: "));
                        }
                    } else {
                        return i2 * 3;
                    }
                }
                return i2 * 4;
            }
            return i2;
        }
        return i2 * 2;
    }

    public static long sizeToFrameCount(long j, int i) {
        boolean z;
        long j2 = i;
        if (j2 > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "bytesPerFrame must be greater than 0.");
        return j / j2;
    }
}
