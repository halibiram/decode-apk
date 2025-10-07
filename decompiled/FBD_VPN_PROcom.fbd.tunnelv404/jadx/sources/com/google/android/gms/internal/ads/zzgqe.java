package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
final class zzgqe {
    public static final /* synthetic */ int zza = 0;
    private static final zzgxq zzb;
    private static final zzgom zzc;
    private static final zzgoi zzd;
    private static final zzgnl zze;
    private static final zzgnh zzf;

    static {
        zzgxq zza2 = zzgpm.zza(new ObfuscatedString(new long[]{-4506586310915711310L, 1474779409416611695L, 2305548553370592428L, 9189226523670717962L, 7363216484364053075L, 2707794242683146463L, -4003039204629779629L, 4576176882672144246L}).toString());
        zzb = zza2;
        zzc = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzgqa
            @Override // com.google.android.gms.internal.ads.zzgok
            public final zzgpc zza(zzggq zzggqVar) {
                return zzgqe.zzb((zzgpz) zzggqVar);
            }
        }, zzgpz.class, zzgoy.class);
        zzd = zzgoi.zzb(new zzgog() { // from class: com.google.android.gms.internal.ads.zzgqb
            @Override // com.google.android.gms.internal.ads.zzgog
            public final zzggq zza(zzgpc zzgpcVar) {
                return zzgqe.zzd((zzgoy) zzgpcVar);
            }
        }, zza2, zzgoy.class);
        zze = zzgnl.zzb(new zzgnj() { // from class: com.google.android.gms.internal.ads.zzgqc
            @Override // com.google.android.gms.internal.ads.zzgnj
            public final zzgpc zza(zzggc zzggcVar, zzghc zzghcVar) {
                return zzgqe.zza((zzgpq) zzggcVar, zzghcVar);
            }
        }, zzgpq.class, zzgox.class);
        zzf = zzgnh.zzb(new zzgnf() { // from class: com.google.android.gms.internal.ads.zzgqd
            @Override // com.google.android.gms.internal.ads.zzgnf
            public final zzggc zza(zzgpc zzgpcVar, zzghc zzghcVar) {
                return zzgqe.zzc((zzgox) zzgpcVar, zzghcVar);
            }
        }, zza2, zzgox.class);
    }

    public static /* synthetic */ zzgox zza(zzgpq zzgpqVar, zzghc zzghcVar) {
        zzgsg zzc2 = zzgsh.zzc();
        zzc2.zzb(zzg(zzgpqVar.zza()));
        byte[] zzd2 = zzgpqVar.zzd().zzd(zzghcVar);
        zzc2.zza(zzgyl.zzv(zzd2, 0, zzd2.length));
        return zzgox.zza(new ObfuscatedString(new long[]{3676210078387114779L, -870523636912334939L, -8472651388742538889L, -46419453468218642L, 3732556828002990861L, 339497234331398345L, -149738245515240101L, -525577785719495066L}).toString(), ((zzgsh) zzc2.zzal()).zzau(), zzgus.zzb, zzh(zzgpqVar.zza().zze()), zzgpqVar.zze());
    }

    public static /* synthetic */ zzgoy zzb(zzgpz zzgpzVar) {
        zzgux zza2 = zzguy.zza();
        zza2.zzb(new ObfuscatedString(new long[]{-2613198547281200345L, 8095587643516161789L, 3947883498117505302L, 8604963419058149611L, 976369786695682293L, 8415480065773793159L, 5503515950243283749L, -6041595704908989801L}).toString());
        zzgsj zzc2 = zzgsk.zzc();
        zzc2.zzb(zzg(zzgpzVar));
        zzc2.zza(zzgpzVar.zzc());
        zza2.zzc(((zzgsk) zzc2.zzal()).zzau());
        zza2.zza(zzh(zzgpzVar.zze()));
        return zzgoy.zzb((zzguy) zza2.zzal());
    }

    public static /* synthetic */ zzgpq zzc(zzgox zzgoxVar, zzghc zzghcVar) {
        if (zzgoxVar.zzg().equals(new ObfuscatedString(new long[]{-4817105632797747464L, -8513377500154226521L, -6488224043460707370L, 3222359732719216758L, 6693608931836029868L, 1555859951778730960L, 5822222676364679854L, 7068161678233615681L}).toString())) {
            try {
                zzgsh zze2 = zzgsh.zze(zzgoxVar.zze(), zzgzf.zza());
                if (zze2.zza() == 0) {
                    zzgpw zzgpwVar = new zzgpw(null);
                    zzgpwVar.zza(zze2.zzg().zzd());
                    zzgpwVar.zzb(zze2.zzf().zza());
                    zzgpwVar.zzc(zzf(zzgoxVar.zzc()));
                    zzgpz zzd2 = zzgpwVar.zzd();
                    zzgpo zzgpoVar = new zzgpo(null);
                    zzgpoVar.zzc(zzd2);
                    zzgpoVar.zza(zzgxr.zzb(zze2.zzg().zzA(), zzghcVar));
                    zzgpoVar.zzb(zzgoxVar.zzf());
                    return zzgpoVar.zzd();
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{5218776073994291482L, -2033053772874319933L, 2755948836327024474L, -1445065597558953170L, 3260612457500752127L}).toString());
            } catch (zzhag | IllegalArgumentException unused) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-5897992275614869962L, 2803979589677986351L, 8588654215680974621L, -6310008469717661411L, 1357310057194516051L}).toString());
            }
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-2250240059892186385L, 1805486397084069741L, 4925249409785148948L, 5888573206708054817L, 2010069010076803120L, -1176287523703508768L, -663420928188307794L, -6881782162972416900L, 2926146960576796353L}).toString());
    }

    public static /* synthetic */ zzgpz zzd(zzgoy zzgoyVar) {
        if (zzgoyVar.zzc().zzh().equals(new ObfuscatedString(new long[]{1688499637524134764L, 1773678928935248584L, 1038695061930431629L, 3827982370075815202L, -8381671404612568657L, -1757162922114830561L, 8992012560176220560L, 569550599014309610L}).toString())) {
            try {
                zzgsk zze2 = zzgsk.zze(zzgoyVar.zzc().zzg(), zzgzf.zza());
                zzgpw zzgpwVar = new zzgpw(null);
                zzgpwVar.zza(zze2.zza());
                zzgpwVar.zzb(zze2.zzf().zza());
                zzgpwVar.zzc(zzf(zzgoyVar.zzc().zzf()));
                return zzgpwVar.zzd();
            } catch (zzhag e) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{297576400530769208L, -491081136793550299L, -6282301928742289444L, -2964979986312672538L, -855482646600830624L, -5083738176046278653L}).toString(), e);
            }
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3559617154636208632L, 3382109449622140650L, -7880077079608885133L, 6863583849523814392L, -5219986280937741908L, 5688981964580070874L, -6772635233099616768L, 7296082683408291597L, 8119724165679358874L, 5427460370910455898L}).toString().concat(String.valueOf(zzgoyVar.zzc().zzh())));
    }

    public static void zze(zzgoe zzgoeVar) {
        zzgoeVar.zzj(zzc);
        zzgoeVar.zzi(zzd);
        zzgoeVar.zzh(zze);
        zzgoeVar.zzg(zzf);
    }

    private static zzgpx zzf(zzgvz zzgvzVar) {
        zzgvz zzgvzVar2 = zzgvz.zza;
        int ordinal = zzgvzVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal == 4) {
                        return zzgpx.zzb;
                    }
                    int zza2 = zzgvzVar.zza();
                    throw new GeneralSecurityException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8572635098929729179L, -5602859942658052373L, 2645406139672891292L, 5636124319933772407L, -3051427094726956682L, 8334423093862234693L}), new StringBuilder(), zza2));
                }
                return zzgpx.zzd;
            }
            return zzgpx.zzc;
        }
        return zzgpx.zza;
    }

    private static zzgsn zzg(zzgpz zzgpzVar) {
        zzgsm zzc2 = zzgsn.zzc();
        zzc2.zza(zzgpzVar.zzb());
        return (zzgsn) zzc2.zzal();
    }

    private static zzgvz zzh(zzgpx zzgpxVar) {
        if (zzgpx.zza.equals(zzgpxVar)) {
            return zzgvz.zzb;
        }
        if (zzgpx.zzb.equals(zzgpxVar)) {
            return zzgvz.zze;
        }
        if (zzgpx.zzd.equals(zzgpxVar)) {
            return zzgvz.zzd;
        }
        if (zzgpx.zzc.equals(zzgpxVar)) {
            return zzgvz.zzc;
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-6595937036891357148L, 2948361700174757652L, 6337217359385859360L, 8795884881398530040L, -7002528938995272050L}).toString().concat(String.valueOf(zzgpxVar)));
    }
}
