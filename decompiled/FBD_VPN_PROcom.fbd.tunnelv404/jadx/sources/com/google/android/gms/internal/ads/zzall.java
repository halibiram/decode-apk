package com.google.android.gms.internal.ads;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzall implements zzakr {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{5678237771068899966L, -5301693651820078949L, -7430530352100069498L, 6283834223388689464L, -8722470566997894499L, 1040925799255991632L, 121440190313599551L, 8336117839060279479L, -8058300194673927012L, -9181521992061668512L, 3459430291617790364L, 4020607458249506443L}).toString());
    private static final Pattern zzb = Pattern.compile(new ObfuscatedString(new long[]{-5390821653040901873L, -3769493073912148427L, 2668131018900556008L}).toString());
    private final StringBuilder zzc = new StringBuilder();
    private final ArrayList zzd = new ArrayList();
    private final zzfp zze = new zzfp();

    @VisibleForTesting(otherwise = 2)
    public static float zzb(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return 0.92f;
                }
                throw new IllegalArgumentException();
            }
            return 0.5f;
        }
        return 0.08f;
    }

    private static long zzc(Matcher matcher, int i) {
        long j;
        String group = matcher.group(i + 1);
        if (group != null) {
            j = Long.parseLong(group) * 3600000;
        } else {
            j = 0;
        }
        String group2 = matcher.group(i + 2);
        group2.getClass();
        long parseLong = (Long.parseLong(group2) * 60000) + j;
        String group3 = matcher.group(i + 3);
        group3.getClass();
        long parseLong2 = (Long.parseLong(group3) * 1000) + parseLong;
        String group4 = matcher.group(i + 4);
        if (group4 != null) {
            parseLong2 += Long.parseLong(group4);
        }
        return parseLong2 * 1000;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:58:0x01fc. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzakr
    public final void zza(byte[] bArr, int i, int i2, zzakq zzakqVar, zzep zzepVar) {
        String str;
        int i3;
        int i4;
        zzec zzp;
        int i5 = 0;
        int i6 = 3;
        int i7 = 2;
        this.zze.zzI(bArr, i + i2);
        this.zze.zzK(i);
        Charset zzB = this.zze.zzB();
        if (zzB == null) {
            zzB = zzfwq.zzc;
        }
        while (true) {
            String zzy = this.zze.zzy(zzB);
            if (zzy == null) {
                return;
            }
            if (zzy.length() != 0) {
                try {
                    Integer.parseInt(zzy);
                    String zzy2 = this.zze.zzy(zzB);
                    if (zzy2 == null) {
                        long[] jArr = new long[i6];
                        // fill-array-data instruction
                        jArr[0] = 8873287498058542173L;
                        jArr[1] = 3737699577136254724L;
                        jArr[2] = -96213931144598836L;
                        long[] jArr2 = new long[i6];
                        // fill-array-data instruction
                        jArr2[0] = -1745359146467313342L;
                        jArr2[1] = 6348968374461419646L;
                        jArr2[2] = 4614440629701344625L;
                        zzff.zzf(new ObfuscatedString(jArr).toString(), new ObfuscatedString(jArr2).toString());
                        return;
                    }
                    Matcher matcher = zza.matcher(zzy2);
                    if (matcher.matches()) {
                        long zzc = zzc(matcher, 1);
                        long zzc2 = zzc(matcher, 6);
                        this.zzc.setLength(i5);
                        this.zzd.clear();
                        String zzy3 = this.zze.zzy(zzB);
                        while (!TextUtils.isEmpty(zzy3)) {
                            if (this.zzc.length() > 0) {
                                long[] jArr3 = new long[i7];
                                // fill-array-data instruction
                                jArr3[0] = -2347408978365676614L;
                                jArr3[1] = 4035495820596529301L;
                                this.zzc.append(new ObfuscatedString(jArr3).toString());
                            }
                            StringBuilder sb = this.zzc;
                            ArrayList arrayList = this.zzd;
                            String trim = zzy3.trim();
                            StringBuilder sb2 = new StringBuilder(trim);
                            int i8 = 0;
                            for (Matcher matcher2 = zzb.matcher(trim); matcher2.find(); matcher2 = matcher2) {
                                String group = matcher2.group();
                                arrayList.add(group);
                                int start = matcher2.start() - i8;
                                int length = group.length();
                                sb2.replace(start, start + length, new ObfuscatedString(new long[]{-6376645942659636801L}).toString());
                                i8 += length;
                            }
                            sb.append(sb2.toString());
                            zzy3 = this.zze.zzy(zzB);
                            i7 = 2;
                        }
                        Spanned fromHtml = Html.fromHtml(this.zzc.toString());
                        int i9 = 0;
                        while (true) {
                            if (i9 < this.zzd.size()) {
                                str = (String) this.zzd.get(i9);
                                if (!str.matches(new ObfuscatedString(new long[]{-9015107168949161053L, 5097674968083160060L, -838465656742934442L}).toString())) {
                                    i9++;
                                }
                            } else {
                                str = null;
                            }
                        }
                        zzea zzeaVar = new zzea();
                        zzeaVar.zzl(fromHtml);
                        if (str == null) {
                            zzp = zzeaVar.zzp();
                        } else {
                            int i10 = -1;
                            switch (str.hashCode()) {
                                case -685620710:
                                    i3 = 2;
                                    if (str.equals(new ObfuscatedString(new long[]{-436206332828030955L, -5033049656346171924L}).toString())) {
                                        i4 = 0;
                                        break;
                                    }
                                    break;
                                case -685620648:
                                    i3 = 2;
                                    if (str.equals(new ObfuscatedString(new long[]{8539036332379728400L, -9133810498926524165L}).toString())) {
                                        i4 = 3;
                                        break;
                                    }
                                    break;
                                case -685620617:
                                    i3 = 2;
                                    if (str.equals(new ObfuscatedString(new long[]{-318996710728107164L, 8486761935381237903L}).toString())) {
                                        i4 = 1;
                                        break;
                                    }
                                    break;
                                case -685620555:
                                    i3 = 2;
                                    if (str.equals(new ObfuscatedString(new long[]{4432229671966123668L, 3893859274512893241L}).toString())) {
                                        i4 = 4;
                                        break;
                                    }
                                    break;
                                case -685620524:
                                    i3 = 2;
                                    if (str.equals(new ObfuscatedString(new long[]{7776434325240918458L, -3874697324052038596L}).toString())) {
                                        i4 = 2;
                                        break;
                                    }
                                    break;
                                case -685620462:
                                    i3 = 2;
                                    if (str.equals(new ObfuscatedString(new long[]{-1871519870520584653L, -4115792829991595558L}).toString())) {
                                        i4 = 5;
                                        break;
                                    }
                                    break;
                                default:
                                    i3 = 2;
                                    break;
                            }
                            i4 = -1;
                            if (i4 == 0 || i4 == 1 || i4 == i3) {
                                zzeaVar.zzi(0);
                            } else if (i4 != 3 && i4 != 4 && i4 != 5) {
                                zzeaVar.zzi(1);
                            } else {
                                zzeaVar.zzi(i3);
                            }
                            switch (str.hashCode()) {
                                case -685620710:
                                    long[] jArr4 = new long[i3];
                                    // fill-array-data instruction
                                    jArr4[0] = 907412711715277284L;
                                    jArr4[1] = 2430337906841705275L;
                                    if (str.equals(new ObfuscatedString(jArr4).toString())) {
                                        i10 = 0;
                                        break;
                                    }
                                    break;
                                case -685620679:
                                    long[] jArr5 = new long[i3];
                                    // fill-array-data instruction
                                    jArr5[0] = -7384318794428783117L;
                                    jArr5[1] = 6938603311814024688L;
                                    if (str.equals(new ObfuscatedString(jArr5).toString())) {
                                        i10 = 1;
                                        break;
                                    }
                                    break;
                                case -685620648:
                                    long[] jArr6 = new long[i3];
                                    // fill-array-data instruction
                                    jArr6[0] = 4382892264941008694L;
                                    jArr6[1] = 8432425188428637070L;
                                    if (str.equals(new ObfuscatedString(jArr6).toString())) {
                                        i10 = 2;
                                        break;
                                    }
                                    break;
                                case -685620524:
                                    long[] jArr7 = new long[i3];
                                    // fill-array-data instruction
                                    jArr7[0] = -472854328027085138L;
                                    jArr7[1] = -3493450260293806526L;
                                    if (str.equals(new ObfuscatedString(jArr7).toString())) {
                                        i10 = 3;
                                        break;
                                    }
                                    break;
                                case -685620493:
                                    long[] jArr8 = new long[i3];
                                    // fill-array-data instruction
                                    jArr8[0] = 6855532303890569010L;
                                    jArr8[1] = -3406028038110738236L;
                                    if (str.equals(new ObfuscatedString(jArr8).toString())) {
                                        i10 = 4;
                                        break;
                                    }
                                    break;
                                case -685620462:
                                    long[] jArr9 = new long[i3];
                                    // fill-array-data instruction
                                    jArr9[0] = -8666960967071899028L;
                                    jArr9[1] = -2270345572085133704L;
                                    if (str.equals(new ObfuscatedString(jArr9).toString())) {
                                        i10 = 5;
                                        break;
                                    }
                                    break;
                            }
                            if (i10 == 0 || i10 == 1 || i10 == i3) {
                                zzeaVar.zzf(2);
                            } else if (i10 != 3 && i10 != 4 && i10 != 5) {
                                zzeaVar.zzf(1);
                            } else {
                                zzeaVar.zzf(0);
                            }
                            zzeaVar.zzh(zzb(zzeaVar.zzb()));
                            zzeaVar.zze(zzb(zzeaVar.zza()), 0);
                            zzp = zzeaVar.zzp();
                        }
                        zzepVar.zza(new zzakj(zzgaa.zzm(zzp), zzc, zzc2 - zzc));
                    } else {
                        zzff.zzf(new ObfuscatedString(new long[]{-1802043996172485083L, -4093093823183099467L, -2505089237975556510L}).toString(), new ObfuscatedString(new long[]{4578348901680361676L, -2069857367784368806L, -4111842734695240083L, -3605834584630914859L, 8855184194588336418L}).toString().concat(zzy2));
                    }
                } catch (NumberFormatException unused) {
                    zzff.zzf(new ObfuscatedString(new long[]{212059828958772455L, -3958609518992432068L, -4750547621909571627L}).toString(), new ObfuscatedString(new long[]{-2471659359830404401L, -6603925740744958235L, -5772825436888189157L, 2149771021031867763L}).toString().concat(zzy));
                }
            }
            i5 = 0;
            i6 = 3;
            i7 = 2;
        }
    }
}
