package com.google.android.gms.internal.ads;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public final class zzamh {
    public static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{-7081566815683888570L, -9079516112651545474L, 4449686969568060678L, 6755413790997793339L, 496636890637807784L}).toString());
    private static final Pattern zzb = Pattern.compile(new ObfuscatedString(new long[]{5074049598208794944L, -1072326711631633266L, 2865541468806292340L}).toString());
    private static final Map zzc;
    private static final Map zzd;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{6335157716626968487L, 3398575486391159276L}).toString(), Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put(new ObfuscatedString(new long[]{6912330368150890639L, -732887990177836532L}).toString(), Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put(new ObfuscatedString(new long[]{-4857702554004697430L, -4780889767512600145L}).toString(), Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put(new ObfuscatedString(new long[]{3811397406682491357L, -3689530661400423716L}).toString(), Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put(new ObfuscatedString(new long[]{3076240402800467259L, 398952492948762689L}).toString(), Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put(new ObfuscatedString(new long[]{9069787751529295661L, 592119597983925622L}).toString(), Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put(new ObfuscatedString(new long[]{-6048126186692686778L, -3324088149305007349L}).toString(), Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put(new ObfuscatedString(new long[]{5286520704758596668L, 5562493997425262727L}).toString(), Integer.valueOf(Color.rgb(0, 0, 0)));
        zzc = DesugarCollections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(new ObfuscatedString(new long[]{-2898311137486918953L, -2309040994120502670L}).toString(), Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put(new ObfuscatedString(new long[]{-4506920894285869757L, 5928654081143524114L}).toString(), Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put(new ObfuscatedString(new long[]{6171551920569709712L, -3841870222377402132L}).toString(), Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put(new ObfuscatedString(new long[]{-8464085088177265666L, 4209800655703716641L}).toString(), Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put(new ObfuscatedString(new long[]{8972789361382396415L, -3817835558807853305L, -5136849418918118443L}).toString(), Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put(new ObfuscatedString(new long[]{-1386256725062635392L, 7380227590935476318L, 87519826816607710L}).toString(), Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put(new ObfuscatedString(new long[]{-8544171419126262845L, 7253862748693868996L}).toString(), Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put(new ObfuscatedString(new long[]{4399659988300569088L, -2344019680271915262L}).toString(), Integer.valueOf(Color.rgb(0, 0, 0)));
        zzd = DesugarCollections.unmodifiableMap(hashMap2);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01de A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static SpannedString zza(@Nullable String str, String str2, List list) {
        char c;
        int i;
        boolean z;
        int i2;
        char c2;
        int i3 = -1;
        int i4 = 1;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        char c3 = 0;
        int i5 = 0;
        while (i5 < str2.length()) {
            int i6 = i5 + 1;
            char charAt = str2.charAt(i5);
            if (charAt != '&') {
                if (charAt != '<') {
                    spannableStringBuilder.append(charAt);
                } else if (i6 < str2.length()) {
                    char charAt2 = str2.charAt(i6);
                    int indexOf = str2.indexOf(62, i6);
                    if (indexOf == i3) {
                        i = str2.length();
                    } else {
                        i = indexOf + i4;
                    }
                    int i7 = i;
                    int i8 = i7 - 2;
                    if (str2.charAt(i8) == '/') {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (charAt2 == '/') {
                        i2 = 2;
                    } else {
                        i2 = 1;
                    }
                    int i9 = i5 + i2;
                    if (!z) {
                        i8 = i7 - 1;
                    }
                    String substring = str2.substring(i9, i8);
                    if (!substring.trim().isEmpty()) {
                        String trim = substring.trim();
                        zzek.zzd(!trim.isEmpty());
                        int i10 = zzfy.zza;
                        String str3 = trim.split(new ObfuscatedString(new long[]{4199038455292641426L, -2900975421326411325L}).toString(), 2)[c3];
                        int hashCode = str3.hashCode();
                        if (hashCode != 98) {
                            if (hashCode != 99) {
                                if (hashCode != 105) {
                                    if (hashCode != 3650) {
                                        if (hashCode != 3314158) {
                                            if (hashCode != 3511770) {
                                                if (hashCode != 117) {
                                                    if (hashCode == 118 && str3.equals(new ObfuscatedString(new long[]{7516347860485976579L, -4149954933747208298L}).toString())) {
                                                        c2 = 7;
                                                        switch (c2) {
                                                            case 0:
                                                            case 1:
                                                            case 2:
                                                            case 3:
                                                            case 4:
                                                            case 5:
                                                            case 6:
                                                            case 7:
                                                                if (charAt2 != '/') {
                                                                    if (!z) {
                                                                        arrayDeque.push(zzame.zza(substring, spannableStringBuilder.length()));
                                                                    }
                                                                }
                                                                while (!arrayDeque.isEmpty()) {
                                                                    zzame zzameVar = (zzame) arrayDeque.pop();
                                                                    zzg(str, zzameVar, arrayList, spannableStringBuilder, list);
                                                                    if (!arrayDeque.isEmpty()) {
                                                                        arrayList.add(new zzamd(zzameVar, spannableStringBuilder.length(), null));
                                                                    } else {
                                                                        arrayList.clear();
                                                                    }
                                                                    if (zzameVar.zza.equals(str3)) {
                                                                    }
                                                                }
                                                            default:
                                                                i5 = i7;
                                                                i3 = -1;
                                                                i4 = 1;
                                                                break;
                                                        }
                                                    }
                                                    c2 = 65535;
                                                    switch (c2) {
                                                    }
                                                } else {
                                                    if (str3.equals(new ObfuscatedString(new long[]{-2658573500862014031L, 3536820927603466498L}).toString())) {
                                                        c2 = 6;
                                                        switch (c2) {
                                                        }
                                                    }
                                                    c2 = 65535;
                                                    switch (c2) {
                                                    }
                                                }
                                            } else {
                                                if (str3.equals(new ObfuscatedString(new long[]{8543954514615374662L, -1206964684805670463L}).toString())) {
                                                    c2 = 4;
                                                    switch (c2) {
                                                    }
                                                }
                                                c2 = 65535;
                                                switch (c2) {
                                                }
                                            }
                                        } else {
                                            if (str3.equals(new ObfuscatedString(new long[]{-5902276249103244954L, 7413791861303698264L}).toString())) {
                                                c2 = 3;
                                                switch (c2) {
                                                }
                                            }
                                            c2 = 65535;
                                            switch (c2) {
                                            }
                                        }
                                    } else {
                                        if (str3.equals(new ObfuscatedString(new long[]{755304673705360787L, 1732201756815926573L}).toString())) {
                                            c2 = 5;
                                            switch (c2) {
                                            }
                                        }
                                        c2 = 65535;
                                        switch (c2) {
                                        }
                                    }
                                } else {
                                    if (str3.equals(new ObfuscatedString(new long[]{6000010162214640492L, 1029214838327726713L}).toString())) {
                                        c2 = 2;
                                        switch (c2) {
                                        }
                                    }
                                    c2 = 65535;
                                    switch (c2) {
                                    }
                                }
                            } else {
                                if (str3.equals(new ObfuscatedString(new long[]{-704154803825698657L, 7654543079611898203L}).toString())) {
                                    c2 = 1;
                                    switch (c2) {
                                    }
                                }
                                c2 = 65535;
                                switch (c2) {
                                }
                            }
                        } else {
                            if (str3.equals(new ObfuscatedString(new long[]{3778565029617782629L, 9173549756853241843L}).toString())) {
                                c2 = 0;
                                switch (c2) {
                                }
                            }
                            c2 = 65535;
                            switch (c2) {
                            }
                        }
                    }
                    i5 = i7;
                    i3 = -1;
                    i4 = 1;
                }
            } else {
                int indexOf2 = str2.indexOf(59, i6);
                int indexOf3 = str2.indexOf(32, i6);
                if (indexOf2 == -1) {
                    indexOf2 = indexOf3;
                } else if (indexOf3 != -1) {
                    indexOf2 = Math.min(indexOf2, indexOf3);
                }
                if (indexOf2 != -1) {
                    String substring2 = str2.substring(i6, indexOf2);
                    int hashCode2 = substring2.hashCode();
                    if (hashCode2 != 3309) {
                        if (hashCode2 != 3464) {
                            if (hashCode2 != 96708) {
                                if (hashCode2 == 3374865 && substring2.equals(new ObfuscatedString(new long[]{-7693897574962519474L, 4562391211858397499L}).toString())) {
                                    c = 2;
                                    if (c == 0) {
                                        if (c != 1) {
                                            if (c != 2) {
                                                if (c != 3) {
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append(new ObfuscatedString(new long[]{5629244616983919298L, 5899844498837536383L, 4551434071280276499L, -1906366977354720984L, 5135038107496055683L}).toString());
                                                    sb.append(substring2);
                                                    zzff.zzf(new ObfuscatedString(new long[]{-6843962070247724312L, -9215899613096470126L, 7701387307114722231L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8373894204666954643L, -8610555194263138526L}), sb));
                                                } else {
                                                    spannableStringBuilder.append(Typography.amp);
                                                }
                                            } else {
                                                spannableStringBuilder.append(' ');
                                            }
                                        } else {
                                            spannableStringBuilder.append(Typography.greater);
                                        }
                                    } else {
                                        spannableStringBuilder.append(Typography.less);
                                    }
                                    if (indexOf2 == indexOf3) {
                                        spannableStringBuilder.append((CharSequence) new ObfuscatedString(new long[]{5603956296544338140L, -1769820982827785654L}).toString());
                                    }
                                    i5 = indexOf2 + 1;
                                    i3 = -1;
                                    i4 = 1;
                                    c3 = 0;
                                }
                                c = 65535;
                                if (c == 0) {
                                }
                                if (indexOf2 == indexOf3) {
                                }
                                i5 = indexOf2 + 1;
                                i3 = -1;
                                i4 = 1;
                                c3 = 0;
                            } else {
                                if (substring2.equals(new ObfuscatedString(new long[]{-6955934963567089411L, 1546237197428624588L}).toString())) {
                                    c = 3;
                                    if (c == 0) {
                                    }
                                    if (indexOf2 == indexOf3) {
                                    }
                                    i5 = indexOf2 + 1;
                                    i3 = -1;
                                    i4 = 1;
                                    c3 = 0;
                                }
                                c = 65535;
                                if (c == 0) {
                                }
                                if (indexOf2 == indexOf3) {
                                }
                                i5 = indexOf2 + 1;
                                i3 = -1;
                                i4 = 1;
                                c3 = 0;
                            }
                        } else {
                            if (substring2.equals(new ObfuscatedString(new long[]{-8409890999645646644L, 5128083698383285555L}).toString())) {
                                c = 0;
                                if (c == 0) {
                                }
                                if (indexOf2 == indexOf3) {
                                }
                                i5 = indexOf2 + 1;
                                i3 = -1;
                                i4 = 1;
                                c3 = 0;
                            }
                            c = 65535;
                            if (c == 0) {
                            }
                            if (indexOf2 == indexOf3) {
                            }
                            i5 = indexOf2 + 1;
                            i3 = -1;
                            i4 = 1;
                            c3 = 0;
                        }
                    } else {
                        if (substring2.equals(new ObfuscatedString(new long[]{-2615406020292625342L, -2183539225269512092L}).toString())) {
                            c = 1;
                            if (c == 0) {
                            }
                            if (indexOf2 == indexOf3) {
                            }
                            i5 = indexOf2 + 1;
                            i3 = -1;
                            i4 = 1;
                            c3 = 0;
                        }
                        c = 65535;
                        if (c == 0) {
                        }
                        if (indexOf2 == indexOf3) {
                        }
                        i5 = indexOf2 + 1;
                        i3 = -1;
                        i4 = 1;
                        c3 = 0;
                    }
                } else {
                    spannableStringBuilder.append(charAt);
                }
            }
            i5 = i6;
            i3 = -1;
            i4 = 1;
            c3 = 0;
        }
        while (!arrayDeque.isEmpty()) {
            zzg(str, (zzame) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        zzg(str, zzame.zzb(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    public static zzea zzb(String str) {
        zzamg zzamgVar = new zzamg();
        zzh(str, zzamgVar);
        return zzamgVar.zza();
    }

    @Nullable
    public static zzama zzc(zzfp zzfpVar, List list) {
        Charset charset = zzfwq.zzc;
        String zzy = zzfpVar.zzy(charset);
        if (zzy != null) {
            Pattern pattern = zza;
            Matcher matcher = pattern.matcher(zzy);
            if (!matcher.matches()) {
                String zzy2 = zzfpVar.zzy(charset);
                if (zzy2 != null) {
                    Matcher matcher2 = pattern.matcher(zzy2);
                    if (matcher2.matches()) {
                        return zze(zzy.trim(), matcher2, zzfpVar, list);
                    }
                }
            } else {
                return zze(null, matcher, zzfpVar, list);
            }
        }
        return null;
    }

    private static int zzd(List list, @Nullable String str, zzame zzameVar) {
        List zzf = zzf(list, str, zzameVar);
        for (int i = 0; i < zzf.size(); i++) {
            zzalz zzalzVar = ((zzamf) zzf.get(i)).zzb;
            if (zzalzVar.zze() != -1) {
                return zzalzVar.zze();
            }
        }
        return -1;
    }

    @Nullable
    private static zzama zze(@Nullable String str, Matcher matcher, zzfp zzfpVar, List list) {
        zzamg zzamgVar = new zzamg();
        try {
            String group = matcher.group(1);
            if (group != null) {
                zzamgVar.zza = zzamj.zzb(group);
                String group2 = matcher.group(2);
                if (group2 != null) {
                    zzamgVar.zzb = zzamj.zzb(group2);
                    String group3 = matcher.group(3);
                    group3.getClass();
                    zzh(group3, zzamgVar);
                    StringBuilder sb = new StringBuilder();
                    String zzy = zzfpVar.zzy(zzfwq.zzc);
                    while (!TextUtils.isEmpty(zzy)) {
                        if (sb.length() > 0) {
                            sb.append(new ObfuscatedString(new long[]{-8234622211936221769L, 908859104842328055L}).toString());
                        }
                        sb.append(zzy.trim());
                        zzy = zzfpVar.zzy(zzfwq.zzc);
                    }
                    zzamgVar.zzc = zza(str, sb.toString(), list);
                    return new zzama(zzamgVar.zza().zzp(), zzamgVar.zza, zzamgVar.zzb);
                }
                throw null;
            }
            throw null;
        } catch (NumberFormatException unused) {
            String valueOf = String.valueOf(matcher.group());
            zzff.zzf(new ObfuscatedString(new long[]{-3028757209197346796L, 7746783303472518280L, 1712755524199150584L}).toString(), new ObfuscatedString(new long[]{449457673263672483L, 3354382241885033529L, -6049599450291356688L, 266771321135690105L, 5997079189748366881L}).toString().concat(valueOf));
            return null;
        }
    }

    private static List zzf(List list, @Nullable String str, zzame zzameVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            zzalz zzalzVar = (zzalz) list.get(i);
            int zzf = zzalzVar.zzf(str, zzameVar.zza, zzameVar.zzd, zzameVar.zzc);
            if (zzf > 0) {
                arrayList.add(new zzamf(zzf, zzalzVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static void zzg(@Nullable String str, zzame zzameVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        char c;
        int i;
        Comparator comparator;
        zzame zzameVar2;
        zzame zzameVar3;
        zzame zzameVar4;
        int i2;
        int i3 = zzameVar.zzb;
        int length = spannableStringBuilder.length();
        String str2 = zzameVar.zza;
        int hashCode = str2.hashCode();
        int i4 = -1;
        if (hashCode == 0) {
            if (str2.equals(new ObfuscatedString(new long[]{-7067118047123316331L}).toString())) {
                c = 7;
            }
            c = 65535;
        } else if (hashCode == 105) {
            if (str2.equals(new ObfuscatedString(new long[]{-2155183205356507148L, 9159384412176811673L}).toString())) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode == 3314158) {
            if (str2.equals(new ObfuscatedString(new long[]{2972866238432256428L, 3155163972188747585L}).toString())) {
                c = 5;
            }
            c = 65535;
        } else if (hashCode == 3511770) {
            if (str2.equals(new ObfuscatedString(new long[]{8920893250873028524L, 6333467252579295176L}).toString())) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode == 98) {
            if (str2.equals(new ObfuscatedString(new long[]{4796710712806654580L, 8152364746537386685L}).toString())) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode == 99) {
            if (str2.equals(new ObfuscatedString(new long[]{5634642460302242932L, 7044938697711492696L}).toString())) {
                c = 4;
            }
            c = 65535;
        } else if (hashCode != 117) {
            if (hashCode == 118 && str2.equals(new ObfuscatedString(new long[]{7134888265387544525L, -4743322470641264666L}).toString())) {
                c = 6;
            }
            c = 65535;
        } else {
            if (str2.equals(new ObfuscatedString(new long[]{-1327361002523394648L, -2169270950628666983L}).toString())) {
                c = 3;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                spannableStringBuilder.setSpan(new StyleSpan(1), i3, length, 33);
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, length, 33);
                break;
            case 2:
                int zzd2 = zzd(list2, str, zzameVar);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                comparator = zzamd.zza;
                Collections.sort(arrayList, comparator);
                int i5 = zzameVar.zzb;
                int i6 = 0;
                int i7 = 0;
                while (i6 < arrayList.size()) {
                    zzameVar2 = ((zzamd) arrayList.get(i6)).zzb;
                    if (new ObfuscatedString(new long[]{8863826899702353448L, -4914416905143156652L}).toString().equals(zzameVar2.zza)) {
                        zzamd zzamdVar = (zzamd) arrayList.get(i6);
                        zzameVar3 = zzamdVar.zzb;
                        int zzd3 = zzd(list2, str, zzameVar3);
                        if (zzd3 == i4) {
                            zzd3 = zzd2 != i4 ? zzd2 : 1;
                        }
                        zzameVar4 = zzamdVar.zzb;
                        int i8 = zzameVar4.zzb - i7;
                        i2 = zzamdVar.zzc;
                        int i9 = i2 - i7;
                        CharSequence subSequence = spannableStringBuilder.subSequence(i8, i9);
                        spannableStringBuilder.delete(i8, i9);
                        spannableStringBuilder.setSpan(new zzeh(subSequence.toString(), zzd3), i5, i8, 33);
                        i7 = subSequence.length() + i7;
                        i5 = i8;
                    }
                    i6++;
                    i4 = -1;
                }
                break;
            case 3:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, length, 33);
                break;
            case 4:
                for (String str3 : zzameVar.zzd) {
                    Map map = zzc;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i3, length, 33);
                    } else {
                        Map map2 = zzd;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i3, length, 33);
                        }
                    }
                }
                break;
            case 5:
            case 6:
            case 7:
                break;
            default:
                return;
        }
        List zzf = zzf(list2, str, zzameVar);
        for (int i10 = 0; i10 < zzf.size(); i10 += i) {
            zzalz zzalzVar = ((zzamf) zzf.get(i10)).zzb;
            if (zzalzVar == null) {
                i = 1;
            } else {
                if (zzalzVar.zzg() != -1) {
                    zzei.zza(spannableStringBuilder, new StyleSpan(zzalzVar.zzg()), i3, length, 33);
                }
                if (zzalzVar.zzz()) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i3, length, 33);
                }
                if (zzalzVar.zzy()) {
                    zzei.zza(spannableStringBuilder, new ForegroundColorSpan(zzalzVar.zzc()), i3, length, 33);
                }
                if (zzalzVar.zzx()) {
                    zzei.zza(spannableStringBuilder, new BackgroundColorSpan(zzalzVar.zzb()), i3, length, 33);
                }
                if (zzalzVar.zzr() != null) {
                    zzei.zza(spannableStringBuilder, new TypefaceSpan(zzalzVar.zzr()), i3, length, 33);
                }
                int zzd4 = zzalzVar.zzd();
                if (zzd4 != 1) {
                    if (zzd4 == 2) {
                        zzei.zza(spannableStringBuilder, new RelativeSizeSpan(zzalzVar.zza()), i3, length, 33);
                    } else if (zzd4 == 3) {
                        zzei.zza(spannableStringBuilder, new RelativeSizeSpan(zzalzVar.zza() / 100.0f), i3, length, 33);
                    }
                    i = 1;
                } else {
                    i = 1;
                    zzei.zza(spannableStringBuilder, new AbsoluteSizeSpan((int) zzalzVar.zza(), true), i3, length, 33);
                }
                if (zzalzVar.zzw()) {
                    spannableStringBuilder.setSpan(new zzeg(), i3, length, 33);
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02a2, code lost:
    
        if (r10 == 0) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x02a4, code lost:
    
        if (r10 == 1) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x02a6, code lost:
    
        if (r10 == 2) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x02a8, code lost:
    
        if (r10 == 3) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x02aa, code lost:
    
        if (r10 == 4) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02ac, code lost:
    
        if (r10 == 5) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x02ae, code lost:
    
        com.google.android.gms.internal.ads.zzff.zzf(new com.panda912.muddy.ObfuscatedString(new long[]{2992566885344272198L, -2881492382018323424L, -8981130428342680756L}).toString(), new com.panda912.muddy.ObfuscatedString(new long[]{7323477511785751934L, -2585511440925992116L, -2810666269486281333L, -7284549663500988321L, 1635878712235822140L}).toString().concat(r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x02d3, code lost:
    
        r5 = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x02da, code lost:
    
        r14.zzd = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x02d5, code lost:
    
        r5 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02d1, code lost:
    
        r5 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02d7, code lost:
    
        r5 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02d9, code lost:
    
        r5 = 1;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x02ee. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:90:0x014b. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void zzh(String str, zzamg zzamgVar) {
        Matcher matcher = zzb.matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            group.getClass();
            String group2 = matcher.group(2);
            group2.getClass();
            try {
                int i = Integer.MIN_VALUE;
                char c = 65535;
                if (!new ObfuscatedString(new long[]{8392314558740040032L, -4652691113330111120L}).toString().equals(group)) {
                    if (!new ObfuscatedString(new long[]{-6084162828012773383L, 4890965617836497037L}).toString().equals(group)) {
                        if (!new ObfuscatedString(new long[]{-7702726172753146155L, -943009433250162742L}).toString().equals(group)) {
                            if (new ObfuscatedString(new long[]{-6804837204582350967L, -1691383675569229447L}).toString().equals(group)) {
                                zzamgVar.zzj = zzamj.zza(group2);
                            } else if (!new ObfuscatedString(new long[]{-2635513134041084067L, -964466340111058122L}).toString().equals(group)) {
                                zzff.zzf(new ObfuscatedString(new long[]{7211115975651761407L, -1894839930715663113L, -4870596165229114018L}).toString(), new ObfuscatedString(new long[]{7773420465268010201L, 4177855418765126752L, -5748568538594382193L, -6643981988475481092L}).toString() + group + new ObfuscatedString(new long[]{-8623097384644181342L, -2318650886185239892L}).toString() + group2);
                            } else {
                                int hashCode = group2.hashCode();
                                if (hashCode != 3462) {
                                    if (hashCode == 3642 && group2.equals(new ObfuscatedString(new long[]{-5387535020920162933L, 5838788405216633116L}).toString())) {
                                        c = 0;
                                    }
                                } else if (group2.equals(new ObfuscatedString(new long[]{2744726780142502988L, -5763150468260686918L}).toString())) {
                                    c = 1;
                                }
                                if (c != 0) {
                                    if (c != 1) {
                                        zzff.zzf(new ObfuscatedString(new long[]{8545496124068630316L, -8765158335286770296L, 490557603653197125L}).toString(), new ObfuscatedString(new long[]{6955952306757952291L, 2194412894070282743L, 5246820449671681345L, -281950705936607322L, 3403644604568642372L}).toString().concat(group2));
                                    } else {
                                        i = 2;
                                    }
                                } else {
                                    i = 1;
                                }
                                zzamgVar.zzk = i;
                            }
                        } else {
                            int indexOf = group2.indexOf(44);
                            if (indexOf != -1) {
                                String substring = group2.substring(indexOf + 1);
                                switch (substring.hashCode()) {
                                    case -1842484672:
                                        if (substring.equals(new ObfuscatedString(new long[]{-1584854705144948454L, 6298678398463987630L, -5055211199419048528L}).toString())) {
                                            c = 0;
                                            break;
                                        }
                                        break;
                                    case -1364013995:
                                        if (substring.equals(new ObfuscatedString(new long[]{1160734245489678621L, 809142578871733555L}).toString())) {
                                            c = 2;
                                            break;
                                        }
                                        break;
                                    case -1276788989:
                                        if (substring.equals(new ObfuscatedString(new long[]{2659367337209650024L, 7948385622836584909L, 3210503384352289086L}).toString())) {
                                            c = 4;
                                            break;
                                        }
                                        break;
                                    case -1074341483:
                                        if (substring.equals(new ObfuscatedString(new long[]{6244268888095930183L, 5222888773325143219L}).toString())) {
                                            c = 3;
                                            break;
                                        }
                                        break;
                                    case 100571:
                                        if (substring.equals(new ObfuscatedString(new long[]{-6544632369427679060L, 4439400572950036574L}).toString())) {
                                            c = 5;
                                            break;
                                        }
                                        break;
                                    case 109757538:
                                        if (substring.equals(new ObfuscatedString(new long[]{-2786602405741411066L, -2284894647676699727L}).toString())) {
                                            c = 1;
                                            break;
                                        }
                                        break;
                                }
                                if (c != 0 && c != 1) {
                                    if (c != 2 && c != 3) {
                                        if (c != 4 && c != 5) {
                                            zzff.zzf(new ObfuscatedString(new long[]{6494316322639811553L, -8402424805757586209L, -1746898180662390493L}).toString(), new ObfuscatedString(new long[]{7964906368560073517L, -6701375017604915091L, -5805986580665223047L, 2769781269503929557L}).toString().concat(substring));
                                        } else {
                                            i = 2;
                                        }
                                    } else {
                                        i = 1;
                                    }
                                } else {
                                    i = 0;
                                }
                                zzamgVar.zzi = i;
                                group2 = group2.substring(0, indexOf);
                            }
                            zzamgVar.zzh = zzamj.zza(group2);
                        }
                    } else {
                        switch (group2.hashCode()) {
                            case -1364013995:
                                if (group2.equals(new ObfuscatedString(new long[]{7406284577069705871L, 3967794721568656976L}).toString())) {
                                    c = 2;
                                    break;
                                }
                                break;
                            case -1074341483:
                                if (group2.equals(new ObfuscatedString(new long[]{-7217815792612575536L, 6292502390105176822L}).toString())) {
                                    c = 3;
                                    break;
                                }
                                break;
                            case 100571:
                                if (group2.equals(new ObfuscatedString(new long[]{4076453462599536018L, -8254964580464136657L}).toString())) {
                                    c = 4;
                                    break;
                                }
                                break;
                            case 3317767:
                                if (group2.equals(new ObfuscatedString(new long[]{8019246430528651113L, 4217111069407492158L}).toString())) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 108511772:
                                if (group2.equals(new ObfuscatedString(new long[]{3531342465402367500L, -3091547251626802746L}).toString())) {
                                    c = 5;
                                    break;
                                }
                                break;
                            case 109757538:
                                if (group2.equals(new ObfuscatedString(new long[]{4016873579990832507L, 8852952166981361560L}).toString())) {
                                    c = 0;
                                    break;
                                }
                                break;
                        }
                    }
                } else {
                    int indexOf2 = group2.indexOf(44);
                    if (indexOf2 != -1) {
                        String substring2 = group2.substring(indexOf2 + 1);
                        switch (substring2.hashCode()) {
                            case -1364013995:
                                if (substring2.equals(new ObfuscatedString(new long[]{-3464767087753205957L, -432939301949442426L}).toString())) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case -1074341483:
                                if (substring2.equals(new ObfuscatedString(new long[]{-6159385844851527146L, 8512175693075549646L}).toString())) {
                                    c = 2;
                                    break;
                                }
                                break;
                            case 100571:
                                if (substring2.equals(new ObfuscatedString(new long[]{-8949476475848288544L, -2840323779926075786L}).toString())) {
                                    c = 3;
                                    break;
                                }
                                break;
                            case 109757538:
                                if (substring2.equals(new ObfuscatedString(new long[]{2851313200272698988L, -6241863593199932500L}).toString())) {
                                    c = 0;
                                    break;
                                }
                                break;
                        }
                        if (c != 0) {
                            if (c != 1 && c != 2) {
                                if (c != 3) {
                                    zzff.zzf(new ObfuscatedString(new long[]{7884353993322465618L, 7367030904406127280L, -2900021872305674483L}).toString(), new ObfuscatedString(new long[]{7230734935940348042L, -279178317113293116L, -8887257438494035097L, 7325927515372033350L}).toString().concat(substring2));
                                } else {
                                    i = 2;
                                }
                            } else {
                                i = 1;
                            }
                        } else {
                            i = 0;
                        }
                        zzamgVar.zzg = i;
                        group2 = group2.substring(0, indexOf2);
                    }
                    if (group2.endsWith(new ObfuscatedString(new long[]{-4922490021072467818L, 2013200452165401750L}).toString())) {
                        zzamgVar.zze = zzamj.zza(group2);
                        zzamgVar.zzf = 0;
                    } else {
                        zzamgVar.zze = Integer.parseInt(group2);
                        zzamgVar.zzf = 1;
                    }
                }
            } catch (NumberFormatException unused) {
                zzff.zzf(new ObfuscatedString(new long[]{-991954036142447909L, -6008337764551260321L, 2403636157960550179L}).toString(), new ObfuscatedString(new long[]{6353221964474880056L, -7123590335926563663L, -3561071500238149366L, 1472788199394030646L, 3851550364642843240L}).toString().concat(String.valueOf(matcher.group())));
            }
        }
    }
}
