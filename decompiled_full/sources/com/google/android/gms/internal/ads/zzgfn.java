package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgfn extends zzged implements RunnableFuture {

    @CheckForNull
    private volatile zzgew zza;

    public zzgfn(zzgdt zzgdtVar) {
        this.zza = new zzgfl(this, zzgdtVar);
    }

    public static zzgfn zze(Runnable runnable, Object obj) {
        return new zzgfn(Executors.callable(runnable, obj));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzgew zzgewVar = this.zza;
        if (zzgewVar != null) {
            zzgewVar.run();
        }
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    @CheckForNull
    public final String zza() {
        zzgew zzgewVar = this.zza;
        if (zzgewVar != null) {
            String zzgewVar2 = zzgewVar.toString();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-8746365244149559970L, -3726514193802813371L}).toString());
            sb.append(zzgewVar2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4042240587655476239L, -2106407900441362574L}), sb);
        }
        return super.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    public final void zzb() {
        zzgew zzgewVar;
        if (zzt() && (zzgewVar = this.zza) != null) {
            zzgewVar.zzh();
        }
        this.zza = null;
    }

    public zzgfn(Callable callable) {
        this.zza = new zzgfm(this, callable);
    }
}
