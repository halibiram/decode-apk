package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbqu implements zzbng {
    final /* synthetic */ long zza;
    final /* synthetic */ zzbri zzb;
    final /* synthetic */ zzbqe zzc;
    final /* synthetic */ zzbrj zzd;

    public zzbqu(zzbrj zzbrjVar, long j, zzbri zzbriVar, zzbqe zzbqeVar) {
        this.zza = j;
        this.zzb = zzbriVar;
        this.zzc = zzbqeVar;
        this.zzd = zzbrjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        Object obj2;
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{1118126287024309026L, -4588982486562999655L, 7796970621691259590L, 8657726744365246968L, 8123881621152149970L, -3040087561002056487L}).toString() + (com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - this.zza) + new ObfuscatedString(new long[]{5894401712965801851L, 7963932891731808559L}).toString());
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-6694918660520910964L, 5704612983467088040L, -5319449333799149268L, 2318075907329204424L, -2003503267720161160L, -5581877627063361440L, -4054976560351627497L, 6708133582843299006L, 223893515344452457L}).toString());
        obj2 = this.zzd.zza;
        synchronized (obj2) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{8134940989055275724L, 8625003372998686755L, 4734046326597696904L, -1429834776334972051L, -9160874297845707229L, -2270959050959119860L, -8191592211823727180L, -7196286148245608118L}).toString());
            if (this.zzb.zze() != -1 && this.zzb.zze() != 1) {
                this.zzd.zzi = 0;
                zzbqe zzbqeVar = this.zzc;
                zzbqeVar.zzq(new ObfuscatedString(new long[]{6243681726773755778L, -3059494835988485007L}).toString(), zzbnf.zzg);
                zzbqeVar.zzq(new ObfuscatedString(new long[]{269649848562520646L, 774019184545870934L}).toString(), zzbnf.zzo);
                this.zzb.zzh(this.zzc);
                this.zzd.zzh = this.zzb;
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{978340337881830342L, -623086505301531006L, 2380794837602113414L, -6817618402007563166L, 4927590129108753461L}).toString());
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7865326876568484047L, -4709804317011201277L, 948774130576430128L, 8337973135389960953L, -5304365989191375785L, 220663518149023711L, 895924537477340904L, -5105831999736785530L}).toString());
                return;
            }
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{5324276314283055667L, 4548369899324058975L, 5448325640401008517L, 2324426571068376841L, 687748609238876907L, 2422562681923058416L, 8589984908153161083L, -5662938505078082863L, 6110588571947256740L, 2395679950335591081L, 8654471440456716095L, 3147970353880697610L}).toString());
        }
    }
}
