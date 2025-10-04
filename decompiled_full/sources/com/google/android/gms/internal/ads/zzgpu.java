package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzgpu {
    private static final zzgnt zza = new zzgnt() { // from class: com.google.android.gms.internal.ads.zzgpr
        @Override // com.google.android.gms.internal.ads.zzgnt
        public final zzggc zza(zzggq zzggqVar, Integer num) {
            return zzgpu.zzb((zzgpz) zzggqVar, null);
        }
    };
    private static final zzgoq zzb = zzgoq.zzb(new zzgoo() { // from class: com.google.android.gms.internal.ads.zzgps
        @Override // com.google.android.gms.internal.ads.zzgoo
        public final Object zza(zzggc zzggcVar) {
            return zzgpu.zzc((zzgpq) zzggcVar);
        }
    }, zzgpq.class, zzgqf.class);
    private static final zzgoq zzc = zzgoq.zzb(new zzgoo() { // from class: com.google.android.gms.internal.ads.zzgpt
        @Override // com.google.android.gms.internal.ads.zzgoo
        public final Object zza(zzggc zzggcVar) {
            return zzgpu.zza((zzgpq) zzggcVar);
        }
    }, zzgpq.class, zzggp.class);
    private static final zzggd zzd = zzgnm.zzd(new ObfuscatedString(new long[]{-7276153962912080168L, 5743977268763644469L, 8767427882064855756L, 7171975645259738591L, -6966537906234763817L, -919820372336595007L, 6585826726523944041L, -7721073580438889715L}).toString(), zzggp.class, zzgus.zzb, zzgsh.zzh());

    public static /* synthetic */ zzggp zza(zzgpq zzgpqVar) {
        zze(zzgpqVar.zza());
        return zzgxn.zza(zzgpqVar);
    }

    public static /* synthetic */ zzgpq zzb(zzgpz zzgpzVar, Integer num) {
        zze(zzgpzVar);
        zzgpo zzgpoVar = new zzgpo(null);
        zzgpoVar.zzc(zzgpzVar);
        zzgpoVar.zza(zzgxr.zzc(zzgpzVar.zzc()));
        zzgpoVar.zzb(null);
        return zzgpoVar.zzd();
    }

    public static /* synthetic */ zzgqf zzc(zzgpq zzgpqVar) {
        zze(zzgpqVar.zza());
        return new zzgrm(zzgpqVar);
    }

    public static void zzd(boolean z) {
        int i = zzgqe.zza;
        zzgqe.zze(zzgoe.zzd());
        zzgnu.zzb().zzc(zza, zzgpz.class);
        zzgob.zza().zze(zzb);
        zzgob.zza().zze(zzc);
        zzgoa zzb2 = zzgoa.zzb();
        HashMap hashMap = new HashMap();
        String obfuscatedString = new ObfuscatedString(new long[]{-6365457751761493487L, 9134492684874162534L}).toString();
        zzgpz zzgpzVar = zzgrk.zze;
        hashMap.put(obfuscatedString, zzgpzVar);
        hashMap.put(new ObfuscatedString(new long[]{8043089441393169463L, -7120884854833574616L, 4180089206527464934L}).toString(), zzgpzVar);
        zzgpw zzgpwVar = new zzgpw(null);
        zzgpwVar.zza(32);
        zzgpwVar.zzb(16);
        zzgpwVar.zzc(zzgpx.zzd);
        hashMap.put(new ObfuscatedString(new long[]{-8825766502992593535L, 9063239046013659466L, 2383713612676908237L}).toString(), zzgpwVar.zzd());
        zzb2.zzd(DesugarCollections.unmodifiableMap(hashMap));
        zzghb.zze(zzd, true);
    }

    private static void zze(zzgpz zzgpzVar) {
        if (zzgpzVar.zzc() == 32) {
        } else {
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{8480547567753596867L, -6782267257478251154L, -910746957963155571L, -5805082090723580331L, -1115505219940054453L, -8387973237659484875L}).toString());
        }
    }
}
