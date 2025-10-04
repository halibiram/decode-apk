package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzgil {
    public static final /* synthetic */ int zza = 0;
    private static final zzgoq zzb = zzgoq.zzb(new zzgoo() { // from class: com.google.android.gms.internal.ads.zzgij
        @Override // com.google.android.gms.internal.ads.zzgoo
        public final Object zza(zzggc zzggcVar) {
            return zzgwn.zzb((zzgii) zzggcVar);
        }
    }, zzgii.class, zzgfs.class);
    private static final zzggd zzc = zzgnm.zzd(new ObfuscatedString(new long[]{4496193662658802866L, -3414643734430512115L, -4744463390078653762L, -2181975923362332716L, -5126661430898853805L, 1853166934946999863L, -7519987816734331705L}).toString(), zzgfs.class, zzgus.zzb, zzgtf.zzh());
    private static final zzgnt zzd = new zzgnt() { // from class: com.google.android.gms.internal.ads.zzgik
        @Override // com.google.android.gms.internal.ads.zzgnt
        public final zzggc zza(zzggq zzggqVar, Integer num) {
            zzgiq zzgiqVar = (zzgiq) zzggqVar;
            int i = zzgil.zza;
            if (zzgiqVar.zzc() != 24) {
                zzgig zzgigVar = new zzgig(null);
                zzgigVar.zzc(zzgiqVar);
                zzgigVar.zza(null);
                zzgigVar.zzb(zzgxr.zzc(zzgiqVar.zzc()));
                return zzgigVar.zzd();
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{3942768322433941292L, -1025986817269091806L, 3187159146014336117L, 1300527779976977977L, -1822538753000888241L, -4037562124670385737L}).toString());
        }
    };

    public static void zza(boolean z) {
        int i = zzgiv.zza;
        zzgiv.zze(zzgoe.zzd());
        zzgob.zza().zze(zzb);
        zzgoa zzb2 = zzgoa.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-1627313784259133632L, 5287742917755580552L, -4796294797913900380L}).toString(), zzglr.zzc);
        zzgin zzginVar = new zzgin(null);
        zzginVar.zza(16);
        zzginVar.zzb(16);
        zzginVar.zzc(16);
        zzgio zzgioVar = zzgio.zzc;
        zzginVar.zzd(zzgioVar);
        hashMap.put(new ObfuscatedString(new long[]{-3492370810424422669L, -1117867404960505490L, 8091282467243714286L}).toString(), zzginVar.zze());
        hashMap.put(new ObfuscatedString(new long[]{5654474134157772839L, -5234956031034904481L, -2123056458400280235L}).toString(), zzglr.zzd);
        zzgin zzginVar2 = new zzgin(null);
        zzginVar2.zza(16);
        zzginVar2.zzb(32);
        zzginVar2.zzc(16);
        zzginVar2.zzd(zzgioVar);
        hashMap.put(new ObfuscatedString(new long[]{1644385781075775181L, -3642257712297152499L, 342537772925454981L}).toString(), zzginVar2.zze());
        zzb2.zzd(DesugarCollections.unmodifiableMap(hashMap));
        zzgnu.zzb().zzc(zzd, zzgiq.class);
        zzghb.zze(zzc, true);
    }
}
