package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import kotlin.text.Typography;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzll {
    public static String zza(zzlj zzljVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-8511428640999056634L, 5971983595439485204L}).toString());
        sb.append(str);
        zzd(zzljVar, sb, 0);
        return sb.toString();
    }

    public static final void zzb(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zzb(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                zzb(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(new ObfuscatedString(new long[]{-2713730604916500596L, 1634988153484511673L}).toString());
            sb.append(zzmj.zza(zzjb.zzm((String) obj)));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzjb) {
            sb.append(new ObfuscatedString(new long[]{2899302537368975995L, 7332774886122574963L}).toString());
            sb.append(zzmj.zza((zzjb) obj));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzkc) {
            sb.append(new ObfuscatedString(new long[]{-2440186141461905159L, -864507786826369073L}).toString());
            zzd((zzkc) obj, sb, i + 2);
            sb.append(new ObfuscatedString(new long[]{-1264995157981509819L, -2283130475854685007L}).toString());
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append(new ObfuscatedString(new long[]{-6194846827306185052L, 8746789554514838252L}).toString());
            return;
        }
        if (obj instanceof Map.Entry) {
            sb.append(new ObfuscatedString(new long[]{-8302601149433721087L, 3782095783623623113L}).toString());
            Map.Entry entry = (Map.Entry) obj;
            int i4 = i + 2;
            zzb(sb, i4, new ObfuscatedString(new long[]{8860860205347381377L, -8688304081317647589L}).toString(), entry.getKey());
            zzb(sb, i4, new ObfuscatedString(new long[]{498438540324819378L, -7724746240395116571L}).toString(), entry.getValue());
            sb.append(new ObfuscatedString(new long[]{1431891603727644737L, -6798788266169955123L}).toString());
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append(new ObfuscatedString(new long[]{6128271383520407176L, -2235368589086043881L}).toString());
            return;
        }
        sb.append(new ObfuscatedString(new long[]{7184329309762938909L, 8646125555985664802L}).toString());
        sb.append(obj);
    }

    private static final String zzc(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append(new ObfuscatedString(new long[]{-6238392808786924817L, 8157902385569107320L}).toString());
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    private static void zzd(zzlj zzljVar, StringBuilder sb, int i) {
        String str;
        int i2;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet treeSet = new TreeSet();
        for (Method method : zzljVar.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith(new ObfuscatedString(new long[]{-4689098393745391039L, 1183684658206922000L}).toString())) {
                    treeSet.add(method.getName());
                }
            }
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (str2.startsWith(new ObfuscatedString(new long[]{-7163687274847769539L, 7356694379723904976L}).toString())) {
                str = str2.substring(3);
            } else {
                str = str2;
            }
            if (str.endsWith(new ObfuscatedString(new long[]{3416838581310352462L, -2056552283369094819L}).toString()) && !str.endsWith(new ObfuscatedString(new long[]{-4752379163057313177L, -128344676250195638L, -625168970155079524L}).toString()) && !str.equals(new ObfuscatedString(new long[]{4326894722439929878L, 537792346524390472L}).toString())) {
                String concat = String.valueOf(str.substring(0, 1).toLowerCase()).concat(String.valueOf(str.substring(1, str.length() - 4)));
                Method method2 = (Method) hashMap.get(str2);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    zzb(sb, i, zzc(concat), zzkc.zzbK(method2, zzljVar, new Object[0]));
                }
            }
            if (str.endsWith(new ObfuscatedString(new long[]{3971197284976472346L, -5943754018574615351L}).toString()) && !str.equals(new ObfuscatedString(new long[]{3592759300033916228L, -3963972590016266715L}).toString())) {
                String concat2 = String.valueOf(str.substring(0, 1).toLowerCase()).concat(String.valueOf(str.substring(1, str.length() - 3)));
                Method method3 = (Method) hashMap.get(str2);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    zzb(sb, i, zzc(concat2), zzkc.zzbK(method3, zzljVar, new Object[0]));
                }
            }
            if (((Method) hashMap2.get(new ObfuscatedString(new long[]{5655341202941081869L, -3786278693973646027L}).toString().concat(str))) != null) {
                if (str.endsWith(new ObfuscatedString(new long[]{7194612986644927850L, 3270043076506860719L}).toString())) {
                    i2 = 0;
                    if (!hashMap.containsKey(new ObfuscatedString(new long[]{-976206692055220122L, 2370777043893591383L}).toString().concat(String.valueOf(str.substring(0, str.length() - 5))))) {
                    }
                } else {
                    i2 = 0;
                }
                String concat3 = String.valueOf(str.substring(i2, 1).toLowerCase()).concat(String.valueOf(str.substring(1)));
                Method method4 = (Method) hashMap.get(new ObfuscatedString(new long[]{5471088755373275138L, 7706340533934041412L}).toString().concat(str));
                Method method5 = (Method) hashMap.get(new ObfuscatedString(new long[]{1336881852669871395L, 2555689965109934926L}).toString().concat(str));
                if (method4 != null) {
                    Object zzbK = zzkc.zzbK(method4, zzljVar, new Object[0]);
                    if (method5 == null) {
                        if (zzbK instanceof Boolean) {
                            if (((Boolean) zzbK).booleanValue()) {
                            }
                        } else if (zzbK instanceof Integer) {
                            if (((Integer) zzbK).intValue() != 0) {
                            }
                        } else if (zzbK instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) zzbK).floatValue()) != 0) {
                            }
                        } else if (zzbK instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) zzbK).doubleValue()) != 0) {
                            }
                        } else {
                            if (zzbK instanceof String) {
                                equals = zzbK.equals(new ObfuscatedString(new long[]{-5545490201142073210L}).toString());
                            } else if (zzbK instanceof zzjb) {
                                equals = zzbK.equals(zzjb.zzb);
                            } else if (zzbK instanceof zzlj) {
                                if (zzbK != ((zzlj) zzbK).zzbR()) {
                                }
                            } else if ((zzbK instanceof Enum) && ((Enum) zzbK).ordinal() == 0) {
                            }
                            if (!equals) {
                            }
                        }
                        zzb(sb, i, zzc(concat3), zzbK);
                    } else if (((Boolean) zzkc.zzbK(method5, zzljVar, new Object[0])).booleanValue()) {
                        zzb(sb, i, zzc(concat3), zzbK);
                    }
                }
            }
        }
        if (!(zzljVar instanceof zzjz)) {
            zzmm zzmmVar = ((zzkc) zzljVar).zzc;
            if (zzmmVar != null) {
                zzmmVar.zzg(sb, i);
                return;
            }
            return;
        }
        throw null;
    }
}
