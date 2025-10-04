package com.google.android.gms.common.util.concurrent;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

@KeepForSdk
/* loaded from: classes2.dex */
public class NamedThreadFactory implements ThreadFactory {
    private final String zza;
    private final ThreadFactory zzb = Executors.defaultThreadFactory();

    @KeepForSdk
    public NamedThreadFactory(@NonNull String str) {
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{-1609971242628494965L, -3781525496673996246L, 6519033819489573838L, 8241203871198359695L}).toString());
        this.zza = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    @NonNull
    public final Thread newThread(@NonNull Runnable runnable) {
        Thread newThread = this.zzb.newThread(new zza(runnable, 0));
        newThread.setName(this.zza);
        return newThread;
    }
}
