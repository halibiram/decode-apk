package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayDeque;

/* loaded from: classes2.dex */
final class zzahr implements zzaht {
    private final byte[] zza = new byte[8];
    private final ArrayDeque zzb = new ArrayDeque();
    private final zzaia zzc = new zzaia();
    private zzahs zzd;
    private int zze;
    private int zzf;
    private long zzg;

    private final long zzd(zzacv zzacvVar, int i) {
        ((zzack) zzacvVar).zzn(this.zza, 0, i, false);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.zza[i2] & 255);
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzaht
    public final void zza(zzahs zzahsVar) {
        this.zzd = zzahsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaht
    public final void zzb() {
        this.zze = 0;
        this.zzb.clear();
        this.zzc.zze();
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x0097, code lost:
    
        if (r4 == 1) goto L34;
     */
    @Override // com.google.android.gms.internal.ads.zzaht
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzc(zzacv zzacvVar) {
        String str;
        double longBitsToDouble;
        zzack zzackVar;
        int zzb;
        int zzc;
        long j;
        int i;
        zzek.zzb(this.zzd);
        while (true) {
            zzahq zzahqVar = (zzahq) this.zzb.peek();
            if (zzahqVar != null) {
                long zzf = zzacvVar.zzf();
                j = zzahqVar.zzb;
                if (zzf >= j) {
                    zzahs zzahsVar = this.zzd;
                    i = ((zzahq) this.zzb.pop()).zza;
                    ((zzahw) zzahsVar).zza.zzh(i);
                    return true;
                }
            }
            int i2 = this.zze;
            if (i2 == 0) {
                long zzd = this.zzc.zzd(zzacvVar, true, false, 4);
                if (zzd == -2) {
                    zzacvVar.zzj();
                    while (true) {
                        zzackVar = (zzack) zzacvVar;
                        zzackVar.zzm(this.zza, 0, 4, false);
                        zzb = zzaia.zzb(this.zza[0]);
                        if (zzb != -1 && zzb <= 4) {
                            zzc = (int) zzaia.zzc(this.zza, zzb, false);
                            zzahy zzahyVar = ((zzahw) this.zzd).zza;
                            if (zzc != 357149030 && zzc != 524531317 && zzc != 475249515) {
                                if (zzc == 374648427) {
                                    zzc = 374648427;
                                }
                            }
                        }
                        zzackVar.zzo(1, false);
                    }
                    zzackVar.zzo(zzb, false);
                    zzd = zzc;
                }
                if (zzd == -1) {
                    return false;
                }
                this.zzf = (int) zzd;
                this.zze = 1;
            }
            this.zzg = this.zzc.zzd(zzacvVar, false, true, 8);
            this.zze = 2;
            zzahs zzahsVar2 = this.zzd;
            int i3 = this.zzf;
            zzahw zzahwVar = (zzahw) zzahsVar2;
            zzahy zzahyVar2 = zzahwVar.zza;
            switch (i3) {
                case 131:
                case 136:
                case 155:
                case 159:
                case 176:
                case 179:
                case 186:
                case 215:
                case 231:
                case 238:
                case 241:
                case 251:
                case 16871:
                case 16980:
                case 17029:
                case 17143:
                case 18401:
                case 18408:
                case 20529:
                case 20530:
                case 21420:
                case 21432:
                case 21680:
                case 21682:
                case 21690:
                case 21930:
                case 21938:
                case 21945:
                case 21946:
                case 21947:
                case 21948:
                case 21949:
                case 21998:
                case 22186:
                case 22203:
                case 25188:
                case 30114:
                case 30321:
                case 2352003:
                case 2807729:
                    long j2 = this.zzg;
                    if (j2 <= 8) {
                        zzahwVar.zza.zzj(i3, zzd(zzacvVar, (int) j2));
                        this.zze = 0;
                        return true;
                    }
                    throw zzcc.zza(new ObfuscatedString(new long[]{-3173615859579594117L, 6523768661829590324L, -738156346489164874L, 5123846747717043282L}).toString() + j2, null);
                case 134:
                case 17026:
                case 21358:
                case 2274716:
                    long j3 = this.zzg;
                    if (j3 <= 2147483647L) {
                        int i4 = (int) j3;
                        if (i4 == 0) {
                            str = new ObfuscatedString(new long[]{-9129945715272860155L}).toString();
                        } else {
                            byte[] bArr = new byte[i4];
                            ((zzack) zzacvVar).zzn(bArr, 0, i4, false);
                            while (i4 > 0) {
                                int i5 = i4 - 1;
                                if (bArr[i5] == 0) {
                                    i4 = i5;
                                } else {
                                    str = new String(bArr, 0, i4);
                                }
                            }
                            str = new String(bArr, 0, i4);
                        }
                        zzahwVar.zza.zzl(i3, str);
                        this.zze = 0;
                        return true;
                    }
                    throw zzcc.zza(new ObfuscatedString(new long[]{-876290146982711423L, -1599164370916024611L, 8195129827143050835L, 2998636789920120426L}).toString() + j3, null);
                case 160:
                case 166:
                case 174:
                case 183:
                case 187:
                case 224:
                case 225:
                case 16868:
                case 18407:
                case 19899:
                case 20532:
                case 20533:
                case 21936:
                case 21968:
                case 25152:
                case 28032:
                case 30113:
                case 30320:
                case 290298740:
                case 357149030:
                case 374648427:
                case 408125543:
                case 440786851:
                case 475249515:
                case 524531317:
                    long zzf2 = zzacvVar.zzf();
                    this.zzb.push(new zzahq(i3, this.zzg + zzf2, null));
                    ((zzahw) this.zzd).zza.zzk(this.zzf, zzf2, this.zzg);
                    this.zze = 0;
                    return true;
                case 161:
                case 163:
                case 165:
                case 16877:
                case 16981:
                case 18402:
                case 21419:
                case 25506:
                case 30322:
                    zzahyVar2.zzg(i3, (int) this.zzg, zzacvVar);
                    this.zze = 0;
                    return true;
                case 181:
                case 17545:
                case 21969:
                case 21970:
                case 21971:
                case 21972:
                case 21973:
                case 21974:
                case 21975:
                case 21976:
                case 21977:
                case 21978:
                case 30323:
                case 30324:
                case 30325:
                    long j4 = this.zzg;
                    if (j4 != 4 && j4 != 8) {
                        throw zzcc.zza(new ObfuscatedString(new long[]{342435524138949225L, -1222015937134374127L, -5816939666760563730L, -8981662393824664131L}).toString() + j4, null);
                    }
                    int i6 = (int) j4;
                    long zzd2 = zzd(zzacvVar, i6);
                    if (i6 == 4) {
                        longBitsToDouble = Float.intBitsToFloat((int) zzd2);
                    } else {
                        longBitsToDouble = Double.longBitsToDouble(zzd2);
                    }
                    zzahwVar.zza.zzi(i3, longBitsToDouble);
                    this.zze = 0;
                    return true;
                default:
                    ((zzack) zzacvVar).zzo((int) this.zzg, false);
                    this.zze = 0;
            }
        }
    }
}
