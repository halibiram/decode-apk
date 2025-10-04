package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfuh extends zzgdb {
    Object zza;

    public zzfuh(Object obj, Runnable runnable) {
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    public final String zza() {
        Object obj = this.zza;
        if (obj == null) {
            return new ObfuscatedString(new long[]{2201015312113970077L}).toString();
        }
        return obj.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    public final void zzb() {
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    public final boolean zzc(Object obj) {
        return super.zzc(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    public final boolean zzd(Throwable th) {
        return super.zzd(th);
    }
}
