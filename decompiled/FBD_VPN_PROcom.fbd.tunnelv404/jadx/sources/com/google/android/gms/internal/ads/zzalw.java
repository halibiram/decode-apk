package com.google.android.gms.internal.ads;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.nio.charset.Charset;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzalw implements zzakr {
    private final zzfp zza = new zzfp();
    private final boolean zzb;
    private final int zzc;
    private final int zzd;
    private final String zze;
    private final float zzf;
    private final int zzg;

    public zzalw(List list) {
        String obfuscatedString;
        if (list.size() == 1 && (((byte[]) list.get(0)).length == 48 || ((byte[]) list.get(0)).length == 53)) {
            byte[] bArr = (byte[]) list.get(0);
            this.zzc = bArr[24];
            this.zzd = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
            if (true != new ObfuscatedString(new long[]{-7557521279843143009L, -1205393272560280691L}).toString().equals(zzfy.zzA(bArr, 43, bArr.length - 43))) {
                obfuscatedString = new ObfuscatedString(new long[]{2211880851387272946L, -7962069014857089311L, 223302332188887585L}).toString();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-7042736952000473238L, 2109205524995328827L}).toString();
            }
            this.zze = obfuscatedString;
            int i = bArr[25] * Ascii.DC4;
            this.zzg = i;
            boolean z = (bArr[0] & 32) != 0;
            this.zzb = z;
            if (z) {
                this.zzf = Math.max(0.0f, Math.min(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.95f));
                return;
            } else {
                this.zzf = 0.85f;
                return;
            }
        }
        this.zzc = 0;
        this.zzd = -1;
        this.zze = new ObfuscatedString(new long[]{-2033009050873123921L, -1060492104731602541L, 7630126042455373316L}).toString();
        this.zzb = false;
        this.zzf = 0.85f;
        this.zzg = -1;
    }

    private static void zzb(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    private static void zzc(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            int i7 = i & 1;
            int i8 = i & 2;
            boolean z = true;
            if (i7 != 0) {
                if (i8 != 0) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                    z = false;
                }
            } else {
                if (i8 != 0) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
                }
                z = false;
            }
            if ((i & 4) == 0) {
                if (i7 == 0 && !z) {
                    spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
                    return;
                }
                return;
            }
            spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakr
    public final void zza(byte[] bArr, int i, int i2, zzakq zzakqVar, zzep zzepVar) {
        boolean z;
        String zzA;
        boolean z2;
        boolean z3;
        boolean z4;
        int i3;
        this.zza.zzI(bArr, i + i2);
        this.zza.zzK(i);
        zzfp zzfpVar = this.zza;
        int i4 = 1;
        int i5 = 2;
        if (zzfpVar.zzb() >= 2) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzd(z);
        int zzq = zzfpVar.zzq();
        if (zzq == 0) {
            zzA = new ObfuscatedString(new long[]{-8701479052463125249L}).toString();
        } else {
            int zzd = zzfpVar.zzd();
            Charset zzB = zzfpVar.zzB();
            int zzd2 = zzfpVar.zzd() - zzd;
            if (zzB == null) {
                zzB = zzfwq.zzc;
            }
            zzA = zzfpVar.zzA(zzq - zzd2, zzB);
        }
        if (zzA.isEmpty()) {
            zzepVar.zza(new zzakj(zzgaa.zzl(), -9223372036854775807L, -9223372036854775807L));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(zzA);
        zzc(spannableStringBuilder, this.zzc, 0, 0, spannableStringBuilder.length(), 16711680);
        zzb(spannableStringBuilder, this.zzd, -1, 0, spannableStringBuilder.length(), 16711680);
        String str = this.zze;
        int length = spannableStringBuilder.length();
        if (str != new ObfuscatedString(new long[]{7286478117659770054L, -3462796629543110029L, 6153998588567681065L}).toString()) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float f = this.zzf;
        while (true) {
            zzfp zzfpVar2 = this.zza;
            if (zzfpVar2.zzb() >= 8) {
                int zzd3 = zzfpVar2.zzd();
                int zzg = zzfpVar2.zzg();
                int zzg2 = this.zza.zzg();
                if (zzg2 == 1937013100) {
                    if (this.zza.zzb() >= i5) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zzek.zzd(z3);
                    int zzq2 = this.zza.zzq();
                    int i6 = 0;
                    while (i6 < zzq2) {
                        zzfp zzfpVar3 = this.zza;
                        if (zzfpVar3.zzb() >= 12) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        zzek.zzd(z4);
                        int zzq3 = zzfpVar3.zzq();
                        int zzq4 = zzfpVar3.zzq();
                        zzfpVar3.zzL(i5);
                        int zzm = zzfpVar3.zzm();
                        zzfpVar3.zzL(i4);
                        int zzg3 = zzfpVar3.zzg();
                        if (zzq4 > spannableStringBuilder.length()) {
                            int length2 = spannableStringBuilder.length();
                            StringBuilder sb = new StringBuilder();
                            sb.append(new ObfuscatedString(new long[]{-7236829757184093061L, -6398615838616400761L, 3414922198976308876L, 253838284086069442L}).toString());
                            sb.append(zzq4);
                            sb.append(new ObfuscatedString(new long[]{8215715927575715048L, -1371456479377574677L, 6189459002513096143L, 4764745923003388065L}).toString());
                            sb.append(length2);
                            zzff.zzf(new ObfuscatedString(new long[]{-974234997954619877L, 1655340240001972019L, -3591261394582662452L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8054230503627309872L, 2995377627987508174L}), sb));
                            i3 = spannableStringBuilder.length();
                        } else {
                            i3 = zzq4;
                        }
                        if (zzq3 >= i3) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(new ObfuscatedString(new long[]{-8582353754196757286L, 1771567654511706387L, 4787260561139003264L, 7124661366554429560L, 1955127603719629320L}).toString());
                            sb2.append(zzq3);
                            sb2.append(new ObfuscatedString(new long[]{-1363568133418283966L, 2151882992633493139L, 8405584674649213434L}).toString());
                            sb2.append(i3);
                            zzff.zzf(new ObfuscatedString(new long[]{-4942302364764207197L, -7395031213553164332L, 4167332614326497518L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1907224902805781060L, 7820206784961498790L}), sb2));
                        } else {
                            int i7 = i3;
                            zzc(spannableStringBuilder, zzm, this.zzc, zzq3, i7, 0);
                            zzb(spannableStringBuilder, zzg3, this.zzd, zzq3, i7, 0);
                        }
                        i6++;
                        i4 = 1;
                        i5 = 2;
                    }
                } else if (zzg2 == 1952608120 && this.zzb) {
                    if (this.zza.zzb() >= 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zzek.zzd(z2);
                    f = Math.max(0.0f, Math.min(this.zza.zzq() / this.zzg, 0.95f));
                    this.zza.zzK(zzd3 + zzg);
                    i4 = 1;
                    i5 = 2;
                }
                this.zza.zzK(zzd3 + zzg);
                i4 = 1;
                i5 = 2;
            } else {
                zzea zzeaVar = new zzea();
                zzeaVar.zzl(spannableStringBuilder);
                zzeaVar.zze(f, 0);
                zzeaVar.zzf(0);
                zzepVar.zza(new zzakj(zzgaa.zzm(zzeaVar.zzp()), -9223372036854775807L, -9223372036854775807L));
                return;
            }
        }
    }
}
