package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzchs implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ int zzc;
    final /* synthetic */ int zzd;
    final /* synthetic */ long zze;
    final /* synthetic */ long zzf;
    final /* synthetic */ boolean zzg;
    final /* synthetic */ int zzh;
    final /* synthetic */ int zzi;
    final /* synthetic */ zzchw zzj;

    public zzchs(zzchw zzchwVar, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = j;
        this.zzf = j2;
        this.zzg = z;
        this.zzh = i3;
        this.zzi = i4;
        this.zzj = zzchwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String obfuscatedString;
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-4377684314963872062L, 6040693421100294710L}).toString(), new ObfuscatedString(new long[]{1192478535603439640L, -4624253677342362976L, -1146040801294496312L}).toString());
        hashMap.put(new ObfuscatedString(new long[]{-6633978361305107555L, 273515942393509062L}).toString(), this.zza);
        hashMap.put(new ObfuscatedString(new long[]{8879490128270666205L, -7028206462360241137L, 7734312286199768922L}).toString(), this.zzb);
        hashMap.put(new ObfuscatedString(new long[]{-3428510604402880259L, -4313110256677172294L, -3368227193799820228L}).toString(), Integer.toString(this.zzc));
        hashMap.put(new ObfuscatedString(new long[]{4218345029135435975L, 1219444246319058449L, 137716424011729917L}).toString(), Integer.toString(this.zzd));
        hashMap.put(new ObfuscatedString(new long[]{2286274764431781718L, -496207566159475983L, -6709211025381592525L}).toString(), Long.toString(this.zze));
        hashMap.put(new ObfuscatedString(new long[]{-4145792991265155088L, -6775133426594292385L, -4183857285638088011L}).toString(), Long.toString(this.zzf));
        if (true != this.zzg) {
            obfuscatedString = new ObfuscatedString(new long[]{-7326229481076524186L, 31823069829418396L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-7959896669819748207L, -8218070810995071L}).toString();
        }
        hashMap.put(new ObfuscatedString(new long[]{-2450450066496631277L, 3658184769654882418L, 6356819316994400448L}).toString(), obfuscatedString);
        hashMap.put(new ObfuscatedString(new long[]{8539606850937108613L, -1155391895133168821L, -7018173521289214907L}).toString(), Integer.toString(this.zzh));
        hashMap.put(new ObfuscatedString(new long[]{6861322155553766803L, -3533029444061781573L, 1992815818789631827L, -8305903322494825049L}).toString(), Integer.toString(this.zzi));
        zzchw.zze(this.zzj, new ObfuscatedString(new long[]{4017555157276994832L, -7779277705518086452L, 1129293001349543173L}).toString(), hashMap);
    }
}
