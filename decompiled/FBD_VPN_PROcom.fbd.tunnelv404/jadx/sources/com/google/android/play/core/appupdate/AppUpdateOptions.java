package com.google.android.play.core.appupdate;

import androidx.annotation.NonNull;
import com.google.android.play.core.install.model.AppUpdateType;

/* loaded from: classes2.dex */
public abstract class AppUpdateOptions {

    /* loaded from: classes2.dex */
    public static abstract class Builder {
        @NonNull
        public abstract AppUpdateOptions build();

        @NonNull
        public abstract Builder setAllowAssetPackDeletion(boolean z);

        @NonNull
        public abstract Builder setAppUpdateType(@AppUpdateType int i);
    }

    @NonNull
    public static AppUpdateOptions defaultOptions(@AppUpdateType int i) {
        return newBuilder(i).build();
    }

    @NonNull
    public static Builder newBuilder(@AppUpdateType int i) {
        zzv zzvVar = new zzv();
        zzvVar.setAppUpdateType(i);
        zzvVar.setAllowAssetPackDeletion(false);
        return zzvVar;
    }

    public abstract boolean allowAssetPackDeletion();

    @AppUpdateType
    public abstract int appUpdateType();
}
