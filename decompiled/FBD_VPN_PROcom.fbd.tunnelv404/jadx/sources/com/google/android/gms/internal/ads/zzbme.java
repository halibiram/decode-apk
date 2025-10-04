package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final /* synthetic */ class zzbme implements zzbng {
    public final /* synthetic */ zzdiu zza;
    public final /* synthetic */ zzcse zzb;

    public /* synthetic */ zzbme(zzdiu zzdiuVar, zzcse zzcseVar) {
        this.zza = zzdiuVar;
        this.zzb = zzcseVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        zzcjk zzcjkVar = (zzcjk) obj;
        zzbnf.zzc(map, this.zza);
        final String str = (String) map.get(new ObfuscatedString(new long[]{7187074495344971065L, 5950699886771837192L}).toString());
        if (str == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-6418224940583456039L, 8228709976409693368L, -3739493079945944536L, 4101640500727809506L, -7241241856122424852L}).toString());
            return;
        }
        final zzcse zzcseVar = this.zzb;
        zzgee zzu = zzgee.zzu(zzbnf.zza(zzcjkVar, str));
        zzgdu zzgduVar = new zzgdu() { // from class: com.google.android.gms.internal.ads.zzbmg
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj2) {
                zzcse zzcseVar2;
                String str2 = (String) obj2;
                zzbng zzbngVar = zzbnf.zza;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjL)).booleanValue() && (zzcseVar2 = zzcse.this) != null && zzcse.zzh(str)) {
                    return zzcseVar2.zzb(str2, com.google.android.gms.ads.internal.client.zzay.zze());
                }
                return zzgen.zzh(str2);
            }
        };
        zzgey zzgeyVar = zzcep.zza;
        zzgen.zzr(zzgen.zzn(zzu, zzgduVar, zzgeyVar), new zzbmu(zzcjkVar), zzgeyVar);
    }
}
