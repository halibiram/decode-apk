package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzglw {
    public static final /* synthetic */ int zza = 0;
    private static final zzgoq zzb = zzgoq.zzb(new zzgoo() { // from class: com.google.android.gms.internal.ads.zzglt
        @Override // com.google.android.gms.internal.ads.zzgoo
        public final Object zza(zzggc zzggcVar) {
            return zzgxp.zzb((zzgls) zzggcVar);
        }
    }, zzgls.class, zzgfs.class);
    private static final zzggd zzc = zzgnm.zzd(new ObfuscatedString(new long[]{-236773681623454229L, 6608490216537106816L, 7088848728124634310L, 990237152625997579L, 1299007961246653143L, -5423453552156919669L, -6791521390680160075L, -8172442420388994605L, 2429849275735050639L}).toString(), zzgfs.class, zzgus.zzb, zzgwf.zzg());
    private static final zzgnv zzd = new zzgnv() { // from class: com.google.android.gms.internal.ads.zzglu
    };
    private static final zzgnt zze = new zzgnt() { // from class: com.google.android.gms.internal.ads.zzglv
        @Override // com.google.android.gms.internal.ads.zzgnt
        public final zzggc zza(zzggq zzggqVar, Integer num) {
            int i = zzglw.zza;
            return zzgls.zza(((zzgly) zzggqVar).zzb(), zzgxr.zzc(32), null);
        }
    };

    public static void zza(boolean z) {
        int i = zzgms.zza;
        zzgms.zze(zzgoe.zzd());
        zzgob.zza().zze(zzb);
        zzgoa zzb2 = zzgoa.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-508757706989603476L, 4699616326295524296L, 4811661863370274303L, 4299363905454168989L}).toString(), zzgly.zzc(zzglx.zza));
        hashMap.put(new ObfuscatedString(new long[]{-5981076366873472640L, 1462161648206441405L, 3630504972705525134L, 5924281849620243552L}).toString(), zzgly.zzc(zzglx.zzc));
        zzb2.zzd(DesugarCollections.unmodifiableMap(hashMap));
        zzgnu.zzb().zzc(zze, zzgly.class);
        zzgnw.zza().zzb(zzd, zzgly.class);
        zzghb.zze(zzc, true);
    }
}
