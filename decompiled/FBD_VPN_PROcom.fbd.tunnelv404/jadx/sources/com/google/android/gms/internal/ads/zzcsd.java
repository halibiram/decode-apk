package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcsd implements zzgej {
    final /* synthetic */ zzfny zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzcse zzc;

    public zzcsd(zzcse zzcseVar, zzfny zzfnyVar, String str) {
        this.zza = zzfnyVar;
        this.zzb = str;
        this.zzc = zzcseVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(final Throwable th) {
        zzgey zzgeyVar;
        zzgeyVar = this.zzc.zzg;
        final zzfny zzfnyVar = this.zza;
        final String str = this.zzb;
        zzgeyVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcsb
            @Override // java.lang.Runnable
            public final void run() {
                Context context;
                Context context2;
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjT)).booleanValue();
                zzcsd zzcsdVar = zzcsd.this;
                Throwable th2 = th;
                if (booleanValue) {
                    zzcse zzcseVar = zzcsdVar.zzc;
                    context2 = zzcseVar.zzc;
                    zzcseVar.zzb = zzbxw.zzc(context2);
                    zzcsdVar.zzc.zzb.zzg(th2, new ObfuscatedString(new long[]{4561138559011114932L, 2607118704469198503L, 1761518051605681953L, 7219481294629293767L, -5851498659083589871L, 4556003586816529905L, 2030997943439679454L, 2261579082952422865L}).toString());
                } else {
                    zzcse zzcseVar2 = zzcsdVar.zzc;
                    context = zzcseVar2.zzc;
                    zzcseVar2.zza = zzbxw.zza(context);
                    zzcsdVar.zzc.zza.zzg(th2, new ObfuscatedString(new long[]{-1842484570199777786L, -6195964980642158248L, 1839417625659133535L, -4278854057225493184L, 9145169937758752712L, -754321288573375729L, -8930541596911716832L, -8799666948947385240L}).toString());
                }
                zzfnyVar.zzc(str, null);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzgey zzgeyVar;
        zzcse zzcseVar = this.zzc;
        final zzfny zzfnyVar = this.zza;
        final String str = (String) obj;
        zzgeyVar = zzcseVar.zzg;
        zzgeyVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcsc
            @Override // java.lang.Runnable
            public final void run() {
                zzfny.this.zzc(str, null);
            }
        });
    }
}
