package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzgjd {
    public static final /* synthetic */ int zza = 0;
    private static final zzgoq zzb = zzgoq.zzb(new zzgoo() { // from class: com.google.android.gms.internal.ads.zzgja
        @Override // com.google.android.gms.internal.ads.zzgoo
        public final Object zza(zzggc zzggcVar) {
            return zzgwo.zzb((zzgiz) zzggcVar);
        }
    }, zzgiz.class, zzgfs.class);
    private static final zzggd zzc = zzgnm.zzd(new ObfuscatedString(new long[]{-7816743427432369286L, -4029804618601309050L, 7419698606630039939L, -591463354873619327L, -97078271761393056L, -894828916216275735L, -7998840797829026075L}).toString(), zzgfs.class, zzgus.zzb, zzgto.zzg());
    private static final zzgnv zzd = new zzgnv() { // from class: com.google.android.gms.internal.ads.zzgjb
    };
    private static final zzgnt zze = new zzgnt() { // from class: com.google.android.gms.internal.ads.zzgjc
        @Override // com.google.android.gms.internal.ads.zzgnt
        public final zzggc zza(zzggq zzggqVar, Integer num) {
            zzgji zzgjiVar = (zzgji) zzggqVar;
            int i = zzgjd.zza;
            if (zzgjiVar.zzb() != 24) {
                zzgix zzgixVar = new zzgix(null);
                zzgixVar.zzc(zzgjiVar);
                zzgixVar.zza(null);
                zzgixVar.zzb(zzgxr.zzc(zzgjiVar.zzb()));
                return zzgixVar.zzd();
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-8111713628807558836L, 342651054243512391L, -1935441595193779003L, -7796917341446253177L, -1669942063813569847L, -5733203617938033182L}).toString());
        }
    };

    public static void zza(boolean z) {
        int i = zzgmd.zza;
        zzgmd.zze(zzgoe.zzd());
        zzgob.zza().zze(zzb);
        zzgoa zzb2 = zzgoa.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{7039536489565670461L, 4853582080665291141L, -7511536138643861442L}).toString(), zzglr.zza);
        zzgjf zzgjfVar = new zzgjf(null);
        zzgjfVar.zza(12);
        zzgjfVar.zzb(16);
        zzgjfVar.zzc(16);
        zzgjg zzgjgVar = zzgjg.zzc;
        zzgjfVar.zzd(zzgjgVar);
        hashMap.put(new ObfuscatedString(new long[]{-5139071182890517140L, 336858867232430927L, -870481695051749306L}).toString(), zzgjfVar.zze());
        hashMap.put(new ObfuscatedString(new long[]{-4141608693018417879L, 7012700060230062396L, -7605846686737260679L}).toString(), zzglr.zzb);
        zzgjf zzgjfVar2 = new zzgjf(null);
        zzgjfVar2.zza(12);
        zzgjfVar2.zzb(32);
        zzgjfVar2.zzc(16);
        zzgjfVar2.zzd(zzgjgVar);
        hashMap.put(new ObfuscatedString(new long[]{6771906622339055121L, 2813057552708627358L, 985211029146360737L}).toString(), zzgjfVar2.zze());
        zzb2.zzd(DesugarCollections.unmodifiableMap(hashMap));
        zzgnw.zza().zzb(zzd, zzgji.class);
        zzgnu.zzb().zzc(zze, zzgji.class);
        zzgnd.zzc().zzf(zzc, 2, true);
    }
}
