package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.io.FileDescriptor;
import java.io.PrintWriter;

@KeepForSdk
/* loaded from: classes2.dex */
public class LifecycleCallback {

    @NonNull
    @KeepForSdk
    protected final LifecycleFragment mLifecycleFragment;

    @KeepForSdk
    public LifecycleCallback(@NonNull LifecycleFragment lifecycleFragment) {
        this.mLifecycleFragment = lifecycleFragment;
    }

    @Keep
    private static LifecycleFragment getChimeraLifecycleFragmentImpl(LifecycleActivity lifecycleActivity) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{653085128628976280L, -669939460241265194L, -178294525173743864L, -9184905301365811071L, 2166122612919810870L}).toString());
    }

    @NonNull
    @KeepForSdk
    public static LifecycleFragment getFragment(@NonNull Activity activity) {
        return getFragment(new LifecycleActivity(activity));
    }

    @KeepForSdk
    @MainThread
    public void dump(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr) {
    }

    @NonNull
    @KeepForSdk
    public Activity getActivity() {
        Activity lifecycleActivity = this.mLifecycleFragment.getLifecycleActivity();
        Preconditions.checkNotNull(lifecycleActivity);
        return lifecycleActivity;
    }

    @KeepForSdk
    @MainThread
    public void onActivityResult(int i, int i2, @NonNull Intent intent) {
    }

    @KeepForSdk
    @MainThread
    public void onCreate(@Nullable Bundle bundle) {
    }

    @KeepForSdk
    @MainThread
    public void onDestroy() {
    }

    @KeepForSdk
    @MainThread
    public void onResume() {
    }

    @KeepForSdk
    @MainThread
    public void onSaveInstanceState(@NonNull Bundle bundle) {
    }

    @KeepForSdk
    @MainThread
    public void onStart() {
    }

    @KeepForSdk
    @MainThread
    public void onStop() {
    }

    @NonNull
    @KeepForSdk
    public static LifecycleFragment getFragment(@NonNull ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    @KeepForSdk
    public static LifecycleFragment getFragment(@NonNull LifecycleActivity lifecycleActivity) {
        if (lifecycleActivity.zzd()) {
            return zzd.zzc(lifecycleActivity.zzb());
        }
        if (lifecycleActivity.zzc()) {
            return zzb.zzc(lifecycleActivity.zza());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1013684367505588405L, -7511247683727216495L, 7532192552606136082L, 4850900421814129130L, 423481758746680651L, 3139498685375699270L, 7755812127755217741L}).toString());
    }
}
