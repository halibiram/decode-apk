package androidx.camera.video.internal.workaround;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.internal.compat.quirk.CameraUseInconsistentTimebaseQuirk;
import androidx.camera.video.internal.encoder.TimeProvider;

/* loaded from: classes.dex */
public class VideoTimebaseConverter {
    private static final String TAG = "VideoTimebaseConverter";
    private static final long UPTIME_REALTIME_DIFF_THRESHOLD_US = 3000000;
    private final CameraUseInconsistentTimebaseQuirk mCameraUseInconsistentTimebaseQuirk;
    private final Timebase mInputTimebase;

    @Nullable
    private Timebase mResolvedInputTimebase;
    private final TimeProvider mTimeProvider;
    private long mUptimeToRealtimeOffsetUs = -1;

    /* renamed from: androidx.camera.video.internal.workaround.VideoTimebaseConverter$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$camera$core$impl$Timebase;

        static {
            int[] iArr = new int[Timebase.values().length];
            $SwitchMap$androidx$camera$core$impl$Timebase = iArr;
            try {
                iArr[Timebase.REALTIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$Timebase[Timebase.UPTIME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public VideoTimebaseConverter(@NonNull TimeProvider timeProvider, @NonNull Timebase timebase, @Nullable CameraUseInconsistentTimebaseQuirk cameraUseInconsistentTimebaseQuirk) {
        this.mTimeProvider = timeProvider;
        this.mInputTimebase = timebase;
        this.mCameraUseInconsistentTimebaseQuirk = cameraUseInconsistentTimebaseQuirk;
    }

    private long calculateUptimeToRealtimeOffsetUs() {
        long j = Long.MAX_VALUE;
        long j2 = 0;
        for (int i = 0; i < 3; i++) {
            long uptimeUs = this.mTimeProvider.uptimeUs();
            long realtimeUs = this.mTimeProvider.realtimeUs();
            long uptimeUs2 = this.mTimeProvider.uptimeUs();
            long j3 = uptimeUs2 - uptimeUs;
            if (i == 0 || j3 < j) {
                j2 = realtimeUs - ((uptimeUs + uptimeUs2) >> 1);
                j = j3;
            }
        }
        return Math.max(0L, j2);
    }

    private boolean exceedUptimeRealtimeDiffThreshold() {
        if (this.mTimeProvider.realtimeUs() - this.mTimeProvider.uptimeUs() > UPTIME_REALTIME_DIFF_THRESHOLD_US) {
            return true;
        }
        return false;
    }

    private boolean isCloseToRealtime(long j) {
        if (Math.abs(j - this.mTimeProvider.realtimeUs()) < Math.abs(j - this.mTimeProvider.uptimeUs())) {
            return true;
        }
        return false;
    }

    @NonNull
    private Timebase resolveInputTimebase(long j) {
        boolean z;
        Timebase timebase;
        String str;
        String str2;
        if (this.mCameraUseInconsistentTimebaseQuirk != null) {
            Logger.w(TAG, "CameraUseInconsistentTimebaseQuirk is enabled");
            z = false;
        } else if (exceedUptimeRealtimeDiffThreshold()) {
            z = true;
        } else {
            return this.mInputTimebase;
        }
        if (isCloseToRealtime(j)) {
            timebase = Timebase.REALTIME;
        } else {
            timebase = Timebase.UPTIME;
        }
        if (z && timebase != this.mInputTimebase) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 31) {
                StringBuilder sb = new StringBuilder(", SOC: ");
                str2 = Build.SOC_MODEL;
                sb.append(str2);
                str = sb.toString();
            } else {
                str = "";
            }
            Logger.e(TAG, String.format("Detected camera timebase inconsistent. Please file an issue at https://issuetracker.google.com/issues/new?component=618491&template=1257717 with this error message [Manufacturer: %s, Model: %s, Hardware: %s, API Level: %d%s].\nCamera timebase is inconsistent. The timebase reported by the camera is %s, but the actual timebase contained in the frame is detected as %s.", Build.MANUFACTURER, Build.MODEL, Build.HARDWARE, Integer.valueOf(i), str, this.mInputTimebase, timebase));
        } else {
            Logger.d(TAG, "Detect input timebase = " + timebase);
        }
        return timebase;
    }

    public long convertToUptimeUs(long j) {
        if (this.mResolvedInputTimebase == null) {
            this.mResolvedInputTimebase = resolveInputTimebase(j);
        }
        int i = AnonymousClass1.$SwitchMap$androidx$camera$core$impl$Timebase[this.mResolvedInputTimebase.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return j;
            }
            throw new AssertionError("Unknown timebase: " + this.mResolvedInputTimebase);
        }
        if (this.mUptimeToRealtimeOffsetUs == -1) {
            this.mUptimeToRealtimeOffsetUs = calculateUptimeToRealtimeOffsetUs();
            Logger.d(TAG, "mUptimeToRealtimeOffsetUs = " + this.mUptimeToRealtimeOffsetUs);
        }
        return j - this.mUptimeToRealtimeOffsetUs;
    }
}
