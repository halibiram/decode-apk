package androidx.camera.video.internal.audio;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface AudioStreamFactory {
    @NonNull
    AudioStream create(@NonNull AudioSettings audioSettings, @Nullable Context context);
}
