package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbxi;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzfny;
import com.google.android.gms.internal.ads.zzgej;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzy implements zzgej {
    final /* synthetic */ zzbxi zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzaa zzc;

    public zzy(zzaa zzaaVar, zzbxi zzbxiVar, boolean z) {
        this.zza = zzbxiVar;
        this.zzb = z;
        this.zzc = zzaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        try {
            this.zza.zze(new ObfuscatedString(new long[]{-4351457605775761018L, 3553425545822271737L, -4805680588060926722L}).toString() + th.getMessage());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{7578732995962344308L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(@Nonnull Object obj) {
        boolean z;
        String str;
        Uri zzac;
        zzfny zzfnyVar;
        zzfny zzfnyVar2;
        List<Uri> list = (List) obj;
        try {
            zzaa.zzI(this.zzc, list);
            this.zza.zzf(list);
            z = this.zzc.zzv;
            if (!z && !this.zzb) {
                return;
            }
            for (Uri uri : list) {
                if (this.zzc.zzR(uri)) {
                    str = this.zzc.zzD;
                    new ObfuscatedString(new long[]{-9137997221761747545L, -3663300391919842273L}).toString();
                    zzac = zzaa.zzac(uri, str, new ObfuscatedString(new long[]{-2254102804557915920L, -8768027412930466960L}).toString());
                    zzfnyVar = this.zzc.zzt;
                    zzfnyVar.zzc(zzac.toString(), null);
                } else if (((Boolean) zzba.zzc().zza(zzbgc.zzhx)).booleanValue()) {
                    zzfnyVar2 = this.zzc.zzt;
                    zzfnyVar2.zzc(uri.toString(), null);
                }
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-5328546462817174452L}).toString(), e);
        }
    }
}
