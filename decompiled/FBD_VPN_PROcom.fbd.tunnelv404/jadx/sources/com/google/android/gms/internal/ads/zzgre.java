package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgre implements zzggy {
    private static final zzgre zza = new zzgre();
    private static final zzgoq zzb = zzgoq.zzb(new zzgoo() { // from class: com.google.android.gms.internal.ads.zzgrb
        @Override // com.google.android.gms.internal.ads.zzgoo
        public final Object zza(zzggc zzggcVar) {
            return zzgrt.zza((zzgno) zzggcVar);
        }
    }, zzgno.class, zzggp.class);

    public static void zzd() {
        zzghb.zzf(zza);
        zzgob.zza().zze(zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzggy
    public final Class zza() {
        return zzggp.class;
    }

    @Override // com.google.android.gms.internal.ads.zzggy
    public final Class zzb() {
        return zzggp.class;
    }

    @Override // com.google.android.gms.internal.ads.zzggy
    public final /* bridge */ /* synthetic */ Object zzc(zzggx zzggxVar) {
        Iterator it = zzggxVar.zzd().iterator();
        while (it.hasNext()) {
            for (zzggt zzggtVar : (List) it.next()) {
                if (zzggtVar.zzb() instanceof zzgqz) {
                    zzgqz zzgqzVar = (zzgqz) zzggtVar.zzb();
                    zzgxq zzb2 = zzgxq.zzb(zzggtVar.zzg());
                    if (!zzb2.equals(zzgqzVar.zzc())) {
                        String valueOf = String.valueOf(zzgqzVar.zzb());
                        String zzgxqVar = zzgqzVar.zzc().toString();
                        String zzgxqVar2 = zzb2.toString();
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{-8143778503937405071L, 45268350053929862L, -4753744640104141295L, -6459238957715981305L}).toString());
                        sb.append(valueOf);
                        sb.append(new ObfuscatedString(new long[]{-4597268199251095475L, 9153290241290409905L, -3380989735346179028L, 7044971054400730032L, 5427075987240356012L}).toString());
                        sb.append(zzgxqVar);
                        sb.append(new ObfuscatedString(new long[]{2975427279889052975L, 1415599138307803565L, 5592959367123575107L}).toString());
                        sb.append(zzgxqVar2);
                        throw new GeneralSecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5216396723862516362L, 2568248915306906345L}), sb));
                    }
                }
            }
        }
        return new zzgrd(zzggxVar, null);
    }
}
