package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzggm {
    private final zzgvg zza;
    private final List zzb;
    private final zzgrw zzc;

    private zzggm(zzgvg zzgvgVar, List list, zzgrw zzgrwVar) {
        this.zza = zzgvgVar;
        this.zzb = list;
        this.zzc = zzgrwVar;
    }

    public static final zzggm zza(zzgvg zzgvgVar) {
        zzi(zzgvgVar);
        return new zzggm(zzgvgVar, zzh(zzgvgVar));
    }

    public static final zzggm zzb(zzgvg zzgvgVar, zzgrw zzgrwVar) {
        zzi(zzgvgVar);
        return new zzggm(zzgvgVar, zzh(zzgvgVar), zzgrwVar);
    }

    public static final zzggm zzc(zzggq zzggqVar) {
        zzggj zzggjVar = new zzggj();
        zzggh zzgghVar = new zzggh(zzggqVar, null);
        zzgghVar.zze();
        zzgghVar.zzd();
        zzggjVar.zza(zzgghVar);
        return zzggjVar.zzb();
    }

    private static zzgox zzf(zzgvf zzgvfVar) {
        Integer valueOf;
        int zza = zzgvfVar.zza();
        if (zzgvfVar.zzf() == zzgvz.zzd) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(zza);
        }
        try {
            return zzgox.zza(zzgvfVar.zzc().zzg(), zzgvfVar.zzc().zzf(), zzgvfVar.zzc().zzc(), zzgvfVar.zzf(), valueOf);
        } catch (GeneralSecurityException e) {
            throw new zzgpl(new ObfuscatedString(new long[]{6310204713547446922L, 649840766614244813L, -6057389012273515975L, -7506792083514176082L, -99737038863522417L, -1038970067436042139L}).toString(), e);
        }
    }

    @Nullable
    private static Object zzg(zzgnb zzgnbVar, zzgvf zzgvfVar, Class cls) {
        try {
            return zzghb.zzc(zzgvfVar.zzc(), cls);
        } catch (UnsupportedOperationException unused) {
            return null;
        } catch (GeneralSecurityException e) {
            if (e.getMessage().contains(new ObfuscatedString(new long[]{-7747126793538254574L, -1003864337431963845L, -3729583104861250948L, 3082915751068732285L, 9158732744643818060L, -763678394242446050L}).toString()) || e.getMessage().contains(new ObfuscatedString(new long[]{-203688060799261899L, 8984625641457905128L, 6929985036600108855L, -3805296962716023435L, 3921634753037931933L, -3447676014463059527L}).toString())) {
                return null;
            }
            throw e;
        }
    }

    private static List zzh(zzgvg zzgvgVar) {
        zzgge zzggeVar;
        boolean z;
        ArrayList arrayList = new ArrayList(zzgvgVar.zza());
        for (zzgvf zzgvfVar : zzgvgVar.zzh()) {
            int zza = zzgvfVar.zza();
            try {
                zzggc zzb = zzgoe.zzd().zzb(zzf(zzgvfVar), zzghc.zza());
                int zzk = zzgvfVar.zzk() - 2;
                if (zzk != 1) {
                    if (zzk != 2) {
                        if (zzk == 3) {
                            zzggeVar = zzgge.zzc;
                        } else {
                            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-2148633705025625922L, 2140234212314710366L, -4452794858765027411L, -4924781864123054523L}).toString());
                            break;
                        }
                    } else {
                        zzggeVar = zzgge.zzb;
                    }
                } else {
                    zzggeVar = zzgge.zza;
                }
                zzgge zzggeVar2 = zzggeVar;
                if (zza == zzgvgVar.zzc()) {
                    z = true;
                } else {
                    z = false;
                }
                arrayList.add(new zzggl(zzb, zzggeVar2, zza, z, null));
            } catch (GeneralSecurityException unused) {
                arrayList.add(null);
            }
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    private static void zzi(zzgvg zzgvgVar) {
        if (zzgvgVar != null && zzgvgVar.zza() > 0) {
        } else {
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-1591248313274340116L, -8372890969880822965L, -6156135775879067717L}).toString());
        }
    }

    @Nullable
    private static final Object zzj(zzgnb zzgnbVar, zzggc zzggcVar, Class cls) {
        try {
            return zzgob.zza().zzc(zzggcVar, cls);
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }

    public final String toString() {
        Charset charset = zzghf.zza;
        zzgvg zzgvgVar = this.zza;
        zzgvi zza = zzgvl.zza();
        zza.zzb(zzgvgVar.zzc());
        for (zzgvf zzgvfVar : zzgvgVar.zzh()) {
            zzgvj zza2 = zzgvk.zza();
            zza2.zzc(zzgvfVar.zzc().zzg());
            zza2.zzd(zzgvfVar.zzk());
            zza2.zzb(zzgvfVar.zzf());
            zza2.zza(zzgvfVar.zza());
            zza.zza((zzgvk) zza2.zzal());
        }
        return ((zzgvl) zza.zzal()).toString();
    }

    public final zzgvg zzd() {
        return this.zza;
    }

    public final Object zze(zzgfw zzgfwVar, Class cls) {
        Object obj;
        boolean z;
        Class zzb = zzghb.zzb(cls);
        if (zzb != null) {
            zzgvg zzgvgVar = this.zza;
            Charset charset = zzghf.zza;
            int zzc = zzgvgVar.zzc();
            int i = 0;
            boolean z2 = false;
            boolean z3 = true;
            for (zzgvf zzgvfVar : zzgvgVar.zzh()) {
                if (zzgvfVar.zzk() == 3) {
                    if (zzgvfVar.zzj()) {
                        if (zzgvfVar.zzf() != zzgvz.zza) {
                            if (zzgvfVar.zzk() != 2) {
                                if (zzgvfVar.zza() == zzc) {
                                    if (!z2) {
                                        z2 = true;
                                    } else {
                                        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-646727126973406220L, 8766554005163049717L, 3760643042222185942L, 2760039090894328917L, 530419696186831731L, 6668000773714283678L}).toString());
                                    }
                                }
                                if (zzgvfVar.zzc().zzc() != zzgus.zzd) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                z3 &= z;
                                i++;
                            } else {
                                throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{-8483215024627877007L, -7073868599227916710L, 7888086427638138221L, 6810248539614093293L, -8544009769697471460L}).toString(), Integer.valueOf(zzgvfVar.zza())));
                            }
                        } else {
                            throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{2044830207224228159L, 490447931426408538L, 3990502462153896714L, 765245123397589256L, 277611848501649669L}).toString(), Integer.valueOf(zzgvfVar.zza())));
                        }
                    } else {
                        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{-795805059407410931L, 5415356344167754926L, -7426639436595039996L, -4715594073248196083L}).toString(), Integer.valueOf(zzgvfVar.zza())));
                    }
                }
            }
            if (i != 0) {
                if (!z2 && !z3) {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{8718611359868617536L, 3805595692530530181L, 1252318396581226081L, 6322697786350254589L, 914205639379465098L, -9045245126033192580L, 2886480336804449336L}).toString());
                }
                zzggs zzggsVar = new zzggs(zzb, null);
                zzggsVar.zzc(this.zzc);
                for (int i2 = 0; i2 < this.zza.zza(); i2++) {
                    zzgvf zze = this.zza.zze(i2);
                    if (zze.zzk() == 3) {
                        zzgnb zzgnbVar = (zzgnb) zzgfwVar;
                        Object zzg = zzg(zzgnbVar, zze, zzb);
                        if (this.zzb.get(i2) != null) {
                            obj = zzj(zzgnbVar, ((zzggl) this.zzb.get(i2)).zza(), zzb);
                        } else {
                            obj = null;
                        }
                        if (obj == null && zzg == null) {
                            String obj2 = zzb.toString();
                            String zzg2 = zze.zzc().zzg();
                            StringBuilder sb = new StringBuilder();
                            sb.append(new ObfuscatedString(new long[]{-8767153298261878257L, 4056067906894277679L, 1871427939933325710L, -5547386738306630919L}).toString());
                            sb.append(obj2);
                            throw new GeneralSecurityException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-9071501119714301550L, 4208335550148119510L, -96204433974521861L, 1508642789645252704L}), sb, zzg2));
                        }
                        if (zze.zza() == this.zza.zzc()) {
                            zzggsVar.zzb(obj, zzg, zze);
                        } else {
                            zzggsVar.zza(obj, zzg, zze);
                        }
                    }
                }
                return zzgob.zza().zzd(zzggsVar.zzd(), cls);
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{5423038068666031698L, -3521079997532110910L, 7484099943482122983L, -2281684934398125600L, -180627497160668977L, 3783830259606654083L, 2195961932234331631L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-903369363116846306L, 4412946913824174030L, 8191233674385707352L, 4324992324611226310L}).toString().concat(cls.getName()));
    }

    private zzggm(zzgvg zzgvgVar, List list) {
        this.zza = zzgvgVar;
        this.zzb = list;
        this.zzc = zzgrw.zza;
    }
}
