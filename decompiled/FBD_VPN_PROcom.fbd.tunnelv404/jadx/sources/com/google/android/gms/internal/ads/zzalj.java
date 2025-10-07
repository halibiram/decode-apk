package com.google.android.gms.internal.ads;

import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
final class zzalj {
    private static final Pattern zzc = Pattern.compile(new ObfuscatedString(new long[]{2600388845446477849L, 8869614595946356542L, -2158370453006788796L}).toString());
    private static final Pattern zzd;
    private static final Pattern zze;
    private static final Pattern zzf;
    public final int zza;

    @Nullable
    public final PointF zzb;

    static {
        Object[] objArr = {new ObfuscatedString(new long[]{8915522170195682718L, -1386886595979992801L, 2434816711567973696L, 3604589176776715135L}).toString()};
        Locale locale = Locale.US;
        zzd = Pattern.compile(String.format(locale, new ObfuscatedString(new long[]{-5169952622386916696L, 2363544472581854870L, 146267094466091641L, -7230695938534236171L}).toString(), objArr));
        zze = Pattern.compile(String.format(locale, new ObfuscatedString(new long[]{-2021662095909175077L, 7793025132581921027L, -7225932929500721398L, -6141108187055567608L, -5428853594055886001L, 5060815784805143360L, -3651145903851249435L}).toString(), new ObfuscatedString(new long[]{1170205952338855247L, 9091381085774583249L, 8765558357712872447L, -5499218779486096543L}).toString()));
        zzf = Pattern.compile(new ObfuscatedString(new long[]{-3984256296205328261L, -5903141482077141126L, -6146992849650392435L}).toString());
    }

    private zzalj(int i, @Nullable PointF pointF) {
        this.zza = i;
        this.zzb = pointF;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b5 A[Catch: RuntimeException -> 0x00c0, TryCatch #0 {RuntimeException -> 0x00c0, blocks: (B:19:0x00a9, B:21:0x00b5, B:29:0x00bb, B:24:0x00c3), top: B:18:0x00a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x000b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzalj zza(String str) {
        Matcher matcher;
        int i;
        Matcher matcher2;
        Matcher matcher3;
        boolean find;
        boolean find2;
        PointF pointF;
        String str2;
        String str3;
        Matcher matcher4 = zzc.matcher(str);
        PointF pointF2 = null;
        int i2 = -1;
        while (matcher4.find()) {
            String group = matcher4.group(1);
            group.getClass();
            try {
                matcher2 = zzd.matcher(group);
                matcher3 = zze.matcher(group);
                find = matcher2.find();
                find2 = matcher3.find();
            } catch (RuntimeException unused) {
            }
            if (find) {
                if (find2) {
                    zzff.zze(new ObfuscatedString(new long[]{-2765499763256808435L, 2177918710774907101L, 3532332786451732451L, -5862172101648455446L}).toString(), new ObfuscatedString(new long[]{3193178935673615307L, 6327085765509892159L, -8869359697121531649L, 6383941359521118795L, -1265874359940835830L, 3672758505378276637L, -1391809321185309862L, -5623762976232660790L, -6286699989989741116L, 7901666836585392939L, 793417276024118906L, -2905430786870296536L}).toString() + group + new ObfuscatedString(new long[]{-5418109994109062387L, -2660842267923720957L}).toString());
                }
                str2 = matcher2.group(1);
                str3 = matcher2.group(2);
            } else if (find2) {
                String group2 = matcher3.group(1);
                String group3 = matcher3.group(2);
                str2 = group2;
                str3 = group3;
            } else {
                pointF = null;
                if (pointF != null) {
                    pointF2 = pointF;
                }
                try {
                    matcher = zzf.matcher(group);
                    if (!matcher.find()) {
                        String group4 = matcher.group(1);
                        if (group4 != null) {
                            i = zzalk.zzd(group4);
                        } else {
                            throw null;
                            break;
                        }
                    } else {
                        i = -1;
                    }
                    if (i == -1) {
                        i2 = i;
                    }
                } catch (RuntimeException unused2) {
                }
            }
            if (str2 != null) {
                float parseFloat = Float.parseFloat(str2.trim());
                if (str3 != null) {
                    pointF = new PointF(parseFloat, Float.parseFloat(str3.trim()));
                    if (pointF != null) {
                    }
                    matcher = zzf.matcher(group);
                    if (!matcher.find()) {
                    }
                    if (i == -1) {
                    }
                } else {
                    throw null;
                }
            } else {
                throw null;
            }
        }
        return new zzalj(i2, pointF2);
    }

    public static String zzb(String str) {
        return zzc.matcher(str).replaceAll(new ObfuscatedString(new long[]{2109506118947335587L}).toString());
    }
}
