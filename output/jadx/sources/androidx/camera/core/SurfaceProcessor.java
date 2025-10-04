package androidx.camera.core;

import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public interface SurfaceProcessor {
    void onInputSurface(@NonNull SurfaceRequest surfaceRequest);

    void onOutputSurface(@NonNull SurfaceOutput surfaceOutput);
}
