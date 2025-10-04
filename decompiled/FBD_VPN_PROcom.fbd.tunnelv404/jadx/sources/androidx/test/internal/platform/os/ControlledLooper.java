package androidx.test.internal.platform.os;

import android.view.View;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public interface ControlledLooper {
    public static final ControlledLooper NO_OP_CONTROLLED_LOOPER = new ControlledLooper() { // from class: androidx.test.internal.platform.os.ControlledLooper.1
        @Override // androidx.test.internal.platform.os.ControlledLooper
        public boolean areDrawCallbacksSupported() {
            return true;
        }

        @Override // androidx.test.internal.platform.os.ControlledLooper
        public void drainMainThreadUntilIdle() {
        }

        @Override // androidx.test.internal.platform.os.ControlledLooper
        public void simulateWindowFocus(View view) {
        }
    };

    boolean areDrawCallbacksSupported();

    void drainMainThreadUntilIdle();

    void simulateWindowFocus(View view);
}
