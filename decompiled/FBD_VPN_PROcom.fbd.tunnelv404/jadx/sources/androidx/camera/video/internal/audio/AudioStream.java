package androidx.camera.video.internal.audio;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public interface AudioStream {

    /* loaded from: classes.dex */
    public interface AudioStreamCallback {
        void onSilenceStateChanged(boolean z);
    }

    /* loaded from: classes.dex */
    public static class AudioStreamException extends Exception {
        public AudioStreamException() {
        }

        public AudioStreamException(@NonNull String str) {
            super(str);
        }

        public AudioStreamException(@NonNull String str, @NonNull Throwable th) {
            super(str, th);
        }

        public AudioStreamException(@NonNull Throwable th) {
            super(th);
        }
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class PacketInfo {
        @NonNull
        public static PacketInfo of(int i, long j) {
            return new AutoValue_AudioStream_PacketInfo(i, j);
        }

        public abstract int getSizeInBytes();

        public abstract long getTimestampNs();
    }

    @NonNull
    PacketInfo read(@NonNull ByteBuffer byteBuffer);

    void release();

    void setCallback(@Nullable AudioStreamCallback audioStreamCallback, @Nullable Executor executor);

    void start();

    void stop();
}
