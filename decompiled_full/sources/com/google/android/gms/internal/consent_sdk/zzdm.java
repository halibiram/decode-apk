package com.google.android.gms.internal.consent_sdk;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzdm implements zzdq {
    private static final Object zza = new Object();
    private volatile zzdq zzb;
    private volatile Object zzc = zza;

    private zzdm(zzdq zzdqVar) {
        this.zzb = zzdqVar;
    }

    public static zzdq zzb(zzdq zzdqVar) {
        return zzdqVar instanceof zzdm ? zzdqVar : new zzdm(zzdqVar);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdr
    public final Object zza() {
        Object obj = this.zzc;
        Object obj2 = zza;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.zzc;
                    if (obj == obj2) {
                        obj = this.zzb.zza();
                        Object obj3 = this.zzc;
                        if (obj3 != obj2 && obj3 != obj) {
                            throw new IllegalStateException(new ObfuscatedString(new long[]{-157587757048871991L, 4161688308393710428L, 4631203551687880747L, 7313836984621122351L, -2982078073817015339L, 2542351421951093130L, -7544488705362652037L, -1220732703675367485L, 6584707535410135957L, 1865202276040951034L}).toString() + obj3 + new ObfuscatedString(new long[]{4083189808943616859L, 2656400278451351844L}).toString() + obj + new ObfuscatedString(new long[]{2154956465436050023L, 6175160063186006154L, 3619205253948576921L, 1127005450728951231L, 888576127025448918L, 3194016282687748038L, 5082803385934274105L}).toString());
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
