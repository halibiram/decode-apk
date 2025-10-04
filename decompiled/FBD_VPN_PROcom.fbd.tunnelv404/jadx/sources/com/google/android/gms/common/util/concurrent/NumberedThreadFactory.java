package com.google.android.gms.common.util.concurrent;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@KeepForSdk
/* loaded from: classes2.dex */
public class NumberedThreadFactory implements ThreadFactory {
    private final String zza;
    private final AtomicInteger zzb = new AtomicInteger();
    private final ThreadFactory zzc = Executors.defaultThreadFactory();

    @KeepForSdk
    public NumberedThreadFactory(@NonNull String str) {
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{8182079061273074211L, 7197018211163204314L, 1380921264221792136L, -837101022721041606L}).toString());
        this.zza = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    @NonNull
    public final Thread newThread(@NonNull Runnable runnable) {
        Thread newThread = this.zzc.newThread(new zza(runnable, 0));
        newThread.setName(this.zza + new ObfuscatedString(new long[]{3313380625064914652L, 8986087452503522288L}).toString() + this.zzb.getAndIncrement() + new ObfuscatedString(new long[]{-4972223950853938224L, -2467032526646343274L}).toString());
        return newThread;
    }
}
