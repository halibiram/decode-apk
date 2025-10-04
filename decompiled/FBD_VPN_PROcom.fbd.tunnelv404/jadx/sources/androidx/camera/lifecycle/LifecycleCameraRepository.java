package androidx.camera.lifecycle;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.CameraEffect;
import androidx.camera.core.UseCase;
import androidx.camera.core.ViewPort;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.RestrictedCameraInfo;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.core.util.Preconditions;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import com.google.auto.value.AutoValue;
import j$.util.DesugarCollections;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class LifecycleCameraRepository {

    @Nullable
    @GuardedBy("mLock")
    CameraCoordinator mCameraCoordinator;
    private final Object mLock = new Object();

    @GuardedBy("mLock")
    private final Map<Key, LifecycleCamera> mCameraMap = new HashMap();

    @GuardedBy("mLock")
    private final Map<LifecycleCameraRepositoryObserver, Set<Key>> mLifecycleObserverMap = new HashMap();

    @GuardedBy("mLock")
    private final ArrayDeque<LifecycleOwner> mActiveLifecycleOwners = new ArrayDeque<>();

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class Key {
        public static Key create(@NonNull LifecycleOwner lifecycleOwner, @NonNull CameraUseCaseAdapter.CameraId cameraId) {
            return new AutoValue_LifecycleCameraRepository_Key(lifecycleOwner, cameraId);
        }

        @NonNull
        public abstract CameraUseCaseAdapter.CameraId getCameraId();

        @NonNull
        public abstract LifecycleOwner getLifecycleOwner();
    }

    /* loaded from: classes.dex */
    public static class LifecycleCameraRepositoryObserver implements LifecycleObserver {
        private final LifecycleCameraRepository mLifecycleCameraRepository;
        private final LifecycleOwner mLifecycleOwner;

        public LifecycleCameraRepositoryObserver(LifecycleOwner lifecycleOwner, LifecycleCameraRepository lifecycleCameraRepository) {
            this.mLifecycleOwner = lifecycleOwner;
            this.mLifecycleCameraRepository = lifecycleCameraRepository;
        }

        public LifecycleOwner getLifecycleOwner() {
            return this.mLifecycleOwner;
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
        public void onDestroy(LifecycleOwner lifecycleOwner) {
            this.mLifecycleCameraRepository.unregisterLifecycle(lifecycleOwner);
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_START)
        public void onStart(LifecycleOwner lifecycleOwner) {
            this.mLifecycleCameraRepository.setActive(lifecycleOwner);
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
        public void onStop(LifecycleOwner lifecycleOwner) {
            this.mLifecycleCameraRepository.setInactive(lifecycleOwner);
        }
    }

    private LifecycleCameraRepositoryObserver getLifecycleCameraRepositoryObserver(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                for (LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver : this.mLifecycleObserverMap.keySet()) {
                    if (lifecycleOwner.equals(lifecycleCameraRepositoryObserver.getLifecycleOwner())) {
                        return lifecycleCameraRepositoryObserver;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean hasUseCaseBound(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = getLifecycleCameraRepositoryObserver(lifecycleOwner);
                if (lifecycleCameraRepositoryObserver == null) {
                    return false;
                }
                Iterator<Key> it = this.mLifecycleObserverMap.get(lifecycleCameraRepositoryObserver).iterator();
                while (it.hasNext()) {
                    if (!((LifecycleCamera) Preconditions.checkNotNull(this.mCameraMap.get(it.next()))).getUseCases().isEmpty()) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void registerCamera(LifecycleCamera lifecycleCamera) {
        Set<Key> hashSet;
        synchronized (this.mLock) {
            try {
                LifecycleOwner lifecycleOwner = lifecycleCamera.getLifecycleOwner();
                Key create = Key.create(lifecycleOwner, CameraUseCaseAdapter.generateCameraId((RestrictedCameraInfo) lifecycleCamera.getCameraInfo(), (RestrictedCameraInfo) lifecycleCamera.getSecondaryCameraInfo()));
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = getLifecycleCameraRepositoryObserver(lifecycleOwner);
                if (lifecycleCameraRepositoryObserver != null) {
                    hashSet = this.mLifecycleObserverMap.get(lifecycleCameraRepositoryObserver);
                } else {
                    hashSet = new HashSet<>();
                }
                hashSet.add(create);
                this.mCameraMap.put(create, lifecycleCamera);
                if (lifecycleCameraRepositoryObserver == null) {
                    LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver2 = new LifecycleCameraRepositoryObserver(lifecycleOwner, this);
                    this.mLifecycleObserverMap.put(lifecycleCameraRepositoryObserver2, hashSet);
                    lifecycleOwner.getLifecycle().addObserver(lifecycleCameraRepositoryObserver2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void suspendUseCases(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = getLifecycleCameraRepositoryObserver(lifecycleOwner);
                if (lifecycleCameraRepositoryObserver == null) {
                    return;
                }
                Iterator<Key> it = this.mLifecycleObserverMap.get(lifecycleCameraRepositoryObserver).iterator();
                while (it.hasNext()) {
                    ((LifecycleCamera) Preconditions.checkNotNull(this.mCameraMap.get(it.next()))).suspend();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void unsuspendUseCases(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                Iterator<Key> it = this.mLifecycleObserverMap.get(getLifecycleCameraRepositoryObserver(lifecycleOwner)).iterator();
                while (it.hasNext()) {
                    LifecycleCamera lifecycleCamera = this.mCameraMap.get(it.next());
                    if (!((LifecycleCamera) Preconditions.checkNotNull(lifecycleCamera)).getUseCases().isEmpty()) {
                        lifecycleCamera.unsuspend();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void bindToLifecycleCamera(@NonNull LifecycleCamera lifecycleCamera, @Nullable ViewPort viewPort, @NonNull List<CameraEffect> list, @NonNull Collection<UseCase> collection, @Nullable CameraCoordinator cameraCoordinator) {
        synchronized (this.mLock) {
            try {
                Preconditions.checkArgument(!collection.isEmpty());
                this.mCameraCoordinator = cameraCoordinator;
                LifecycleOwner lifecycleOwner = lifecycleCamera.getLifecycleOwner();
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = getLifecycleCameraRepositoryObserver(lifecycleOwner);
                if (lifecycleCameraRepositoryObserver == null) {
                    return;
                }
                Set<Key> set = this.mLifecycleObserverMap.get(lifecycleCameraRepositoryObserver);
                CameraCoordinator cameraCoordinator2 = this.mCameraCoordinator;
                if (cameraCoordinator2 == null || cameraCoordinator2.getCameraOperatingMode() != 2) {
                    Iterator<Key> it = set.iterator();
                    while (it.hasNext()) {
                        LifecycleCamera lifecycleCamera2 = (LifecycleCamera) Preconditions.checkNotNull(this.mCameraMap.get(it.next()));
                        if (!lifecycleCamera2.equals(lifecycleCamera) && !lifecycleCamera2.getUseCases().isEmpty()) {
                            throw new IllegalArgumentException("Multiple LifecycleCameras with use cases are registered to the same LifecycleOwner.");
                        }
                    }
                }
                try {
                    lifecycleCamera.getCameraUseCaseAdapter().setViewPort(viewPort);
                    lifecycleCamera.getCameraUseCaseAdapter().setEffects(list);
                    lifecycleCamera.bind(collection);
                    if (lifecycleOwner.getLifecycle().getState().isAtLeast(Lifecycle.State.STARTED)) {
                        setActive(lifecycleOwner);
                    }
                } catch (CameraUseCaseAdapter.CameraException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void clear() {
        synchronized (this.mLock) {
            try {
                Iterator it = new HashSet(this.mLifecycleObserverMap.keySet()).iterator();
                while (it.hasNext()) {
                    unregisterLifecycle(((LifecycleCameraRepositoryObserver) it.next()).getLifecycleOwner());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public LifecycleCamera createLifecycleCamera(@NonNull LifecycleOwner lifecycleOwner, @NonNull CameraUseCaseAdapter cameraUseCaseAdapter) {
        boolean z;
        synchronized (this.mLock) {
            try {
                if (this.mCameraMap.get(Key.create(lifecycleOwner, cameraUseCaseAdapter.getCameraId())) == null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkArgument(z, "LifecycleCamera already exists for the given LifecycleOwner and set of cameras");
                LifecycleCamera lifecycleCamera = new LifecycleCamera(lifecycleOwner, cameraUseCaseAdapter);
                if (cameraUseCaseAdapter.getUseCases().isEmpty()) {
                    lifecycleCamera.suspend();
                }
                if (lifecycleOwner.getLifecycle().getState() == Lifecycle.State.DESTROYED) {
                    return lifecycleCamera;
                }
                registerCamera(lifecycleCamera);
                return lifecycleCamera;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public LifecycleCamera getLifecycleCamera(LifecycleOwner lifecycleOwner, @NonNull CameraUseCaseAdapter.CameraId cameraId) {
        LifecycleCamera lifecycleCamera;
        synchronized (this.mLock) {
            lifecycleCamera = this.mCameraMap.get(Key.create(lifecycleOwner, cameraId));
        }
        return lifecycleCamera;
    }

    public Collection<LifecycleCamera> getLifecycleCameras() {
        Collection<LifecycleCamera> unmodifiableCollection;
        synchronized (this.mLock) {
            unmodifiableCollection = DesugarCollections.unmodifiableCollection(this.mCameraMap.values());
        }
        return unmodifiableCollection;
    }

    public void setActive(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                if (!hasUseCaseBound(lifecycleOwner)) {
                    return;
                }
                if (this.mActiveLifecycleOwners.isEmpty()) {
                    this.mActiveLifecycleOwners.push(lifecycleOwner);
                } else {
                    CameraCoordinator cameraCoordinator = this.mCameraCoordinator;
                    if (cameraCoordinator == null || cameraCoordinator.getCameraOperatingMode() != 2) {
                        LifecycleOwner peek = this.mActiveLifecycleOwners.peek();
                        if (!lifecycleOwner.equals(peek)) {
                            suspendUseCases(peek);
                            this.mActiveLifecycleOwners.remove(lifecycleOwner);
                            this.mActiveLifecycleOwners.push(lifecycleOwner);
                        }
                    }
                }
                unsuspendUseCases(lifecycleOwner);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setInactive(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                this.mActiveLifecycleOwners.remove(lifecycleOwner);
                suspendUseCases(lifecycleOwner);
                if (!this.mActiveLifecycleOwners.isEmpty()) {
                    unsuspendUseCases(this.mActiveLifecycleOwners.peek());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unbind(@NonNull Collection<UseCase> collection) {
        synchronized (this.mLock) {
            try {
                Iterator<Key> it = this.mCameraMap.keySet().iterator();
                while (it.hasNext()) {
                    LifecycleCamera lifecycleCamera = this.mCameraMap.get(it.next());
                    boolean isEmpty = lifecycleCamera.getUseCases().isEmpty();
                    lifecycleCamera.unbind(collection);
                    if (!isEmpty && lifecycleCamera.getUseCases().isEmpty()) {
                        setInactive(lifecycleCamera.getLifecycleOwner());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unbindAll() {
        synchronized (this.mLock) {
            try {
                Iterator<Key> it = this.mCameraMap.keySet().iterator();
                while (it.hasNext()) {
                    LifecycleCamera lifecycleCamera = this.mCameraMap.get(it.next());
                    lifecycleCamera.unbindAll();
                    setInactive(lifecycleCamera.getLifecycleOwner());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unregisterLifecycle(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = getLifecycleCameraRepositoryObserver(lifecycleOwner);
                if (lifecycleCameraRepositoryObserver == null) {
                    return;
                }
                setInactive(lifecycleOwner);
                Iterator<Key> it = this.mLifecycleObserverMap.get(lifecycleCameraRepositoryObserver).iterator();
                while (it.hasNext()) {
                    this.mCameraMap.remove(it.next());
                }
                this.mLifecycleObserverMap.remove(lifecycleCameraRepositoryObserver);
                lifecycleCameraRepositoryObserver.getLifecycleOwner().getLifecycle().removeObserver(lifecycleCameraRepositoryObserver);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
