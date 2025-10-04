package androidx.test.platform.ui;

import android.view.KeyEvent;
import android.view.MotionEvent;

/* loaded from: classes.dex */
public interface UiController {
    boolean injectKeyEvent(KeyEvent keyEvent);

    boolean injectMotionEvent(MotionEvent motionEvent);

    boolean injectString(String str);

    void loopMainThreadForAtLeast(long j);

    void loopMainThreadUntilIdle();
}
