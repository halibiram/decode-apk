package androidx.camera.core.processing.util;

import android.opengl.EGLSurface;
import androidx.annotation.NonNull;
import defpackage.AbstractC0362x4440ab85;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_OutputSurface extends OutputSurface {
    private final EGLSurface eglSurface;
    private final int height;
    private final int width;

    public AutoValue_OutputSurface(EGLSurface eGLSurface, int i, int i2) {
        if (eGLSurface != null) {
            this.eglSurface = eGLSurface;
            this.width = i;
            this.height = i2;
            return;
        }
        throw new NullPointerException("Null eglSurface");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OutputSurface)) {
            return false;
        }
        OutputSurface outputSurface = (OutputSurface) obj;
        if (this.eglSurface.equals(outputSurface.getEglSurface()) && this.width == outputSurface.getWidth() && this.height == outputSurface.getHeight()) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.processing.util.OutputSurface
    @NonNull
    public EGLSurface getEglSurface() {
        return this.eglSurface;
    }

    @Override // androidx.camera.core.processing.util.OutputSurface
    public int getHeight() {
        return this.height;
    }

    @Override // androidx.camera.core.processing.util.OutputSurface
    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return ((((this.eglSurface.hashCode() ^ 1000003) * 1000003) ^ this.width) * 1000003) ^ this.height;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("OutputSurface{eglSurface=");
        sb.append(this.eglSurface);
        sb.append(", width=");
        sb.append(this.width);
        sb.append(", height=");
        return AbstractC0362x4440ab85.m2935x1db10c9d(sb, "}", this.height);
    }
}
