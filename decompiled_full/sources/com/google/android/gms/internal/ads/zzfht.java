package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzfht {
    private final zzfgm zza;
    private final zzfgp zzb;
    private final zzehh zzc;
    private final zzfny zzd;
    private final zzfmz zze;
    private final zzcse zzf;

    @VisibleForTesting
    public zzfht(zzehh zzehhVar, zzfny zzfnyVar, zzfgm zzfgmVar, zzfgp zzfgpVar, zzcse zzcseVar, zzfmz zzfmzVar) {
        this.zza = zzfgmVar;
        this.zzb = zzfgpVar;
        this.zzc = zzehhVar;
        this.zzd = zzfnyVar;
        this.zzf = zzcseVar;
        this.zze = zzfmzVar;
    }

    public final void zza(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzb((String) it.next(), 2);
        }
    }

    public final void zzb(String str, int i) {
        if (!this.zza.zzaj) {
            this.zzd.zzc(str, this.zze);
        } else {
            this.zzc.zzd(new zzehj(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), this.zzb.zzb, str, i));
        }
    }

    public final void zzc(List list, int i) {
        ListenableFuture zzh;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjL)).booleanValue() && zzcse.zzh(str)) {
                zzh = this.zzf.zzb(str, com.google.android.gms.ads.internal.client.zzay.zze());
            } else {
                zzh = zzgen.zzh(str);
            }
            zzgen.zzr(zzh, new zzfhs(this, i), zzcep.zza);
        }
    }
}
