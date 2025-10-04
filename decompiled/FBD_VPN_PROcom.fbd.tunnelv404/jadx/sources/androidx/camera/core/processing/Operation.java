package androidx.camera.core.processing;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public interface Operation<I, O> {
    @NonNull
    @WorkerThread
    O apply(@NonNull I i);
}
