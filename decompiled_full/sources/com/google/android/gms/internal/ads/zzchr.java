package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzchr implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ long zze;
    final /* synthetic */ long zzf;
    final /* synthetic */ long zzg;
    final /* synthetic */ boolean zzh;
    final /* synthetic */ int zzi;
    final /* synthetic */ int zzj;
    final /* synthetic */ zzchw zzk;

    public zzchr(zzchw zzchwVar, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
        this.zzd = j2;
        this.zze = j3;
        this.zzf = j4;
        this.zzg = j5;
        this.zzh = z;
        this.zzi = i;
        this.zzj = i2;
        this.zzk = zzchwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String obfuscatedString;
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-861248317430930537L, -3442610907337300119L}).toString(), new ObfuscatedString(new long[]{-7794207238114992661L, -914871518633465169L, 9060431020279002535L}).toString());
        hashMap.put(new ObfuscatedString(new long[]{-6626198722487343222L, -2988971856459256146L}).toString(), this.zza);
        hashMap.put(new ObfuscatedString(new long[]{-3802106876052221673L, -5703529471071585202L, 6596083568745877722L}).toString(), this.zzb);
        hashMap.put(new ObfuscatedString(new long[]{-1661998968559050364L, -1258882490468690314L, -3172457270924570800L}).toString(), Long.toString(this.zzc));
        hashMap.put(new ObfuscatedString(new long[]{8953205850226065521L, 372261222036339040L, 8040665266681646046L}).toString(), Long.toString(this.zzd));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue()) {
            hashMap.put(new ObfuscatedString(new long[]{779151022756913984L, 2798596778978987332L, -6152968837692354102L}).toString(), Long.toString(this.zze));
            hashMap.put(new ObfuscatedString(new long[]{-5699228425963424428L, -6579870984133488931L, 6515908052514999212L}).toString(), Long.toString(this.zzf));
            hashMap.put(new ObfuscatedString(new long[]{-1777053610559604014L, -733612202921703147L, -5803765384134507384L}).toString(), Long.toString(this.zzg));
            hashMap.put(new ObfuscatedString(new long[]{1128716217092993326L, -3264135124274887342L, -2749036167173399391L}).toString(), Long.toString(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
        }
        if (true != this.zzh) {
            obfuscatedString = new ObfuscatedString(new long[]{1142599015768173713L, -5806975606354557352L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-2247892503370870669L, 4145028447073416076L}).toString();
        }
        hashMap.put(new ObfuscatedString(new long[]{-1089116148997377479L, 160908871081891326L, 8848325031309681331L}).toString(), obfuscatedString);
        hashMap.put(new ObfuscatedString(new long[]{-6286208690030882748L, -1487520798088649802L, -1269087727704050509L}).toString(), Integer.toString(this.zzi));
        hashMap.put(new ObfuscatedString(new long[]{-7221682152672757555L, -4107813636598047714L, -970896395230439132L, 4102081463623864524L}).toString(), Integer.toString(this.zzj));
        zzchw.zze(this.zzk, new ObfuscatedString(new long[]{1633342009517264409L, 8599930342797213809L, 8986157072118807189L}).toString(), hashMap);
    }
}
