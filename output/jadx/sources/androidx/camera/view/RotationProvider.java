package androidx.camera.view;

import android.content.Context;
import android.view.OrientationEventListener;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.camera.view.RotationProvider;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class RotationProvider {

    @NonNull
    @GuardedBy("mLock")
    @VisibleForTesting
    final OrientationEventListener mOrientationListener;
    final Object mLock = new Object();

    @NonNull
    @GuardedBy("mLock")
    final Map<Listener, ListenerWrapper> mListeners = new HashMap();

    @VisibleForTesting
    boolean mIgnoreCanDetectForTest = false;

    /* loaded from: classes.dex */
    public interface Listener {
        void onRotationChanged(int i);
    }

    /* loaded from: classes.dex */
    public static class ListenerWrapper {
        private final AtomicBoolean mEnabled = new AtomicBoolean(true);
        private final Executor mExecutor;
        private final Listener mListener;

        public ListenerWrapper(Listener listener, Executor executor) {
            this.mListener = listener;
            this.mExecutor = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRotationChanged$0(int i) {
            if (this.mEnabled.get()) {
                this.mListener.onRotationChanged(i);
            }
        }

        public void disable() {
            this.mEnabled.set(false);
        }

        public void onRotationChanged(final int i) {
            this.mExecutor.execute(new Runnable() { // from class: androidx.camera.view.뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷
                @Override // java.lang.Runnable
                public final void run() {
                    RotationProvider.ListenerWrapper.this.lambda$onRotationChanged$0(i);
                }
            });
        }
    }

    public RotationProvider(@NonNull Context context) {
        this.mOrientationListener = new OrientationEventListener(context) { // from class: androidx.camera.view.RotationProvider.1
            private static final int INVALID_SURFACE_ROTATION = -1;
            private int mRotation = -1;

            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                int orientationToSurfaceRotation;
                ArrayList arrayList;
                if (i != -1 && this.mRotation != (orientationToSurfaceRotation = RotationProvider.orientationToSurfaceRotation(i))) {
                    this.mRotation = orientationToSurfaceRotation;
                    synchronized (RotationProvider.this.mLock) {
                        arrayList = new ArrayList(RotationProvider.this.mListeners.values());
                    }
                    if (!arrayList.isEmpty()) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ((ListenerWrapper) it.next()).onRotationChanged(orientationToSurfaceRotation);
                        }
                    }
                }
            }
        };
    }

    @VisibleForTesting
    public static int orientationToSurfaceRotation(int i) {
        if (i >= 315 || i < 45) {
            return 0;
        }
        if (i >= 225) {
            return 1;
        }
        return i >= 135 ? 2 : 3;
    }

    @CheckResult
    public boolean addListener(@NonNull Executor executor, @NonNull Listener listener) {
        synchronized (this.mLock) {
            try {
                if (!this.mOrientationListener.canDetectOrientation() && !this.mIgnoreCanDetectForTest) {
                    return false;
                }
                this.mListeners.put(listener, new ListenerWrapper(listener, executor));
                this.mOrientationListener.enable();
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void removeListener(@NonNull Listener listener) {
        synchronized (this.mLock) {
            try {
                ListenerWrapper listenerWrapper = this.mListeners.get(listener);
                if (listenerWrapper != null) {
                    listenerWrapper.disable();
                    this.mListeners.remove(listener);
                }
                if (this.mListeners.isEmpty()) {
                    this.mOrientationListener.disable();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
