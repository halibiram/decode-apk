package androidx.camera.core;

import androidx.annotation.Nullable;
import androidx.camera.core.CameraState;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_CameraState_StateError extends CameraState.StateError {
    private final Throwable cause;
    private final int code;

    public AutoValue_CameraState_StateError(int i, @Nullable Throwable th) {
        this.code = i;
        this.cause = th;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CameraState.StateError)) {
            return false;
        }
        CameraState.StateError stateError = (CameraState.StateError) obj;
        if (this.code == stateError.getCode()) {
            Throwable th = this.cause;
            if (th == null) {
                if (stateError.getCause() == null) {
                    return true;
                }
            } else if (th.equals(stateError.getCause())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.CameraState.StateError
    @Nullable
    public Throwable getCause() {
        return this.cause;
    }

    @Override // androidx.camera.core.CameraState.StateError
    public int getCode() {
        return this.code;
    }

    public int hashCode() {
        int hashCode;
        int i = (this.code ^ 1000003) * 1000003;
        Throwable th = this.cause;
        if (th == null) {
            hashCode = 0;
        } else {
            hashCode = th.hashCode();
        }
        return i ^ hashCode;
    }

    public String toString() {
        return "StateError{code=" + this.code + ", cause=" + this.cause + "}";
    }
}
