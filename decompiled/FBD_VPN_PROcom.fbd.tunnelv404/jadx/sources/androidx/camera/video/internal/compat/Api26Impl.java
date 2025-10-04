package androidx.camera.video.internal.compat;

import android.media.MediaMuxer;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.FileDescriptor;

@RequiresApi(26)
/* loaded from: classes.dex */
public final class Api26Impl {
    private Api26Impl() {
    }

    @NonNull
    public static MediaMuxer createMediaMuxer(@NonNull FileDescriptor fileDescriptor, int i) {
        return new MediaMuxer(fileDescriptor, i);
    }
}
