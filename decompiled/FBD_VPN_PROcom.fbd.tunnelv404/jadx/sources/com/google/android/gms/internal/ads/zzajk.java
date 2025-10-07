package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzajk {
    private static final zzfxr zza = zzfxr.zzc(zzfwp.zzc(':'));
    private static final zzfxr zzb = zzfxr.zzc(zzfwp.zzc('*'));
    private final List zzc = new ArrayList();
    private int zzd = 0;
    private int zze;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0062. Please report as an issue. */
    public final int zza(zzacv zzacvVar, zzadr zzadrVar, List list) {
        char c;
        char c2;
        int i = 5;
        int i2 = 8;
        int i3 = this.zzd;
        if (i3 != 0) {
            int i4 = 2;
            if (i3 != 1) {
                if (i3 != 2) {
                    long zzf = zzacvVar.zzf();
                    int zzd = (int) ((zzacvVar.zzd() - zzacvVar.zzf()) - this.zze);
                    zzfp zzfpVar = new zzfp(zzd);
                    zzacvVar.zzi(zzfpVar.zzM(), 0, zzd);
                    int i5 = 0;
                    while (i5 < this.zzc.size()) {
                        zzajj zzajjVar = (zzajj) this.zzc.get(i5);
                        zzfpVar.zzK((int) (zzajjVar.zza - zzf));
                        zzfpVar.zzL(4);
                        int zzi = zzfpVar.zzi();
                        Charset charset = zzfwq.zzc;
                        String zzA = zzfpVar.zzA(zzi, charset);
                        switch (zzA.hashCode()) {
                            case -1711564334:
                                if (zzA.equals(new ObfuscatedString(new long[]{-1729821104010764914L, 7603749559589313204L, -3843657969777371089L}).toString())) {
                                    c = 0;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1332107749:
                                long[] jArr = new long[i];
                                // fill-array-data instruction
                                jArr[0] = -6079716595276450054L;
                                jArr[1] = -428744892273685098L;
                                jArr[2] = 3231332278220054475L;
                                jArr[3] = -1307999389974842357L;
                                jArr[4] = -414656476804949052L;
                                if (zzA.equals(new ObfuscatedString(jArr).toString())) {
                                    c = 3;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1251387154:
                                if (zzA.equals(new ObfuscatedString(new long[]{-10101059136520123L, 3499828416658529526L, 3550242604013654007L, 5497489231550566639L}).toString())) {
                                    c = 1;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -830665521:
                                long[] jArr2 = new long[i];
                                // fill-array-data instruction
                                jArr2[0] = 3345552426917162425L;
                                jArr2[1] = 8598107563889780239L;
                                jArr2[2] = -5952567865838255637L;
                                jArr2[3] = -2202912516971855778L;
                                jArr2[4] = 6966558709762742609L;
                                if (zzA.equals(new ObfuscatedString(jArr2).toString())) {
                                    c = 4;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1760745220:
                                if (zzA.equals(new ObfuscatedString(new long[]{-4813896747545708772L, 984108581830137204L, -6737893142328207109L, -8480684138508739027L}).toString())) {
                                    c = 2;
                                    break;
                                }
                                c = 65535;
                                break;
                            default:
                                c = 65535;
                                break;
                        }
                        if (c != 0) {
                            if (c != 1) {
                                if (c != 2) {
                                    if (c != 3) {
                                        if (c == 4) {
                                            c2 = 2820;
                                        } else {
                                            throw zzcc.zza(new ObfuscatedString(new long[]{5255633880926801872L, 6612817425585668743L, 2417982754667890912L}).toString(), null);
                                        }
                                    } else {
                                        c2 = 2819;
                                    }
                                } else {
                                    c2 = 2817;
                                }
                            } else {
                                c2 = 2816;
                            }
                        } else {
                            c2 = 2192;
                        }
                        int i6 = zzajjVar.zzb - (zzi + 8);
                        if (c2 != 2192) {
                            if (c2 != 2816 && c2 != 2817 && c2 != 2819 && c2 != 2820) {
                                throw new IllegalStateException();
                            }
                        } else {
                            ArrayList arrayList = new ArrayList();
                            List zzf2 = zzb.zzf(zzfpVar.zzA(i6, charset));
                            for (int i7 = 0; i7 < zzf2.size(); i7++) {
                                List zzf3 = zza.zzf((CharSequence) zzf2.get(i7));
                                if (zzf3.size() == 3) {
                                    try {
                                        arrayList.add(new zzahi(Long.parseLong((String) zzf3.get(0)), Long.parseLong((String) zzf3.get(1)), 1 << (Integer.parseInt((String) zzf3.get(2)) - 1)));
                                    } catch (NumberFormatException e) {
                                        throw zzcc.zza(null, e);
                                    }
                                } else {
                                    throw zzcc.zza(null, null);
                                }
                            }
                            list.add(new zzahj(arrayList));
                        }
                        i5++;
                        i = 5;
                    }
                    zzadrVar.zza = 0L;
                } else {
                    long zzd2 = zzacvVar.zzd();
                    int i8 = this.zze - 20;
                    zzfp zzfpVar2 = new zzfp(i8);
                    zzacvVar.zzi(zzfpVar2.zzM(), 0, i8);
                    int i9 = 0;
                    while (i9 < i8 / 12) {
                        zzfpVar2.zzL(i4);
                        short zzC = zzfpVar2.zzC();
                        if (zzC != 2192 && zzC != 2816) {
                            if (zzC != 2817 && zzC != 2819 && zzC != 2820) {
                                zzfpVar2.zzL(i2);
                                i9++;
                                i2 = 8;
                                i4 = 2;
                            }
                        }
                        this.zzc.add(new zzajj(zzC, (zzd2 - this.zze) - zzfpVar2.zzi(), zzfpVar2.zzi()));
                        i9++;
                        i2 = 8;
                        i4 = 2;
                    }
                    if (this.zzc.isEmpty()) {
                        zzadrVar.zza = 0L;
                    } else {
                        this.zzd = 3;
                        zzadrVar.zza = ((zzajj) this.zzc.get(0)).zza;
                    }
                }
            } else {
                zzfp zzfpVar3 = new zzfp(8);
                zzacvVar.zzi(zzfpVar3.zzM(), 0, 8);
                this.zze = zzfpVar3.zzi() + 8;
                if (zzfpVar3.zzg() != 1397048916) {
                    zzadrVar.zza = 0L;
                } else {
                    zzadrVar.zza = zzacvVar.zzf() - (this.zze - 12);
                    this.zzd = 2;
                }
            }
        } else {
            long zzd3 = zzacvVar.zzd();
            zzadrVar.zza = (zzd3 == -1 || zzd3 < 8) ? 0L : zzd3 - 8;
            this.zzd = 1;
        }
        return 1;
    }

    public final void zzb() {
        this.zzc.clear();
        this.zzd = 0;
    }
}
