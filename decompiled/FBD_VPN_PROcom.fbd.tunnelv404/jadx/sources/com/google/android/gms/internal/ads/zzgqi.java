package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzgqi implements zzggy {
    private static final zzgqi zza = new zzgqi();

    private zzgqi() {
    }

    public static void zzd() {
        zzghb.zzf(zza);
    }

    @Override // com.google.android.gms.internal.ads.zzggy
    public final Class zza() {
        return zzgqf.class;
    }

    @Override // com.google.android.gms.internal.ads.zzggy
    public final Class zzb() {
        return zzgqf.class;
    }

    @Override // com.google.android.gms.internal.ads.zzggy
    public final /* bridge */ /* synthetic */ Object zzc(zzggx zzggxVar) {
        if (zzggxVar.zza() != null) {
            Iterator it = zzggxVar.zzd().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((List) it.next()).iterator();
                while (it2.hasNext()) {
                }
            }
            return new zzgqh(zzggxVar, null);
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-2463846110384549412L, -4701695506012907321L, 5638415683468818606L, -4851982803429004394L, 6644376265218935188L}).toString());
    }
}
