package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhhc implements zzhhm, zzhgx {
    private static final Object zza = new Object();
    private volatile zzhhm zzb;
    private volatile Object zzc = zza;

    private zzhhc(zzhhm zzhhmVar) {
        this.zzb = zzhhmVar;
    }

    public static zzhgx zza(zzhhm zzhhmVar) {
        if (zzhhmVar instanceof zzhgx) {
            return (zzhgx) zzhhmVar;
        }
        return new zzhhc(zzhhmVar);
    }

    public static zzhhm zzc(zzhhm zzhhmVar) {
        return zzhhmVar instanceof zzhhc ? zzhhmVar : new zzhhc(zzhhmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final Object zzb() {
        Object obj = this.zzc;
        Object obj2 = zza;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.zzc;
                    if (obj == obj2) {
                        obj = this.zzb.zzb();
                        Object obj3 = this.zzc;
                        if (obj3 != obj2 && obj3 != obj) {
                            throw new IllegalStateException(new ObfuscatedString(new long[]{4750581600463487167L, -218328465699979875L, 1038038896669762096L, -5875733850801828756L, 2738996031388803478L, -1830616983306190877L, -7892407264601484923L, 7968145297370050894L, 8730345736987048730L, 5688780915574991315L}).toString() + obj3 + new ObfuscatedString(new long[]{-4932436848630783266L, 2058086645073973013L}).toString() + obj + new ObfuscatedString(new long[]{8036204248341110808L, 2225513951675312186L, -7608445125849316603L, -6623362749149915043L, 2024607642117715023L, 95225195929437483L, 3911521418348191806L}).toString());
                        }
                        this.zzc = obj;
                        this.zzb = null;
                    }
                } finally {
                }
            }
        }
        return obj;
    }
}
