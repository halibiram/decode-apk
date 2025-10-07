package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcdh extends com.google.android.gms.ads.internal.util.zzb {
    final /* synthetic */ zzcdl zza;

    public zzcdh(zzcdl zzcdlVar) {
        this.zza = zzcdlVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        Context context;
        zzcei zzceiVar;
        Object obj;
        zzbgk zzbgkVar;
        zzcdl zzcdlVar = this.zza;
        context = zzcdlVar.zze;
        zzceiVar = zzcdlVar.zzf;
        zzbgi zzbgiVar = new zzbgi(context, zzceiVar.zza);
        obj = this.zza.zza;
        synchronized (obj) {
            try {
                com.google.android.gms.ads.internal.zzt.zze();
                zzbgkVar = this.zza.zzh;
                zzbgl.zza(zzbgkVar, zzbgiVar);
            } catch (IllegalArgumentException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-4555658445556120819L, 7347926428396028492L, -4697319369828708077L, 7891686599744212327L, 1490038275330627925L}).toString(), e);
            }
        }
    }
}
