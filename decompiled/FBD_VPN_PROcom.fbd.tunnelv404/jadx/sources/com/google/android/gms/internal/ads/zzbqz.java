package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbqz implements zzcew {
    final /* synthetic */ zzbri zza;
    final /* synthetic */ zzfmo zzb;
    final /* synthetic */ zzbrj zzc;

    public zzbqz(zzbrj zzbrjVar, zzbri zzbriVar, zzfmo zzfmoVar) {
        this.zza = zzbriVar;
        this.zzb = zzfmoVar;
        this.zzc = zzbrjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcew
    public final void zza() {
        Object obj;
        zzfnc zzfncVar;
        zzfnc zzfncVar2;
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{8935373328498770289L, 8876959058480874996L, 6292921086426421307L, -7142960629956814996L, 4736880914755255685L, 8606811021224043618L, 255512467945783271L, 4187890972728499477L, -6140579955983438245L}).toString());
        obj = this.zzc.zza;
        synchronized (obj) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3870442960892507902L, 1766099844441960148L, -1788840359722904615L, -2802258258610806815L, -1802725030436945701L, -7407871092028842435L, 8240242274579861172L}).toString());
                this.zzc.zzi = 1;
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-7363065772323399558L, 5025517876750148739L, -3609588045512741419L, 7419812122814156956L, 4184565187311388680L, -406312556520397187L, 4621343514901681898L, -3372033597239102087L, -6866828065405737491L}).toString());
                this.zza.zzb();
                if (((Boolean) zzbht.zzd.zze()).booleanValue()) {
                    zzbrj zzbrjVar = this.zzc;
                    zzfncVar = zzbrjVar.zze;
                    if (zzfncVar != null) {
                        zzfncVar2 = zzbrjVar.zze;
                        zzfmo zzfmoVar = this.zzb;
                        zzfmoVar.zzc(new ObfuscatedString(new long[]{-5651762252978650014L, 1839893352294593740L, -6141480903145719519L, 6607249206443994712L, -1500957490764564456L}).toString());
                        zzfmoVar.zzf(false);
                        zzfncVar2.zzb(zzfmoVar.zzl());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-2367135963894385609L, -3096419361544886191L, -2233779043294653465L, -4571352720623260983L, -6216217349144072410L, 8889419090720198518L, -502253239267281558L}).toString());
    }
}
