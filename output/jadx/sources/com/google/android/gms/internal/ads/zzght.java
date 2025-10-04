package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzght {
    public static final /* synthetic */ int zza = 0;
    private static final zzgoq zzb = zzgoq.zzb(new zzgoo() { // from class: com.google.android.gms.internal.ads.zzghq
        @Override // com.google.android.gms.internal.ads.zzgoo
        public final Object zza(zzggc zzggcVar) {
            return zzgwr.zzb((zzghp) zzggcVar);
        }
    }, zzghp.class, zzgfs.class);
    private static final zzggd zzc = zzgnm.zzd(new ObfuscatedString(new long[]{814553752711780628L, 7951793430675956226L, 8454521905816589553L, -39043598564124863L, -3433621930599101140L, 5152753487700324178L, 6440186138888938632L, 8070833023971666040L}).toString(), zzgfs.class, zzgus.zzb, zzgsq.zzh());
    private static final zzgnv zzd = new zzgnv() { // from class: com.google.android.gms.internal.ads.zzghr
    };
    private static final zzgnt zze = new zzgnt() { // from class: com.google.android.gms.internal.ads.zzghs
        @Override // com.google.android.gms.internal.ads.zzgnt
        public final zzggc zza(zzggq zzggqVar, Integer num) {
            zzghz zzghzVar = (zzghz) zzggqVar;
            int i = zzght.zza;
            if (zzghzVar.zzb() != 16 && zzghzVar.zzb() != 32) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-1959445741721750732L, 323145450745017532L, -5504453397779356924L, 53813301525537823L, -202849729633446998L, 6623951508615078769L}).toString());
            }
            zzghn zzghnVar = new zzghn(null);
            zzghnVar.zzd(zzghzVar);
            zzghnVar.zzc(null);
            zzghnVar.zza(zzgxr.zzc(zzghzVar.zzb()));
            zzghnVar.zzb(zzgxr.zzc(zzghzVar.zzc()));
            return zzghnVar.zze();
        }
    };

    public static void zza(boolean z) {
        int i = zzgie.zza;
        zzgie.zze(zzgoe.zzd());
        zzgob.zza().zze(zzb);
        zzgoa zzb2 = zzgoa.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{4331074091881937323L, 1528121693849147865L, 935503480763928203L, -5377951727091805567L}).toString(), zzglr.zze);
        zzghv zzghvVar = new zzghv(null);
        zzghvVar.zza(16);
        zzghvVar.zzc(32);
        zzghvVar.zze(16);
        zzghvVar.zzd(16);
        zzghw zzghwVar = zzghw.zzc;
        zzghvVar.zzb(zzghwVar);
        zzghx zzghxVar = zzghx.zzc;
        zzghvVar.zzf(zzghxVar);
        hashMap.put(new ObfuscatedString(new long[]{8732333164175620204L, -502909474520796185L, 8510798928458913697L, 257189760705015059L, -466363701106850553L}).toString(), zzghvVar.zzg());
        hashMap.put(new ObfuscatedString(new long[]{6556440337685886285L, 7577674003492890719L, 7841070184789504170L, 2124746404278908745L}).toString(), zzglr.zzf);
        zzghv zzghvVar2 = new zzghv(null);
        zzghvVar2.zza(32);
        zzghvVar2.zzc(32);
        zzghvVar2.zze(32);
        zzghvVar2.zzd(16);
        zzghvVar2.zzb(zzghwVar);
        zzghvVar2.zzf(zzghxVar);
        hashMap.put(new ObfuscatedString(new long[]{7018032051592116020L, -2162614001148636632L, 6065169271109111474L, -4742637170202057042L, 3343131963282464112L}).toString(), zzghvVar2.zzg());
        zzb2.zzd(DesugarCollections.unmodifiableMap(hashMap));
        zzgnw.zza().zzb(zzd, zzghz.class);
        zzgnu.zzb().zzc(zze, zzghz.class);
        zzgnd.zzc().zzf(zzc, 2, true);
    }
}
