package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import kotlin.text.Typography;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzhbg {
    private static final char[] zza;

    static {
        char[] cArr = new char[80];
        zza = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static String zza(zzhbe zzhbeVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{4224612763525530505L, 2305085677005439582L}).toString());
        sb.append(str);
        zzd(zzhbeVar, sb, 0);
        return sb.toString();
    }

    public static void zzb(StringBuilder sb, int i, String str, Object obj) {
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
        zzc(i, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i2 = 1; i2 < str.length(); i2++) {
                char charAt = str.charAt(i2);
                if (Character.isUpperCase(charAt)) {
                    sb2.append(new ObfuscatedString(new long[]{3407353676902839625L, -4565156018726690330L}).toString());
                }
                sb2.append(Character.toLowerCase(charAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(new ObfuscatedString(new long[]{3520164157020728859L, 5557008115337319684L}).toString());
            sb.append(zzhcn.zza(zzgyl.zzw((String) obj)));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzgyl) {
            sb.append(new ObfuscatedString(new long[]{3235624144183484065L, 5764431851281665686L}).toString());
            sb.append(zzhcn.zza((zzgyl) obj));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzgzu) {
            sb.append(new ObfuscatedString(new long[]{-3788050982106986244L, -2399202497759931311L}).toString());
            zzd((zzgzu) obj, sb, i + 2);
            sb.append(new ObfuscatedString(new long[]{-2731744331355854495L, 4196078589809639700L}).toString());
            zzc(i, sb);
            sb.append(new ObfuscatedString(new long[]{-6744137115073368912L, -3931032837261774918L}).toString());
            return;
        }
        if (obj instanceof Map.Entry) {
            int i3 = i + 2;
            sb.append(new ObfuscatedString(new long[]{5882652793101052495L, -7900741115486164341L}).toString());
            Map.Entry entry = (Map.Entry) obj;
            zzb(sb, i3, new ObfuscatedString(new long[]{2795000856675346765L, -6045582807884316191L}).toString(), entry.getKey());
            zzb(sb, i3, new ObfuscatedString(new long[]{-9115490518005350868L, 4712636452734485773L}).toString(), entry.getValue());
            sb.append(new ObfuscatedString(new long[]{4662706112437975934L, 8860963766295911519L}).toString());
            zzc(i, sb);
            sb.append(new ObfuscatedString(new long[]{7441020398095683793L, -4718038477224060115L}).toString());
            return;
        }
        sb.append(new ObfuscatedString(new long[]{-8272359158596998083L, -4530615890730684413L}).toString());
        sb.append(obj);
    }

    private static void zzc(int i, StringBuilder sb) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(zza, 0, i2);
            i -= i2;
        }
    }

    private static void zzd(zzhbe zzhbeVar, StringBuilder sb, int i) {
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        for (Method method3 : zzhbeVar.getClass().getDeclaredMethods()) {
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith(new ObfuscatedString(new long[]{-4099492244914204663L, 2988932455530321582L}).toString())) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith(new ObfuscatedString(new long[]{-6038464892073308752L, 6961138267065902353L}).toString())) {
                        hashMap.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith(new ObfuscatedString(new long[]{-4960510043557915872L, -7217917011635767613L}).toString())) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String substring = ((String) entry.getKey()).substring(3);
            if (substring.endsWith(new ObfuscatedString(new long[]{8608492968653231890L, 6178263673855371989L}).toString()) && !substring.endsWith(new ObfuscatedString(new long[]{-3910033585852248613L, -8864799151007318502L, -3784337575770215356L}).toString()) && !substring.equals(new ObfuscatedString(new long[]{-8916109338037042487L, 8211425476746201457L}).toString()) && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                zzb(sb, i, substring.substring(0, substring.length() - 4), zzgzu.zzaQ(method2, zzhbeVar, new Object[0]));
            } else if (substring.endsWith(new ObfuscatedString(new long[]{-6744446717890333200L, 8963188859473473315L}).toString()) && !substring.equals(new ObfuscatedString(new long[]{-6860225252405227302L, -8403555041563660362L}).toString()) && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                zzb(sb, i, substring.substring(0, substring.length() - 3), zzgzu.zzaQ(method, zzhbeVar, new Object[0]));
            } else if (hashSet.contains(new ObfuscatedString(new long[]{-1064611508071805040L, -2754317106813447566L}).toString().concat(substring)) && (!substring.endsWith(new ObfuscatedString(new long[]{4355265163337557967L, -8701092208447145609L}).toString()) || !treeMap.containsKey(new ObfuscatedString(new long[]{420803104209653581L, -6927658440278418103L}).toString().concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get(new ObfuscatedString(new long[]{-4237378709985746864L, -4416180472216022528L}).toString().concat(substring));
                if (method4 != null) {
                    Object zzaQ = zzgzu.zzaQ(method4, zzhbeVar, new Object[0]);
                    if (method5 == null) {
                        if (zzaQ instanceof Boolean) {
                            if (((Boolean) zzaQ).booleanValue()) {
                            }
                        } else if (zzaQ instanceof Integer) {
                            if (((Integer) zzaQ).intValue() != 0) {
                            }
                        } else if (zzaQ instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) zzaQ).floatValue()) != 0) {
                            }
                        } else if (zzaQ instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) zzaQ).doubleValue()) != 0) {
                            }
                        } else {
                            if (zzaQ instanceof String) {
                                equals = zzaQ.equals(new ObfuscatedString(new long[]{-1945148654189732609L}).toString());
                            } else if (zzaQ instanceof zzgyl) {
                                equals = zzaQ.equals(zzgyl.zzb);
                            } else if (zzaQ instanceof zzhbe) {
                                if (zzaQ != ((zzhbe) zzaQ).zzbk()) {
                                }
                            } else if ((zzaQ instanceof Enum) && ((Enum) zzaQ).ordinal() == 0) {
                            }
                            if (!equals) {
                            }
                        }
                        zzb(sb, i, substring, zzaQ);
                    } else if (((Boolean) zzgzu.zzaQ(method5, zzhbeVar, new Object[0])).booleanValue()) {
                        zzb(sb, i, substring, zzaQ);
                    }
                }
            }
        }
        if (!(zzhbeVar instanceof zzgzr)) {
            zzhcq zzhcqVar = ((zzgzu) zzhbeVar).zzc;
            if (zzhcqVar != null) {
                zzhcqVar.zzi(sb, i);
                return;
            }
            return;
        }
        throw null;
    }
}
