package com.google.android.gms.internal.ads;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.work.WorkRequest;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzalh implements zzakr {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{806786768333993416L, -681378036725186374L, 3324736498067750434L, -8265516576574669021L, -2261521635314998096L}).toString());
    private final boolean zzb;

    @Nullable
    private final zzalg zzc;
    private final zzfp zzd;
    private Map zze;
    private float zzf;
    private float zzg;

    public zzalh() {
        this(null);
    }

    private static float zzb(int i) {
        if (i == 0) {
            return 0.05f;
        }
        if (i != 1) {
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    private static int zzc(long j, List list, List list2) {
        int i;
        ArrayList arrayList;
        int size = list.size();
        while (true) {
            size--;
            if (size >= 0) {
                if (((Long) list.get(size)).longValue() == j) {
                    return size;
                }
                if (((Long) list.get(size)).longValue() < j) {
                    i = size + 1;
                    break;
                }
            } else {
                i = 0;
                break;
            }
        }
        list.add(i, Long.valueOf(j));
        if (i == 0) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList((Collection) list2.get(i - 1));
        }
        list2.add(i, arrayList);
        return i;
    }

    private static long zzd(String str) {
        Matcher matcher = zza.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String group = matcher.group(1);
        int i = zzfy.zza;
        long parseLong = Long.parseLong(group) * 3600000000L;
        long parseLong2 = Long.parseLong(matcher.group(2)) * 60000000;
        return parseLong + parseLong2 + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(4)) * WorkRequest.MIN_BACKOFF_MILLIS);
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x0081, code lost:
    
        if (r5.equals(new com.panda912.muddy.ObfuscatedString(new long[]{592317757491165827L, -2459318988072544421L}).toString()) != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zze(zzfp zzfpVar, Charset charset) {
        while (true) {
            String zzy = zzfpVar.zzy(charset);
            if (zzy != null) {
                if (new ObfuscatedString(new long[]{-6974597903360867044L, -1558536677079521364L, 3050694677680615730L}).toString().equalsIgnoreCase(zzy)) {
                    while (true) {
                        String zzy2 = zzfpVar.zzy(charset);
                        if (zzy2 != null && (zzfpVar.zzb() == 0 || zzfpVar.zza(charset) != '[')) {
                            String[] split = zzy2.split(new ObfuscatedString(new long[]{1699685064297635186L, -8830643423597359474L}).toString());
                            if (split.length == 2) {
                                char c = 0;
                                String zza2 = zzfwk.zza(split[0].trim());
                                switch (zza2.hashCode()) {
                                    case 1879649549:
                                        if (zza2.equals(new ObfuscatedString(new long[]{-1283678882072169076L, 4069133310680028706L}).toString())) {
                                            c = 1;
                                            break;
                                        }
                                        break;
                                }
                                c = 65535;
                                if (c != 0) {
                                    if (c == 1) {
                                        try {
                                            this.zzg = Float.parseFloat(split[1].trim());
                                        } catch (NumberFormatException unused) {
                                        }
                                    }
                                } else {
                                    this.zzf = Float.parseFloat(split[1].trim());
                                }
                            }
                        }
                    }
                } else if (new ObfuscatedString(new long[]{6273444298318556836L, -1046462647901822875L, -1914950691730142790L}).toString().equalsIgnoreCase(zzy)) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    zzali zzaliVar = null;
                    while (true) {
                        String zzy3 = zzfpVar.zzy(charset);
                        if (zzy3 != null && (zzfpVar.zzb() == 0 || zzfpVar.zza(charset) != '[')) {
                            if (zzy3.startsWith(new ObfuscatedString(new long[]{-1563554120603834212L, 3357768163778403966L}).toString())) {
                                zzaliVar = zzali.zza(zzy3);
                            } else if (zzy3.startsWith(new ObfuscatedString(new long[]{-5559780079083744132L, -4370874042973693373L}).toString())) {
                                if (zzaliVar == null) {
                                    zzff.zzf(new ObfuscatedString(new long[]{-6792468063058278224L, 4236477649973837313L, 4992991751646320190L}).toString(), new ObfuscatedString(new long[]{-3866592704657195338L, -3280744960305683896L, 2776954430249148306L, 8380791985793543483L, 5309469453226764878L, 2795676339834798338L, -6203876306954048756L}).toString().concat(zzy3));
                                } else {
                                    zzalk zzb = zzalk.zzb(zzy3, zzaliVar);
                                    if (zzb != null) {
                                        linkedHashMap.put(zzb.zza, zzb);
                                    }
                                }
                            }
                        }
                    }
                    this.zze = linkedHashMap;
                } else if (new ObfuscatedString(new long[]{1438996370528454145L, 7147695769560784932L, 6964337365580739002L}).toString().equalsIgnoreCase(zzy)) {
                    zzff.zze(new ObfuscatedString(new long[]{1378001437326547912L, 1715030764906474323L, -3609740836134459510L}).toString(), new ObfuscatedString(new long[]{7811076309917873948L, -6515195029825183277L, 4194140412527585015L, -2310406155757226238L, 650865446732301709L}).toString());
                } else if (new ObfuscatedString(new long[]{1453256565979130698L, 8487995564069724918L}).toString().equalsIgnoreCase(zzy)) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakr
    public final void zza(byte[] bArr, int i, int i2, zzakq zzakqVar, zzep zzepVar) {
        int i3;
        Charset charset;
        zzfp zzfpVar;
        zzalg zzalgVar;
        int i4;
        Layout.Alignment alignment;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        Integer num;
        int i10;
        zzalh zzalhVar = this;
        int i11 = 5;
        int i12 = 2;
        int i13 = 3;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        zzalhVar.zzd.zzI(bArr, i + i2);
        zzalhVar.zzd.zzK(i);
        Charset zzB = zzalhVar.zzd.zzB();
        if (zzB == null) {
            zzB = zzfwq.zzc;
        }
        if (!zzalhVar.zzb) {
            zzalhVar.zze(zzalhVar.zzd, zzB);
        }
        zzfp zzfpVar2 = zzalhVar.zzd;
        zzalg zzalgVar2 = zzalhVar.zzb ? zzalhVar.zzc : null;
        while (true) {
            String zzy = zzfpVar2.zzy(zzB);
            if (zzy != null) {
                long[] jArr = new long[i12];
                // fill-array-data instruction
                jArr[0] = 183170970544296718L;
                jArr[1] = -6869620653147253609L;
                if (zzy.startsWith(new ObfuscatedString(jArr).toString())) {
                    zzalgVar2 = zzalg.zza(zzy);
                } else {
                    long[] jArr2 = new long[i13];
                    // fill-array-data instruction
                    jArr2[0] = 1246793669709973696L;
                    jArr2[1] = 3977095639072854431L;
                    jArr2[2] = 4550904693685791172L;
                    if (zzy.startsWith(new ObfuscatedString(jArr2).toString())) {
                        if (zzalgVar2 == null) {
                            long[] jArr3 = new long[i13];
                            // fill-array-data instruction
                            jArr3[0] = -5148111470272424899L;
                            jArr3[1] = 2323554209310203997L;
                            jArr3[2] = 8148645123136196142L;
                            zzff.zzf(new ObfuscatedString(jArr3).toString(), new ObfuscatedString(new long[]{5477824619787619772L, -5182968625949576389L, -3261053612555963182L, -2810573091113174318L, -1362163986072192023L, 788353871331314212L, 8711789879291901678L}).toString().concat(zzy));
                        } else {
                            long[] jArr4 = new long[i13];
                            // fill-array-data instruction
                            jArr4[0] = 503756125093974863L;
                            jArr4[1] = 8400884834865919306L;
                            jArr4[2] = 3008862871691786209L;
                            zzek.zzd(zzy.startsWith(new ObfuscatedString(jArr4).toString()));
                            long[] jArr5 = new long[i12];
                            // fill-array-data instruction
                            jArr5[0] = -2612152378836360479L;
                            jArr5[1] = -5057333584063442731L;
                            String[] split = zzy.substring(9).split(new ObfuscatedString(jArr5).toString(), zzalgVar2.zze);
                            if (split.length != zzalgVar2.zze) {
                                String concat = new ObfuscatedString(new long[]{-2548235448651657152L, -1183388506150064190L, -239737628431828198L, -3473971601481555467L, 5401744004116233461L, -7679779548499574003L, 323909173062863910L, -8763944002924896101L}).toString().concat(zzy);
                                long[] jArr6 = new long[i13];
                                // fill-array-data instruction
                                jArr6[0] = 88779623157541654L;
                                jArr6[1] = -6630066905642778378L;
                                jArr6[2] = -2525642289199713394L;
                                zzff.zzf(new ObfuscatedString(jArr6).toString(), concat);
                            } else {
                                long zzd = zzd(split[zzalgVar2.zza]);
                                if (zzd == -9223372036854775807L) {
                                    long[] jArr7 = new long[i11];
                                    // fill-array-data instruction
                                    jArr7[0] = -5371093073398638806L;
                                    jArr7[1] = -3024942065040469799L;
                                    jArr7[2] = -8548517474850741236L;
                                    jArr7[3] = 4636486770818935503L;
                                    jArr7[4] = -2640994109683830658L;
                                    String concat2 = new ObfuscatedString(jArr7).toString().concat(zzy);
                                    long[] jArr8 = new long[i13];
                                    // fill-array-data instruction
                                    jArr8[0] = -4799060856100100503L;
                                    jArr8[1] = 7594066833941616030L;
                                    jArr8[2] = -2923297214543446945L;
                                    zzff.zzf(new ObfuscatedString(jArr8).toString(), concat2);
                                } else {
                                    long zzd2 = zzd(split[zzalgVar2.zzb]);
                                    if (zzd2 == -9223372036854775807L) {
                                        long[] jArr9 = new long[i11];
                                        // fill-array-data instruction
                                        jArr9[0] = -7605544153332575255L;
                                        jArr9[1] = -3140300276975342250L;
                                        jArr9[2] = 3561526146777610365L;
                                        jArr9[3] = -9051222517420165792L;
                                        jArr9[4] = 3384996492475468007L;
                                        long[] jArr10 = new long[i13];
                                        // fill-array-data instruction
                                        jArr10[0] = -5134086408385931012L;
                                        jArr10[1] = 7323227683995135016L;
                                        jArr10[2] = -5193425780789265044L;
                                        zzff.zzf(new ObfuscatedString(jArr10).toString(), new ObfuscatedString(jArr9).toString().concat(zzy));
                                    } else {
                                        Map map = zzalhVar.zze;
                                        zzalk zzalkVar = (map == null || (i10 = zzalgVar2.zzc) == -1) ? null : (zzalk) map.get(split[i10].trim());
                                        String str = split[zzalgVar2.zzd];
                                        zzalj zza2 = zzalj.zza(str);
                                        charset = zzB;
                                        String replace = zzalj.zzb(str).replace(new ObfuscatedString(new long[]{-5645886547456984596L, 9040728552993105525L}).toString(), new ObfuscatedString(new long[]{3840101903796228295L, 3684026634734576888L}).toString()).replace(new ObfuscatedString(new long[]{-2296630078193420026L, 4508957077607692260L}).toString(), new ObfuscatedString(new long[]{3776216762490250455L, 3267099076126832519L}).toString()).replace(new ObfuscatedString(new long[]{-506160149116379939L, 2604687877343074736L}).toString(), new ObfuscatedString(new long[]{5887745136773183521L, 3038553057121722768L}).toString());
                                        float f = zzalhVar.zzf;
                                        float f2 = zzalhVar.zzg;
                                        SpannableString spannableString = new SpannableString(replace);
                                        zzea zzeaVar = new zzea();
                                        zzeaVar.zzl(spannableString);
                                        if (zzalkVar != null) {
                                            Integer num2 = zzalkVar.zzc;
                                            if (num2 != null) {
                                                zzfpVar = zzfpVar2;
                                                zzalgVar = zzalgVar2;
                                                i6 = 0;
                                                i7 = 33;
                                                spannableString.setSpan(new ForegroundColorSpan(num2.intValue()), 0, spannableString.length(), 33);
                                            } else {
                                                zzfpVar = zzfpVar2;
                                                zzalgVar = zzalgVar2;
                                                i6 = 0;
                                                i7 = 33;
                                            }
                                            if (zzalkVar.zzj == 3 && (num = zzalkVar.zzd) != null) {
                                                spannableString.setSpan(new BackgroundColorSpan(num.intValue()), i6, spannableString.length(), i7);
                                            }
                                            float f3 = zzalkVar.zze;
                                            if (f3 != -3.4028235E38f && f2 != -3.4028235E38f) {
                                                zzeaVar.zzn(f3 / f2, 1);
                                            }
                                            if (!zzalkVar.zzf) {
                                                i8 = 0;
                                                i9 = 33;
                                                if (zzalkVar.zzg) {
                                                    spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                                }
                                            } else if (zzalkVar.zzg) {
                                                i8 = 0;
                                                i9 = 33;
                                                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                            } else {
                                                i8 = 0;
                                                i9 = 33;
                                                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                            }
                                            if (zzalkVar.zzh) {
                                                spannableString.setSpan(new UnderlineSpan(), i8, spannableString.length(), i9);
                                            }
                                            if (zzalkVar.zzi) {
                                                spannableString.setSpan(new StrikethroughSpan(), i8, spannableString.length(), i9);
                                            }
                                        } else {
                                            zzfpVar = zzfpVar2;
                                            zzalgVar = zzalgVar2;
                                        }
                                        int i14 = zza2.zza;
                                        if (i14 != -1) {
                                            i4 = i14;
                                        } else {
                                            i4 = zzalkVar != null ? zzalkVar.zzb : -1;
                                        }
                                        switch (i4) {
                                            case -1:
                                                break;
                                            case 0:
                                            default:
                                                zzff.zzf(new ObfuscatedString(new long[]{6255678508843927971L, 1974560765178014137L, -5436087018474702300L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3014888488213931155L, -3841537005287376802L, -1202294150585078515L, 3762864473570509641L}), new StringBuilder(), i4));
                                                break;
                                            case 1:
                                            case 4:
                                            case 7:
                                                alignment = Layout.Alignment.ALIGN_NORMAL;
                                                break;
                                            case 2:
                                            case 5:
                                            case 8:
                                                alignment = Layout.Alignment.ALIGN_CENTER;
                                                break;
                                            case 3:
                                            case 6:
                                            case 9:
                                                alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                                break;
                                        }
                                        alignment = null;
                                        zzeaVar.zzm(alignment);
                                        int i15 = Integer.MIN_VALUE;
                                        switch (i4) {
                                            case -1:
                                                break;
                                            case 0:
                                            default:
                                                zzff.zzf(new ObfuscatedString(new long[]{-153343841826525695L, -9193106986535279863L, 8482967276149698462L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4872288271305375842L, -4335369485499566029L, 3559819920867631899L, 1830461392567154584L}), new StringBuilder(), i4));
                                                break;
                                            case 1:
                                            case 4:
                                            case 7:
                                                i5 = 0;
                                                break;
                                            case 2:
                                            case 5:
                                            case 8:
                                                i5 = 1;
                                                break;
                                            case 3:
                                            case 6:
                                            case 9:
                                                i5 = 2;
                                                break;
                                        }
                                        i5 = Integer.MIN_VALUE;
                                        zzeaVar.zzi(i5);
                                        switch (i4) {
                                            case -1:
                                                break;
                                            case 0:
                                            default:
                                                zzff.zzf(new ObfuscatedString(new long[]{1587344132040672772L, 6912619835329386451L, -2715538786951137392L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{4713226898098169004L, 4318073206391747311L, 5541913844960647309L, -2600313554075720961L}), new StringBuilder(), i4));
                                                break;
                                            case 1:
                                            case 2:
                                            case 3:
                                                i15 = 2;
                                                break;
                                            case 4:
                                            case 5:
                                            case 6:
                                                i15 = 1;
                                                break;
                                            case 7:
                                            case 8:
                                            case 9:
                                                i15 = 0;
                                                break;
                                        }
                                        zzeaVar.zzf(i15);
                                        PointF pointF = zza2.zzb;
                                        if (pointF != null && f2 != -3.4028235E38f && f != -3.4028235E38f) {
                                            zzeaVar.zzh(pointF.x / f);
                                            zzeaVar.zze(zza2.zzb.y / f2, 0);
                                        } else {
                                            zzeaVar.zzh(zzb(zzeaVar.zzb()));
                                            zzeaVar.zze(zzb(zzeaVar.zza()), 0);
                                        }
                                        zzec zzp = zzeaVar.zzp();
                                        int zzc = zzc(zzd2, arrayList2, arrayList);
                                        for (int zzc2 = zzc(zzd, arrayList2, arrayList); zzc2 < zzc; zzc2++) {
                                            ((List) arrayList.get(zzc2)).add(zzp);
                                        }
                                        i11 = 5;
                                        zzalhVar = this;
                                        zzB = charset;
                                        zzfpVar2 = zzfpVar;
                                        zzalgVar2 = zzalgVar;
                                        i12 = 2;
                                        i13 = 3;
                                    }
                                }
                            }
                        }
                    }
                    charset = zzB;
                    zzfpVar = zzfpVar2;
                    zzalgVar = zzalgVar2;
                    i11 = 5;
                    zzalhVar = this;
                    zzB = charset;
                    zzfpVar2 = zzfpVar;
                    zzalgVar2 = zzalgVar;
                    i12 = 2;
                    i13 = 3;
                }
            } else {
                int i16 = 0;
                while (i16 < arrayList.size()) {
                    List list = (List) arrayList.get(i16);
                    if (list.isEmpty()) {
                        if (i16 != 0) {
                            i3 = 1;
                            i16 += i3;
                        } else {
                            i16 = 0;
                        }
                    }
                    if (i16 != arrayList.size() - 1) {
                        zzepVar.zza(new zzakj(list, ((Long) arrayList2.get(i16)).longValue(), ((Long) arrayList2.get(i16 + 1)).longValue() - ((Long) arrayList2.get(i16)).longValue()));
                        i3 = 1;
                        i16 += i3;
                    } else {
                        throw new IllegalStateException();
                    }
                }
                return;
            }
        }
    }

    public zzalh(@Nullable List list) {
        this.zzf = -3.4028235E38f;
        this.zzg = -3.4028235E38f;
        this.zzd = new zzfp();
        if (list == null || list.isEmpty()) {
            this.zzb = false;
            this.zzc = null;
            return;
        }
        this.zzb = true;
        String zzz = zzfy.zzz((byte[]) list.get(0));
        zzek.zzd(zzz.startsWith(new ObfuscatedString(new long[]{7947365264525480499L, 6686928600703673426L}).toString()));
        zzalg zza2 = zzalg.zza(zzz);
        zza2.getClass();
        this.zzc = zza2;
        zze(new zzfp((byte[]) list.get(1)), zzfwq.zzc);
    }
}
