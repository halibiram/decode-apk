package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzatu extends zzats {
    public String zza;
    public long zzb;
    public String zzc;
    public String zzd;
    public String zze;

    public zzatu() {
        this.zza = new ObfuscatedString(new long[]{4699635599355374733L, 1548823114978381223L}).toString();
        this.zzb = -1L;
        this.zzc = new ObfuscatedString(new long[]{5556009117804434838L, 6477385261492009636L}).toString();
        this.zzd = new ObfuscatedString(new long[]{2525150083979036944L, -5995834566123449545L}).toString();
        this.zze = new ObfuscatedString(new long[]{8677835795290512721L, -8864571955797176174L}).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final HashMap zzb() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, this.zza);
        hashMap.put(4, this.zze);
        hashMap.put(3, this.zzd);
        hashMap.put(2, this.zzc);
        hashMap.put(1, Long.valueOf(this.zzb));
        return hashMap;
    }

    public zzatu(String str) {
        this.zza = new ObfuscatedString(new long[]{147636793739060822L, 4365323730790223350L}).toString();
        this.zzb = -1L;
        this.zzc = new ObfuscatedString(new long[]{1093786828500987959L, -1711072806864192047L}).toString();
        this.zzd = new ObfuscatedString(new long[]{3382006433111047743L, 5989123316729779067L}).toString();
        this.zze = new ObfuscatedString(new long[]{-7745859512495399850L, -111063652746618978L}).toString();
        HashMap zza = zzats.zza(str);
        if (zza != null) {
            this.zza = zza.get(0) == null ? new ObfuscatedString(new long[]{-1534004074597759388L, 4751923406277901129L}).toString() : (String) zza.get(0);
            this.zzb = zza.get(1) != null ? ((Long) zza.get(1)).longValue() : -1L;
            this.zzc = zza.get(2) == null ? new ObfuscatedString(new long[]{-7303138191423868895L, -5181620385342082184L}).toString() : (String) zza.get(2);
            this.zzd = zza.get(3) == null ? new ObfuscatedString(new long[]{-2320962739297887695L, 5106858660993356224L}).toString() : (String) zza.get(3);
            this.zze = zza.get(4) == null ? new ObfuscatedString(new long[]{-6224708492705905043L, -3673221268132591850L}).toString() : (String) zza.get(4);
        }
    }
}
