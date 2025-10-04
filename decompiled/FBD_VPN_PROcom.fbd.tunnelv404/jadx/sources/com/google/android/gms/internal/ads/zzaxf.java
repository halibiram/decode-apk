package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxf extends zzaxx {
    private static volatile Long zzi;
    private static final Object zzj = new Object();

    public zzaxf(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2) {
        super(zzawjVar, new ObfuscatedString(new long[]{-3715852074574380622L, 2618034660617865297L, 9184779243990134758L, 6387034214547916587L, -1521496193695161942L, 3669959145954461443L, 58100191390986671L, -603887209364339738L, -50511411742219869L}).toString(), new ObfuscatedString(new long[]{7777700413444452848L, 6541089589085360669L, 847574511351982818L, 4428981344563869700L, 6838033037173635423L, 5069098863533037094L, -8057464546033467116L}).toString(), zzasgVar, i, 22);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        if (zzi == null) {
            synchronized (zzj) {
                try {
                    if (zzi == null) {
                        zzi = (Long) this.zzf.invoke(null, null);
                    }
                } finally {
                }
            }
        }
        synchronized (this.zze) {
            this.zze.zzy(zzi.longValue());
        }
    }
}
