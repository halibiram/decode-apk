package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Constructor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
final class zzaco {
    private final zzacn zza;
    private final AtomicBoolean zzb = new AtomicBoolean(false);

    public zzaco(zzacn zzacnVar) {
        this.zza = zzacnVar;
    }

    @Nullable
    public final zzacu zza(Object... objArr) {
        Constructor zza;
        synchronized (this.zzb) {
            if (!this.zzb.get()) {
                try {
                    zza = this.zza.zza();
                } catch (ClassNotFoundException unused) {
                    this.zzb.set(true);
                } catch (Exception e) {
                    throw new RuntimeException(new ObfuscatedString(new long[]{-8360751569975202830L, 1490867198010926970L, -2962843133785215690L, 6185556144394981118L, 9012373456568734369L}).toString(), e);
                }
            }
            zza = null;
        }
        if (zza == null) {
            return null;
        }
        try {
            return (zzacu) zza.newInstance(objArr);
        } catch (Exception e2) {
            throw new IllegalStateException(new ObfuscatedString(new long[]{2629501888304696385L, -7109679132787085965L, -638522182321618198L, -8450089711053005407L, 1815856549824938424L, -5090928105149616518L}).toString(), e2);
        }
    }
}
