package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
final class zzfxw implements zzfxu {
    private static final zzfxu zza = new zzfxu() { // from class: com.google.android.gms.internal.ads.zzfxv
        @Override // com.google.android.gms.internal.ads.zzfxu
        public final Object zza() {
            throw new IllegalStateException();
        }
    };
    private volatile zzfxu zzb;

    @CheckForNull
    private Object zzc;

    public zzfxw(zzfxu zzfxuVar) {
        this.zzb = zzfxuVar;
    }

    public final String toString() {
        Object obj = this.zzb;
        if (obj == zza) {
            String valueOf = String.valueOf(this.zzc);
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-6603355130983536034L, 6594831920545335300L, -5287698293171988816L, -5991336781583833287L}).toString());
            sb.append(valueOf);
            obj = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8700187366232813703L, 5648444584986227187L}), sb);
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{-8233859336400325371L, 2588038268495087694L, 8359239136511227046L, -8611067102070072088L}).toString());
        sb2.append(valueOf2);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7832800197548122855L, -8683941609089142185L}), sb2);
    }

    @Override // com.google.android.gms.internal.ads.zzfxu
    public final Object zza() {
        zzfxu zzfxuVar = this.zzb;
        zzfxu zzfxuVar2 = zza;
        if (zzfxuVar != zzfxuVar2) {
            synchronized (this) {
                try {
                    if (this.zzb != zzfxuVar2) {
                        Object zza2 = this.zzb.zza();
                        this.zzc = zza2;
                        this.zzb = zzfxuVar2;
                        return zza2;
                    }
                } finally {
                }
            }
        }
        return this.zzc;
    }
}
