package androidx.camera.core.impl.utils.executor;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class MainThreadExecutor {
    private static volatile ScheduledExecutorService sInstance;

    private MainThreadExecutor() {
    }

    public static ScheduledExecutorService getInstance() {
        if (sInstance != null) {
            return sInstance;
        }
        synchronized (MainThreadExecutor.class) {
            try {
                if (sInstance == null) {
                    sInstance = new HandlerScheduledExecutorService(new Handler(Looper.getMainLooper()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sInstance;
    }
}
