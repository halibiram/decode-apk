package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public class LifecycleActivity {
    private final Object zza;

    public LifecycleActivity(@NonNull Activity activity) {
        Preconditions.checkNotNull(activity, new ObfuscatedString(new long[]{-1831700909464762533L, -231740229251084421L, 7684509383824530349L, -2433528941328451505L, 430948001297202820L}).toString());
        this.zza = activity;
    }

    @NonNull
    public final Activity zza() {
        return (Activity) this.zza;
    }

    @NonNull
    public final FragmentActivity zzb() {
        return (FragmentActivity) this.zza;
    }

    public final boolean zzc() {
        return this.zza instanceof Activity;
    }

    public final boolean zzd() {
        return this.zza instanceof FragmentActivity;
    }

    @KeepForSdk
    public LifecycleActivity(@NonNull ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }
}
