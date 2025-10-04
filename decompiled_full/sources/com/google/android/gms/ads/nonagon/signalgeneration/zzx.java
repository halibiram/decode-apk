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
import java.util.ArrayList;
import java.util.Iterator;
import javax.annotation.Nonnull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzx implements zzgej {
    final /* synthetic */ zzbxi zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzaa zzc;

    public zzx(zzaa zzaaVar, zzbxi zzbxiVar, boolean z) {
        this.zza = zzbxiVar;
        this.zzb = z;
        this.zzc = zzaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        try {
            this.zza.zze(new ObfuscatedString(new long[]{6019268277941095437L, 3472967085232947830L, 7722493010725676857L}).toString() + th.getMessage());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-8368904532349133651L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(@Nonnull Object obj) {
        boolean z;
        String str;
        Uri zzac;
        zzfny zzfnyVar;
        zzfny zzfnyVar2;
        ArrayList arrayList = (ArrayList) obj;
        try {
            this.zza.zzf(arrayList);
            z = this.zzc.zzu;
            if (!z && !this.zzb) {
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (this.zzc.zzS(uri)) {
                    str = this.zzc.zzD;
                    new ObfuscatedString(new long[]{7207817916845068492L, -7224805966820171759L}).toString();
                    zzac = zzaa.zzac(uri, str, new ObfuscatedString(new long[]{-2254102804557915920L, -8768027412930466960L}).toString());
                    zzfnyVar = this.zzc.zzt;
                    zzfnyVar.zzc(zzac.toString(), null);
                } else if (((Boolean) zzba.zzc().zza(zzbgc.zzhx)).booleanValue()) {
                    zzfnyVar2 = this.zzc.zzt;
                    zzfnyVar2.zzc(uri.toString(), null);
                }
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1121467417669548323L}).toString(), e);
        }
    }
}
