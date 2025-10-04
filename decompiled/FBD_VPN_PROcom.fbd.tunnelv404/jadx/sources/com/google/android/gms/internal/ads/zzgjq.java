package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* loaded from: classes2.dex */
public final class zzgjq {
    private static final zzgoq zza = zzgoq.zzb(new zzgoo() { // from class: com.google.android.gms.internal.ads.zzgjn
        @Override // com.google.android.gms.internal.ads.zzgoo
        public final Object zza(zzggc zzggcVar) {
            return zzgmu.zzb((zzgjm) zzggcVar);
        }
    }, zzgjm.class, zzgfs.class);
    private static final zzgnt zzb = new zzgnt() { // from class: com.google.android.gms.internal.ads.zzgjo
        @Override // com.google.android.gms.internal.ads.zzgnt
        public final zzggc zza(zzggq zzggqVar, Integer num) {
            zzgjv zzgjvVar = (zzgjv) zzggqVar;
            zzgjk zzgjkVar = new zzgjk(null);
            zzgjkVar.zzc(zzgjvVar);
            zzgjkVar.zza(null);
            zzgjkVar.zzb(zzgxr.zzc(zzgjvVar.zzb()));
            return zzgjkVar.zzd();
        }
    };
    private static final zzgnv zzc = new zzgnv() { // from class: com.google.android.gms.internal.ads.zzgjp
    };
    private static final zzggd zzd = zzgnm.zzd(new ObfuscatedString(new long[]{-5189784077055229332L, 8759374368851176240L, 3351724680175676306L, -7839573266991949905L, 6676197839406395150L, -2425487523888225966L, -9197378037220395675L, -4164248083024819558L}).toString(), zzgfs.class, zzgus.zzb, zzgtu.zzg());

    public static void zza(boolean z) {
        int i = zzgka.zza;
        zzgka.zze(zzgoe.zzd());
        if (zzb()) {
            zzgob.zza().zze(zza);
            zzgoa zzb2 = zzgoa.zzb();
            HashMap hashMap = new HashMap();
            zzgjs zzgjsVar = new zzgjs(null);
            zzgjsVar.zza(16);
            zzgjt zzgjtVar = zzgjt.zza;
            zzgjsVar.zzb(zzgjtVar);
            hashMap.put(new ObfuscatedString(new long[]{-7441860847904619266L, 1560795479828100131L, 6706180781360486521L}).toString(), zzgjsVar.zzc());
            zzgjs zzgjsVar2 = new zzgjs(null);
            zzgjsVar2.zza(16);
            zzgjt zzgjtVar2 = zzgjt.zzc;
            zzgjsVar2.zzb(zzgjtVar2);
            hashMap.put(new ObfuscatedString(new long[]{-7201479070572500864L, -5435111301888509603L, -2429240303512972397L, -7193534057751172754L}).toString(), zzgjsVar2.zzc());
            zzgjs zzgjsVar3 = new zzgjs(null);
            zzgjsVar3.zza(32);
            zzgjsVar3.zzb(zzgjtVar);
            hashMap.put(new ObfuscatedString(new long[]{-5228496289608814881L, 7406086080488366903L, -4104553168501423208L}).toString(), zzgjsVar3.zzc());
            zzgjs zzgjsVar4 = new zzgjs(null);
            zzgjsVar4.zza(32);
            zzgjsVar4.zzb(zzgjtVar2);
            hashMap.put(new ObfuscatedString(new long[]{-1948878158825090378L, -895860834121140039L, 3502319530914498180L, -6072397243760759216L}).toString(), zzgjsVar4.zzc());
            zzb2.zzd(DesugarCollections.unmodifiableMap(hashMap));
            zzgnw.zza().zzb(zzc, zzgjv.class);
            zzgnu.zzb().zzc(zzb, zzgjv.class);
            zzghb.zze(zzd, true);
        }
    }

    private static boolean zzb() {
        try {
            Cipher.getInstance(new ObfuscatedString(new long[]{-8865386862275350264L, -5371005026578665559L, 1617523984144193145L, -2863435465027035442L}).toString());
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
            return false;
        }
    }
}
