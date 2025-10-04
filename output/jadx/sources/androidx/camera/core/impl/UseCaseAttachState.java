package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class UseCaseAttachState {
    private static final String TAG = "UseCaseAttachState";
    private final Map<String, UseCaseAttachInfo> mAttachedUseCasesToInfoMap = new LinkedHashMap();
    private final String mCameraId;

    /* loaded from: classes.dex */
    public interface AttachStateFilter {
        boolean filter(UseCaseAttachInfo useCaseAttachInfo);
    }

    /* loaded from: classes.dex */
    public static final class UseCaseAttachInfo {

        @Nullable
        private final List<UseCaseConfigFactory.CaptureType> mCaptureTypes;

        @NonNull
        private final SessionConfig mSessionConfig;

        @Nullable
        private final StreamSpec mStreamSpec;

        @NonNull
        private final UseCaseConfig<?> mUseCaseConfig;
        private boolean mAttached = false;
        private boolean mActive = false;

        public UseCaseAttachInfo(@NonNull SessionConfig sessionConfig, @NonNull UseCaseConfig<?> useCaseConfig, @Nullable StreamSpec streamSpec, @Nullable List<UseCaseConfigFactory.CaptureType> list) {
            this.mSessionConfig = sessionConfig;
            this.mUseCaseConfig = useCaseConfig;
            this.mStreamSpec = streamSpec;
            this.mCaptureTypes = list;
        }

        public boolean getActive() {
            return this.mActive;
        }

        public boolean getAttached() {
            return this.mAttached;
        }

        @Nullable
        public List<UseCaseConfigFactory.CaptureType> getCaptureTypes() {
            return this.mCaptureTypes;
        }

        @NonNull
        public SessionConfig getSessionConfig() {
            return this.mSessionConfig;
        }

        @Nullable
        public StreamSpec getStreamSpec() {
            return this.mStreamSpec;
        }

        @NonNull
        public UseCaseConfig<?> getUseCaseConfig() {
            return this.mUseCaseConfig;
        }

        public void setActive(boolean z) {
            this.mActive = z;
        }

        public void setAttached(boolean z) {
            this.mAttached = z;
        }

        @NonNull
        public String toString() {
            return "UseCaseAttachInfo{mSessionConfig=" + this.mSessionConfig + ", mUseCaseConfig=" + this.mUseCaseConfig + ", mStreamSpec=" + this.mStreamSpec + ", mCaptureTypes=" + this.mCaptureTypes + ", mAttached=" + this.mAttached + ", mActive=" + this.mActive + '}';
        }
    }

    public UseCaseAttachState(@NonNull String str) {
        this.mCameraId = str;
    }

    private UseCaseAttachInfo getOrCreateUseCaseAttachInfo(@NonNull String str, @NonNull SessionConfig sessionConfig, @NonNull UseCaseConfig<?> useCaseConfig, @Nullable StreamSpec streamSpec, @Nullable List<UseCaseConfigFactory.CaptureType> list) {
        UseCaseAttachInfo useCaseAttachInfo = this.mAttachedUseCasesToInfoMap.get(str);
        if (useCaseAttachInfo == null) {
            UseCaseAttachInfo useCaseAttachInfo2 = new UseCaseAttachInfo(sessionConfig, useCaseConfig, streamSpec, list);
            this.mAttachedUseCasesToInfoMap.put(str, useCaseAttachInfo2);
            return useCaseAttachInfo2;
        }
        return useCaseAttachInfo;
    }

    private Collection<SessionConfig> getSessionConfigs(AttachStateFilter attachStateFilter) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, UseCaseAttachInfo> entry : this.mAttachedUseCasesToInfoMap.entrySet()) {
            if (attachStateFilter == null || attachStateFilter.filter(entry.getValue())) {
                arrayList.add(entry.getValue().getSessionConfig());
            }
        }
        return arrayList;
    }

    private Collection<UseCaseConfig<?>> getUseCaseConfigs(AttachStateFilter attachStateFilter) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, UseCaseAttachInfo> entry : this.mAttachedUseCasesToInfoMap.entrySet()) {
            if (attachStateFilter == null || attachStateFilter.filter(entry.getValue())) {
                arrayList.add(entry.getValue().getUseCaseConfig());
            }
        }
        return arrayList;
    }

    private Collection<UseCaseAttachInfo> getUseCaseInfo(AttachStateFilter attachStateFilter) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, UseCaseAttachInfo> entry : this.mAttachedUseCasesToInfoMap.entrySet()) {
            if (attachStateFilter == null || attachStateFilter.filter(entry.getValue())) {
                arrayList.add(entry.getValue());
            }
        }
        return arrayList;
    }

    public static /* synthetic */ boolean lambda$getActiveAndAttachedSessionConfigs$3(UseCaseAttachInfo useCaseAttachInfo) {
        if (useCaseAttachInfo.getActive() && useCaseAttachInfo.getAttached()) {
            return true;
        }
        return false;
    }

    @NonNull
    public SessionConfig.ValidatingBuilder getActiveAndAttachedBuilder() {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, UseCaseAttachInfo> entry : this.mAttachedUseCasesToInfoMap.entrySet()) {
            UseCaseAttachInfo value = entry.getValue();
            if (value.getActive() && value.getAttached()) {
                String key = entry.getKey();
                validatingBuilder.add(value.getSessionConfig());
                arrayList.add(key);
            }
        }
        Logger.d(TAG, "Active and attached use case: " + arrayList + " for camera: " + this.mCameraId);
        return validatingBuilder;
    }

    @NonNull
    public Collection<SessionConfig> getActiveAndAttachedSessionConfigs() {
        return DesugarCollections.unmodifiableCollection(getSessionConfigs(new C0081x1378447b(3)));
    }

    @NonNull
    public SessionConfig.ValidatingBuilder getAttachedBuilder() {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, UseCaseAttachInfo> entry : this.mAttachedUseCasesToInfoMap.entrySet()) {
            UseCaseAttachInfo value = entry.getValue();
            if (value.getAttached()) {
                validatingBuilder.add(value.getSessionConfig());
                arrayList.add(entry.getKey());
            }
        }
        Logger.d(TAG, "All use case: " + arrayList + " for camera: " + this.mCameraId);
        return validatingBuilder;
    }

    @NonNull
    public Collection<SessionConfig> getAttachedSessionConfigs() {
        return DesugarCollections.unmodifiableCollection(getSessionConfigs(new C0081x1378447b(1)));
    }

    @NonNull
    public Collection<UseCaseConfig<?>> getAttachedUseCaseConfigs() {
        return DesugarCollections.unmodifiableCollection(getUseCaseConfigs(new C0081x1378447b(2)));
    }

    @NonNull
    public Collection<UseCaseAttachInfo> getAttachedUseCaseInfo() {
        return DesugarCollections.unmodifiableCollection(getUseCaseInfo(new C0081x1378447b(0)));
    }

    public boolean isUseCaseAttached(@NonNull String str) {
        if (!this.mAttachedUseCasesToInfoMap.containsKey(str)) {
            return false;
        }
        return this.mAttachedUseCasesToInfoMap.get(str).getAttached();
    }

    public void removeUseCase(@NonNull String str) {
        this.mAttachedUseCasesToInfoMap.remove(str);
    }

    public void setUseCaseActive(@NonNull String str, @NonNull SessionConfig sessionConfig, @NonNull UseCaseConfig<?> useCaseConfig, @Nullable StreamSpec streamSpec, @Nullable List<UseCaseConfigFactory.CaptureType> list) {
        getOrCreateUseCaseAttachInfo(str, sessionConfig, useCaseConfig, streamSpec, list).setActive(true);
    }

    public void setUseCaseAttached(@NonNull String str, @NonNull SessionConfig sessionConfig, @NonNull UseCaseConfig<?> useCaseConfig, @Nullable StreamSpec streamSpec, @Nullable List<UseCaseConfigFactory.CaptureType> list) {
        getOrCreateUseCaseAttachInfo(str, sessionConfig, useCaseConfig, streamSpec, list).setAttached(true);
        updateUseCase(str, sessionConfig, useCaseConfig, streamSpec, list);
    }

    public void setUseCaseDetached(@NonNull String str) {
        if (!this.mAttachedUseCasesToInfoMap.containsKey(str)) {
            return;
        }
        UseCaseAttachInfo useCaseAttachInfo = this.mAttachedUseCasesToInfoMap.get(str);
        useCaseAttachInfo.setAttached(false);
        if (!useCaseAttachInfo.getActive()) {
            this.mAttachedUseCasesToInfoMap.remove(str);
        }
    }

    public void setUseCaseInactive(@NonNull String str) {
        if (!this.mAttachedUseCasesToInfoMap.containsKey(str)) {
            return;
        }
        UseCaseAttachInfo useCaseAttachInfo = this.mAttachedUseCasesToInfoMap.get(str);
        useCaseAttachInfo.setActive(false);
        if (!useCaseAttachInfo.getAttached()) {
            this.mAttachedUseCasesToInfoMap.remove(str);
        }
    }

    public void updateUseCase(@NonNull String str, @NonNull SessionConfig sessionConfig, @NonNull UseCaseConfig<?> useCaseConfig, @Nullable StreamSpec streamSpec, @Nullable List<UseCaseConfigFactory.CaptureType> list) {
        if (!this.mAttachedUseCasesToInfoMap.containsKey(str)) {
            return;
        }
        UseCaseAttachInfo useCaseAttachInfo = new UseCaseAttachInfo(sessionConfig, useCaseConfig, streamSpec, list);
        UseCaseAttachInfo useCaseAttachInfo2 = this.mAttachedUseCasesToInfoMap.get(str);
        useCaseAttachInfo.setAttached(useCaseAttachInfo2.getAttached());
        useCaseAttachInfo.setActive(useCaseAttachInfo2.getActive());
        this.mAttachedUseCasesToInfoMap.put(str, useCaseAttachInfo);
    }
}
