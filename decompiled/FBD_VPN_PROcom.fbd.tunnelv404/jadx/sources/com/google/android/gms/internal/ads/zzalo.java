package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes2.dex */
final class zzalo {

    @Nullable
    public final String zza;

    @Nullable
    public final String zzb;
    public final boolean zzc;
    public final long zzd;
    public final long zze;

    @Nullable
    public final zzalu zzf;
    public final String zzg;

    @Nullable
    public final String zzh;

    @Nullable
    public final zzalo zzi;

    @Nullable
    private final String[] zzj;
    private final HashMap zzk;
    private final HashMap zzl;
    private List zzm;

    private zzalo(@Nullable String str, @Nullable String str2, long j, long j2, @Nullable zzalu zzaluVar, @Nullable String[] strArr, String str3, @Nullable String str4, @Nullable zzalo zzaloVar) {
        boolean z;
        this.zza = str;
        this.zzb = str2;
        this.zzh = str4;
        this.zzf = zzaluVar;
        this.zzj = strArr;
        if (str2 != null) {
            z = true;
        } else {
            z = false;
        }
        this.zzc = z;
        this.zzd = j;
        this.zze = j2;
        str3.getClass();
        this.zzg = str3;
        this.zzi = zzaloVar;
        this.zzk = new HashMap();
        this.zzl = new HashMap();
    }

    public static zzalo zzb(@Nullable String str, long j, long j2, @Nullable zzalu zzaluVar, @Nullable String[] strArr, String str2, @Nullable String str3, @Nullable zzalo zzaloVar) {
        return new zzalo(str, null, j, j2, zzaluVar, strArr, str2, str3, zzaloVar);
    }

    public static zzalo zzc(String str) {
        return new zzalo(null, str.replaceAll(new ObfuscatedString(new long[]{-8700130322687843260L, 793293796395999600L}).toString(), new ObfuscatedString(new long[]{3730624782816716717L, -2929378206394133725L}).toString()).replaceAll(new ObfuscatedString(new long[]{5416700485689609859L, -3051392731189928295L}).toString(), new ObfuscatedString(new long[]{-1992020416735282215L, -7353333680301241581L}).toString()).replaceAll(new ObfuscatedString(new long[]{4648282867072607157L, 951046022236835647L}).toString(), new ObfuscatedString(new long[]{-1706970552372488425L, 7726387587581240780L}).toString()).replaceAll(new ObfuscatedString(new long[]{1634334742034794715L, 6888538399943643071L, -2289989333905541468L}).toString(), new ObfuscatedString(new long[]{2766513295066456288L, 1209675789032130666L}).toString()), -9223372036854775807L, -9223372036854775807L, null, null, new ObfuscatedString(new long[]{6875712004391943032L}).toString(), null, null);
    }

    private static SpannableStringBuilder zzi(String str, Map map) {
        if (!map.containsKey(str)) {
            zzea zzeaVar = new zzea();
            zzeaVar.zzl(new SpannableStringBuilder());
            map.put(str, zzeaVar);
        }
        CharSequence zzq = ((zzea) map.get(str)).zzq();
        zzq.getClass();
        return (SpannableStringBuilder) zzq;
    }

    private final void zzj(TreeSet treeSet, boolean z) {
        boolean z2;
        String obfuscatedString = new ObfuscatedString(new long[]{-499625294862423238L, 5961207025231369276L}).toString();
        String obfuscatedString2 = new ObfuscatedString(new long[]{8380338320526925690L, 2861677366169233261L}).toString();
        String str = this.zza;
        boolean equals = obfuscatedString2.equals(str);
        boolean equals2 = obfuscatedString.equals(str);
        if (z || equals || (equals2 && this.zzh != null)) {
            long j = this.zzd;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.zze;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.zzm != null) {
            for (int i = 0; i < this.zzm.size(); i++) {
                zzalo zzaloVar = (zzalo) this.zzm.get(i);
                if (z || equals) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzaloVar.zzj(treeSet, z2);
            }
        }
    }

