package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzdwi implements zzfln {
    private final zzdwa zzb;
    private final Clock zzc;
    private final Map zza = new HashMap();
    private final Map zzd = new HashMap();

    public zzdwi(zzdwa zzdwaVar, Set set, Clock clock) {
        zzflg zzflgVar;
        this.zzb = zzdwaVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzdwh zzdwhVar = (zzdwh) it.next();
            Map map = this.zzd;
            zzflgVar = zzdwhVar.zzc;
            map.put(zzflgVar, zzdwhVar);
        }
        this.zzc = clock;
    }

    private final void zze(zzflg zzflgVar, boolean z) {
        zzflg zzflgVar2;
        String obfuscatedString;
        String str;
        zzflgVar2 = ((zzdwh) this.zzd.get(zzflgVar)).zzb;
        if (this.zza.containsKey(zzflgVar2)) {
            if (true != z) {
                obfuscatedString = new ObfuscatedString(new long[]{3308499604750239400L, -1437882303175616121L}).toString();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-8985173626063324032L, 5957979933031429748L}).toString();
            }
            long elapsedRealtime = this.zzc.elapsedRealtime() - ((Long) this.zza.get(zzflgVar2)).longValue();
            zzdwa zzdwaVar = this.zzb;
            Map map = this.zzd;
            Map zza = zzdwaVar.zza();
            str = ((zzdwh) map.get(zzflgVar)).zza;
            zza.put(new ObfuscatedString(new long[]{-6005729498394679636L, -7205236135442306112L}).toString().concat(str), obfuscatedString.concat(String.valueOf(Long.toString(elapsedRealtime))));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzbL(zzflg zzflgVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzbM(zzflg zzflgVar, String str, Throwable th) {
        if (this.zza.containsKey(zzflgVar)) {
            long elapsedRealtime = this.zzc.elapsedRealtime() - ((Long) this.zza.get(zzflgVar)).longValue();
            zzdwa zzdwaVar = this.zzb;
            String valueOf = String.valueOf(str);
            Map zza = zzdwaVar.zza();
            String valueOf2 = String.valueOf(Long.toString(elapsedRealtime));
            zza.put(new ObfuscatedString(new long[]{2749308325474543839L, -8330651865846228764L}).toString().concat(valueOf), new ObfuscatedString(new long[]{3708696563995092075L, -5199684394629367838L}).toString().concat(valueOf2));
        }
        if (this.zzd.containsKey(zzflgVar)) {
            zze(zzflgVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzbN(zzflg zzflgVar, String str) {
        this.zza.put(zzflgVar, Long.valueOf(this.zzc.elapsedRealtime()));
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzd(zzflg zzflgVar, String str) {
        if (this.zza.containsKey(zzflgVar)) {
            long elapsedRealtime = this.zzc.elapsedRealtime() - ((Long) this.zza.get(zzflgVar)).longValue();
            zzdwa zzdwaVar = this.zzb;
            String valueOf = String.valueOf(str);
            Map zza = zzdwaVar.zza();
            String valueOf2 = String.valueOf(Long.toString(elapsedRealtime));
            zza.put(new ObfuscatedString(new long[]{-4540687021073912599L, -2143768344421428106L}).toString().concat(valueOf), new ObfuscatedString(new long[]{-6280597240941291498L, 696396768662832206L}).toString().concat(valueOf2));
        }
        if (this.zzd.containsKey(zzflgVar)) {
            zze(zzflgVar, true);
        }
    }
}
