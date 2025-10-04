package androidx.camera.video;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RestrictTo;
import com.google.auto.value.AutoValue;
import j$.util.DesugarCollections;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

@AutoValue
/* loaded from: classes.dex */
public abstract class AudioStats {
    public static final double AUDIO_AMPLITUDE_NONE = 0.0d;
    public static final int AUDIO_STATE_ACTIVE = 0;
    public static final int AUDIO_STATE_DISABLED = 1;
    public static final int AUDIO_STATE_ENCODER_ERROR = 3;
    public static final int AUDIO_STATE_MUTED = 5;
    public static final int AUDIO_STATE_SOURCE_ERROR = 4;
    public static final int AUDIO_STATE_SOURCE_SILENCED = 2;
    private static final Set<Integer> ERROR_STATES = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(2, 3, 4)));

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface AudioState {
    }

    @NonNull
    public static AudioStats of(int i, @Nullable Throwable th, double d) {
        return new AutoValue_AudioStats(i, d, th);
    }

    @OptIn(markerClass = {ExperimentalAudioApi.class})
    public double getAudioAmplitude() {
        if (getAudioState() == 1) {
            return 0.0d;
        }
        return getAudioAmplitudeInternal();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public abstract double getAudioAmplitudeInternal();

    public abstract int getAudioState();

    @Nullable
    public abstract Throwable getErrorCause();

    public boolean hasAudio() {
        if (getAudioState() == 0) {
            return true;
        }
        return false;
    }

    public boolean hasError() {
        return ERROR_STATES.contains(Integer.valueOf(getAudioState()));
    }
}