    private final void zzk(long j, String str, List list) {
        String str2;
        if (!new ObfuscatedString(new long[]{-3510668667142750441L}).toString().equals(this.zzg)) {
            str = this.zzg;
        }
        if (zzg(j) && new ObfuscatedString(new long[]{-8893195420785041451L, -1925008727605780929L}).toString().equals(this.zza) && (str2 = this.zzh) != null) {
            list.add(new Pair(str, str2));
            return;
        }
        for (int i = 0; i < zza(); i++) {
            zzd(i).zzk(j, str, list);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x025c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzl(long j, Map map, Map map2, String str, Map map3) {
        Iterator it;
        zzalo zzaloVar;
        zzalu zza;
        int zze;
        int i;
        int i2 = -1;
        if (zzg(j)) {
            String str2 = !new ObfuscatedString(new long[]{-1090606817159966870L}).toString().equals(this.zzg) ? this.zzg : str;
            Iterator it2 = this.zzl.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                String str3 = (String) entry.getKey();
                int intValue = this.zzk.containsKey(str3) ? ((Integer) this.zzk.get(str3)).intValue() : 0;
                int intValue2 = ((Integer) entry.getValue()).intValue();
                if (intValue != intValue2) {
                    zzea zzeaVar = (zzea) map3.get(str3);
                    zzeaVar.getClass();
                    zzals zzalsVar = (zzals) map2.get(str2);
                    zzalsVar.getClass();
                    zzalu zza2 = zzalt.zza(this.zzf, this.zzj, map);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) zzeaVar.zzq();
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        zzeaVar.zzl(spannableStringBuilder);
                    }
                    if (zza2 != null) {
                        zzalo zzaloVar2 = this.zzi;
                        if (zza2.zzh() != i2) {
                            spannableStringBuilder.setSpan(new StyleSpan(zza2.zzh()), intValue, intValue2, 33);
                        }
                        if (zza2.zzI()) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), intValue, intValue2, 33);
                        }
                        if (zza2.zzJ()) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), intValue, intValue2, 33);
                        }
                        if (zza2.zzH()) {
                            zzei.zza(spannableStringBuilder, new ForegroundColorSpan(zza2.zzd()), intValue, intValue2, 33);
                        }
                        if (zza2.zzG()) {
                            zzei.zza(spannableStringBuilder, new BackgroundColorSpan(zza2.zzc()), intValue, intValue2, 33);
                        }
                        if (zza2.zzD() != null) {
                            zzei.zza(spannableStringBuilder, new TypefaceSpan(zza2.zzD()), intValue, intValue2, 33);
                        }
                        if (zza2.zzk() != null) {
                            zzaln zzk = zza2.zzk();
                            zzk.getClass();
                            int i3 = zzk.zza;
                            if (i3 == -1) {
                                int i4 = zzalsVar.zzj;
                                i3 = (i4 == 2 || i4 == 1) ? 3 : 1;
                                i = 1;
                            } else {
                                i = zzk.zzb;
                            }
                            int i5 = zzk.zzc;
                            if (i5 == -2) {
                                i5 = 1;
                            }
                            zzei.zza(spannableStringBuilder, new zzej(i3, i, i5), intValue, intValue2, 33);
                        }
                        int zzg = zza2.zzg();
                        if (zzg == 2) {
                            while (true) {
                                if (zzaloVar2 == null) {
                                    zzaloVar2 = null;
                                    break;
                                }
                                zzalu zza3 = zzalt.zza(zzaloVar2.zzf, zzaloVar2.zzj, map);
                                if (zza3 != null && zza3.zzg() == 1) {
                                    break;
                                } else {
                                    zzaloVar2 = zzaloVar2.zzi;
                                }
                            }
                            if (zzaloVar2 != null) {
                                ArrayDeque arrayDeque = new ArrayDeque();
                                arrayDeque.push(zzaloVar2);
                                while (true) {
                                    if (arrayDeque.isEmpty()) {
                                        it = it2;
                                        zzaloVar = null;
                                        break;
                                    }
                                    zzalo zzaloVar3 = (zzalo) arrayDeque.pop();
                                    zzalu zza4 = zzalt.zza(zzaloVar3.zzf, zzaloVar3.zzj, map);
                                    if (zza4 != null && zza4.zzg() == 3) {
                                        it = it2;
                                        zzaloVar = zzaloVar3;
                                        break;
                                    } else {
                                        int zza5 = zzaloVar3.zza() - 1;
                                        while (zza5 >= 0) {
                                            arrayDeque.push(zzaloVar3.zzd(zza5));
                                            zza5--;
                                            it2 = it2;
                                        }
                                    }
                                }
                                if (zzaloVar != null) {
                                    if (zzaloVar.zza() == 1 && zzaloVar.zzd(0).zzb != null) {
                                        String str4 = zzaloVar.zzd(0).zzb;
                                        int i6 = zzfy.zza;
                                        zzalu zza6 = zzalt.zza(zzaloVar.zzf, zzaloVar.zzj, map);
                                        int zzf = zza6 != null ? zza6.zzf() : -1;
                                        if (zzf == -1 && (zza = zzalt.zza(zzaloVar2.zzf, zzaloVar2.zzj, map)) != null) {
                                            zzf = zza.zzf();
                                        }
                                        spannableStringBuilder.setSpan(new zzeh(str4, zzf), intValue, intValue2, 33);
                                        if (zza2.zzF()) {
                                            zzei.zza(spannableStringBuilder, new zzeg(), intValue, intValue2, 33);
                                        }
                                        zze = zza2.zze();
                                        if (zze != 1) {
                                            zzei.zza(spannableStringBuilder, new AbsoluteSizeSpan((int) zza2.zza(), true), intValue, intValue2, 33);
                                        } else if (zze == 2) {
                                            zzei.zza(spannableStringBuilder, new RelativeSizeSpan(zza2.zza()), intValue, intValue2, 33);
                                        } else if (zze == 3) {
                                            zzei.zza(spannableStringBuilder, new RelativeSizeSpan(zza2.zza() / 100.0f), intValue, intValue2, 33);
                                        }
                                        if (new ObfuscatedString(new long[]{-6672492454505811499L, 2813338477886399052L}).toString().equals(this.zza)) {
                                            if (zza2.zzb() != Float.MAX_VALUE) {
                                                zzeaVar.zzj((zza2.zzb() * (-90.0f)) / 100.0f);
                                            }
                                            if (zza2.zzj() != null) {
                                                zzeaVar.zzm(zza2.zzj());
                                            }
                                            if (zza2.zzi() != null) {
                                                zzeaVar.zzg(zza2.zzi());
                                            }
                                        }
                                        it2 = it;
                                        i2 = -1;
                                    }
                                    zzff.zze(new ObfuscatedString(new long[]{6054719930548493505L, 2897555935438648345L, 6721718176636837612L}).toString(), new ObfuscatedString(new long[]{-1105110405960643875L, 4194943784160962552L, 4890855015182280457L, -7744576849294864350L, 1634601393087668596L, 2603073423968192330L, 844001240432732584L, 5699992143056054226L}).toString());
                                    if (zza2.zzF()) {
                                    }
                                    zze = zza2.zze();
                                    if (zze != 1) {
                                    }
                                    if (new ObfuscatedString(new long[]{-6672492454505811499L, 2813338477886399052L}).toString().equals(this.zza)) {
                                    }
                                    it2 = it;
                                    i2 = -1;
                                }
                                if (zza2.zzF()) {
                                }
                                zze = zza2.zze();
                                if (zze != 1) {
                                }
                                if (new ObfuscatedString(new long[]{-6672492454505811499L, 2813338477886399052L}).toString().equals(this.zza)) {
                                }
                                it2 = it;
                                i2 = -1;
                            }
                        } else if (zzg == 3 || zzg == 4) {
                            spannableStringBuilder.setSpan(new zzalm(), intValue, intValue2, 33);
                        }
                        it = it2;
                        if (zza2.zzF()) {
                        }
                        zze = zza2.zze();
                        if (zze != 1) {
                        }
                        if (new ObfuscatedString(new long[]{-6672492454505811499L, 2813338477886399052L}).toString().equals(this.zza)) {
                        }
                        it2 = it;
                        i2 = -1;
                    }
                }
            }
            for (int i7 = 0; i7 < zza(); i7++) {
                zzd(i7).zzl(j, map, map2, str2, map3);
            }
        }
    }

    private final void zzm(long j, boolean z, String str, Map map) {
        String str2;
        boolean z2;
        this.zzk.clear();
        this.zzl.clear();
        if (!new ObfuscatedString(new long[]{-4761306347139240795L, 6224730200610496056L}).toString().equals(this.zza)) {
            if (!new ObfuscatedString(new long[]{-6598116679946361137L}).toString().equals(this.zzg)) {
                str2 = this.zzg;
            } else {
                str2 = str;
            }
            if (this.zzc && z) {
                SpannableStringBuilder zzi = zzi(str2, map);
                String str3 = this.zzb;
                str3.getClass();
                zzi.append((CharSequence) str3);
                return;
            }
            if (new ObfuscatedString(new long[]{-4835638595669205618L, -6950014467339188558L}).toString().equals(this.zza) && z) {
                zzi(str2, map).append('\n');
                return;
            }
            if (zzg(j)) {
                for (Map.Entry entry : map.entrySet()) {
                    HashMap hashMap = this.zzk;
                    String str4 = (String) entry.getKey();
                    CharSequence zzq = ((zzea) entry.getValue()).zzq();
                    zzq.getClass();
                    hashMap.put(str4, Integer.valueOf(zzq.length()));
                }
                boolean equals = new ObfuscatedString(new long[]{4894065781821365513L, 2529431200119319467L}).toString().equals(this.zza);
                for (int i = 0; i < zza(); i++) {
                    zzalo zzd = zzd(i);
                    if (z || equals) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zzd.zzm(j, z2, str2, map);
                }
                if (equals) {
                    SpannableStringBuilder zzi2 = zzi(str2, map);
                    int length = zzi2.length();
                    do {
                        length--;
                        if (length < 0) {
                            break;
                        }
                    } while (zzi2.charAt(length) == ' ');
                    if (length >= 0 && zzi2.charAt(length) != '\n') {
                        zzi2.append('\n');
                    }
                }
                for (Map.Entry entry2 : map.entrySet()) {
                    HashMap hashMap2 = this.zzl;
                    String str5 = (String) entry2.getKey();
                    CharSequence zzq2 = ((zzea) entry2.getValue()).zzq();
                    zzq2.getClass();
                    hashMap2.put(str5, Integer.valueOf(zzq2.length()));
                }
            }
        }
    }

    public final int zza() {
        List list = this.zzm;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final zzalo zzd(int i) {
        List list = this.zzm;
        if (list != null) {
            return (zzalo) list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public final List zze(long j, Map map, Map map2, Map map3) {
        ArrayList arrayList = new ArrayList();
        zzk(j, this.zzg, arrayList);
        TreeMap treeMap = new TreeMap();
        zzm(j, false, this.zzg, treeMap);
        zzl(j, map, map2, this.zzg, treeMap);
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Pair pair = (Pair) arrayList.get(i);
            String str = (String) map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                zzals zzalsVar = (zzals) map2.get(pair.first);
                zzalsVar.getClass();
                zzea zzeaVar = new zzea();
                zzeaVar.zzc(decodeByteArray);
                zzeaVar.zzh(zzalsVar.zzb);
                zzeaVar.zzi(0);
                zzeaVar.zze(zzalsVar.zzc, 0);
                zzeaVar.zzf(zzalsVar.zze);
                zzeaVar.zzk(zzalsVar.zzf);
                zzeaVar.zzd(zzalsVar.zzg);
                zzeaVar.zzo(zzalsVar.zzj);
                arrayList2.add(zzeaVar.zzp());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            zzals zzalsVar2 = (zzals) map2.get(entry.getKey());
            zzalsVar2.getClass();
            zzea zzeaVar2 = (zzea) entry.getValue();
            CharSequence zzq = zzeaVar2.zzq();
            zzq.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) zzq;
            for (zzalm zzalmVar : (zzalm[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), zzalm.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(zzalmVar), spannableStringBuilder.getSpanEnd(zzalmVar), (CharSequence) new ObfuscatedString(new long[]{-2652061612564949819L}).toString());
            }
            int i2 = 0;
            while (i2 < spannableStringBuilder.length()) {
                int i3 = i2 + 1;
                if (spannableStringBuilder.charAt(i2) == ' ') {
                    int i4 = i3;
                    while (i4 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i4) == ' ') {
                        i4++;
                    }
                    int i5 = i4 - i3;
                    if (i5 > 0) {
                        spannableStringBuilder.delete(i2, i5 + i2);
                    }
                }
                i2 = i3;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            int i6 = 0;
            while (i6 < spannableStringBuilder.length() - 1) {
                int i7 = i6 + 1;
                if (spannableStringBuilder.charAt(i6) == '\n' && spannableStringBuilder.charAt(i7) == ' ') {
                    spannableStringBuilder.delete(i7, i6 + 2);
                }
                i6 = i7;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            int i8 = 0;
            while (i8 < spannableStringBuilder.length() - 1) {
                int i9 = i8 + 1;
                if (spannableStringBuilder.charAt(i8) == ' ' && spannableStringBuilder.charAt(i9) == '\n') {
                    spannableStringBuilder.delete(i8, i9);
                }
                i8 = i9;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            zzeaVar2.zze(zzalsVar2.zzc, zzalsVar2.zzd);
            zzeaVar2.zzf(zzalsVar2.zze);
            zzeaVar2.zzh(zzalsVar2.zzb);
            zzeaVar2.zzk(zzalsVar2.zzf);
            zzeaVar2.zzn(zzalsVar2.zzi, zzalsVar2.zzh);
            zzeaVar2.zzo(zzalsVar2.zzj);
            arrayList2.add(zzeaVar2.zzp());
        }
        return arrayList2;
    }

    public final void zzf(zzalo zzaloVar) {
        if (this.zzm == null) {
            this.zzm = new ArrayList();
        }
        this.zzm.add(zzaloVar);
    }

    public final boolean zzg(long j) {
        long j2 = this.zzd;
        if (j2 == -9223372036854775807L) {
            if (this.zze == -9223372036854775807L) {
                return true;
            }
            j2 = -9223372036854775807L;
        }
        if (j2 <= j && this.zze == -9223372036854775807L) {
            return true;
        }
        if (j2 != -9223372036854775807L || j >= this.zze) {
            return j2 <= j && j < this.zze;
        }
        return true;
    }

    public final long[] zzh() {
        TreeSet treeSet = new TreeSet();
        int i = 0;
        zzj(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = ((Long) it.next()).longValue();
            i++;
        }
        return jArr;
    }
}
