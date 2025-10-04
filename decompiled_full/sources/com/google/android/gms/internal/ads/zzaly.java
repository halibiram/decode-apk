package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
final class zzaly {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{-781962581839706261L, -1265771135093153560L, 6386357365781301086L, -290362203600796735L}).toString());
    private static final Pattern zzb = Pattern.compile(new ObfuscatedString(new long[]{9208011240036144492L, -8530553434148785727L, -3997912908830430320L, 8165477606814507258L, 3949781973354041336L}).toString());
    private final zzfp zzc = new zzfp();
    private final StringBuilder zzd = new StringBuilder();

    @Nullable
    public static String zza(zzfp zzfpVar, StringBuilder sb) {
        zzc(zzfpVar);
        if (zzfpVar.zzb() == 0) {
            return null;
        }
        String zzd = zzd(zzfpVar, sb);
        if (!new ObfuscatedString(new long[]{-718437283671963537L}).toString().equals(zzd)) {
            return zzd;
        }
        char zzm = (char) zzfpVar.zzm();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(zzm);
        return sb2.toString();
    }

    public static void zzc(zzfp zzfpVar) {
        while (true) {
            for (boolean z = true; zzfpVar.zzb() > 0 && z; z = false) {
                char c = (char) zzfpVar.zzM()[zzfpVar.zzd()];
                if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                    int zzd = zzfpVar.zzd();
                    int zze = zzfpVar.zze();
                    byte[] zzM = zzfpVar.zzM();
                    if (zzd + 2 <= zze) {
                        int i = zzd + 1;
                        if (zzM[zzd] == 47) {
                            int i2 = zzd + 2;
                            if (zzM[i] == 42) {
                                while (true) {
                                    int i3 = i2 + 1;
                                    if (i3 >= zze) {
                                        break;
                                    }
                                    if (((char) zzM[i2]) == '*' && ((char) zzM[i3]) == '/') {
                                        zze = i2 + 2;
                                        i2 = zze;
                                    } else {
                                        i2 = i3;
                                    }
                                }
                                zzfpVar.zzL(zze - zzfpVar.zzd());
                            }
                        } else {
                            continue;
                        }
                    }
                } else {
                    zzfpVar.zzL(1);
                }
            }
            return;
        }
    }

    private static String zzd(zzfp zzfpVar, StringBuilder sb) {
        sb.setLength(0);
        int zzd = zzfpVar.zzd();
        int zze = zzfpVar.zze();
        loop0: while (true) {
            for (boolean z = false; zzd < zze && !z; z = true) {
                char c = (char) zzfpVar.zzM()[zzd];
                if ((c >= 'A' && c <= 'Z') || ((c >= 'a' && c <= 'z') || ((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                    sb.append(c);
                    zzd++;
                }
            }
        }
        zzfpVar.zzL(zzd - zzfpVar.zzd());
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x04cf  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x04e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List zzb(zzfp zzfpVar) {
        String str;
        String str2;
        String sb;
        char c;
        boolean z;
        int i = -1;
        int i2 = 0;
        this.zzd.setLength(0);
        int zzd = zzfpVar.zzd();
        do {
        } while (!TextUtils.isEmpty(zzfpVar.zzy(zzfwq.zzc)));
        this.zzc.zzI(zzfpVar.zzM(), zzfpVar.zzd());
        this.zzc.zzK(zzd);
        ArrayList arrayList = new ArrayList();
        while (true) {
            zzfp zzfpVar2 = this.zzc;
            StringBuilder sb2 = this.zzd;
            zzc(zzfpVar2);
            if (zzfpVar2.zzb() >= 5 && new ObfuscatedString(new long[]{2363475777600942732L, 1187527791010890325L}).toString().equals(zzfpVar2.zzA(5, zzfwq.zzc))) {
                int zzd2 = zzfpVar2.zzd();
                String zza2 = zza(zzfpVar2, sb2);
                if (zza2 != null) {
                    if (new ObfuscatedString(new long[]{465440757115276327L, -7263307145143102123L}).toString().equals(zza2)) {
                        zzfpVar2.zzK(zzd2);
                        long[] jArr = new long[1];
                        jArr[i2] = -888562237734176965L;
                        str2 = new ObfuscatedString(jArr).toString();
                    } else {
                        if (new ObfuscatedString(new long[]{891012923188995571L, -4207288728559173286L}).toString().equals(zza2)) {
                            int zzd3 = zzfpVar2.zzd();
                            int zze = zzfpVar2.zze();
                            boolean z2 = false;
                            while (zzd3 < zze && !z2) {
                                int i3 = zzd3 + 1;
                                if (((char) zzfpVar2.zzM()[zzd3]) == ')') {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                zzd3 = i3;
                            }
                            str = zzfpVar2.zzA((zzd3 + i) - zzfpVar2.zzd(), zzfwq.zzc).trim();
                        } else {
                            str = null;
                        }
                        if (new ObfuscatedString(new long[]{-8151830456449535136L, -1981829294377832481L}).toString().equals(zza(zzfpVar2, sb2))) {
                            str2 = str;
                        }
                    }
                    if (str2 == null || !new ObfuscatedString(new long[]{8090573674485274604L, 8336353225850374984L}).toString().equals(zza(this.zzc, this.zzd))) {
                        break;
                    }
                    zzalz zzalzVar = new zzalz();
                    long[] jArr2 = new long[1];
                    jArr2[i2] = 1492678812696470082L;
                    if (!new ObfuscatedString(jArr2).toString().equals(str2)) {
                        int indexOf = str2.indexOf(91);
                        if (indexOf != i) {
                            Matcher matcher = zza.matcher(str2.substring(indexOf));
                            if (matcher.matches()) {
                                String group = matcher.group(1);
                                group.getClass();
                                zzalzVar.zzv(group);
                            }
                            str2 = str2.substring(i2, indexOf);
                        }
                        int i4 = zzfy.zza;
                        String[] split = str2.split(new ObfuscatedString(new long[]{3293906571127768367L, 5045497365211910302L}).toString(), i);
                        String str3 = split[i2];
                        int indexOf2 = str3.indexOf(35);
                        if (indexOf2 != i) {
                            zzalzVar.zzu(str3.substring(i2, indexOf2));
                            zzalzVar.zzt(str3.substring(indexOf2 + 1));
                        } else {
                            zzalzVar.zzu(str3);
                        }
                        int length = split.length;
                        if (length > 1) {
                            zzalzVar.zzs((String[]) Arrays.copyOfRange(split, 1, length));
                        }
                    }
                    boolean z3 = false;
                    String str4 = null;
                    while (!z3) {
                        zzfp zzfpVar3 = this.zzc;
                        StringBuilder sb3 = this.zzd;
                        int zzd4 = zzfpVar3.zzd();
                        str4 = zza(zzfpVar3, sb3);
                        if (str4 == null || new ObfuscatedString(new long[]{-261453080440168425L, -4767217704916942368L}).toString().equals(str4)) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (!z3) {
                            this.zzc.zzK(zzd4);
                            zzfp zzfpVar4 = this.zzc;
                            StringBuilder sb4 = this.zzd;
                            zzc(zzfpVar4);
                            long[] jArr3 = new long[1];
                            jArr3[i2] = -4640391279825741864L;
                            String obfuscatedString = new ObfuscatedString(jArr3).toString();
                            String zzd5 = zzd(zzfpVar4, sb4);
                            if (!obfuscatedString.equals(zzd5) && new ObfuscatedString(new long[]{6449252457376063076L, -7140747152979862836L}).toString().equals(zza(zzfpVar4, sb4))) {
                                zzc(zzfpVar4);
                                StringBuilder sb5 = new StringBuilder();
                                boolean z4 = false;
                                while (true) {
                                    if (!z4) {
                                        int zzd6 = zzfpVar4.zzd();
                                        String zza3 = zza(zzfpVar4, sb4);
                                        if (zza3 == null) {
                                            sb = null;
                                            break;
                                        }
                                        if (!new ObfuscatedString(new long[]{-7340649832467564411L, -1594506382597108192L}).toString().equals(zza3) && !new ObfuscatedString(new long[]{-5542606262750552813L, 2257719071556650929L}).toString().equals(zza3)) {
                                            sb5.append(zza3);
                                        } else {
                                            zzfpVar4.zzK(zzd6);
                                            z4 = true;
                                        }
                                    } else {
                                        sb = sb5.toString();
                                        break;
                                    }
                                }
                                if (sb != null) {
                                    i2 = 0;
                                    if (!new ObfuscatedString(new long[]{141346761045350487L}).toString().equals(sb)) {
                                        int zzd7 = zzfpVar4.zzd();
                                        String zza4 = zza(zzfpVar4, sb4);
                                        if (!new ObfuscatedString(new long[]{-5324730245028908279L, -8878930896085814298L}).toString().equals(zza4)) {
                                            if (new ObfuscatedString(new long[]{3161524213043546968L, -5280984905773560924L}).toString().equals(zza4)) {
                                                zzfpVar4.zzK(zzd7);
                                            }
                                        }
                                        if (new ObfuscatedString(new long[]{-8206559250737158847L, 8607500736820334497L}).toString().equals(zzd5)) {
                                            zzalzVar.zzk(zzen.zza(sb));
                                        } else if (new ObfuscatedString(new long[]{-1977812835309898875L, -1501527606033072077L, 1312402061803227139L}).toString().equals(zzd5)) {
                                            zzalzVar.zzh(zzen.zza(sb));
                                        } else if (new ObfuscatedString(new long[]{8926836580821890421L, -7651047375263935549L, -807305361661094167L}).toString().equals(zzd5)) {
                                            if (new ObfuscatedString(new long[]{-5016158602110907689L, -7330557075406627764L}).toString().equals(sb)) {
                                                zzalzVar.zzp(1);
                                            } else if (new ObfuscatedString(new long[]{-1348266827034570683L, -1147818928780677866L}).toString().equals(sb)) {
                                                zzalzVar.zzp(2);
                                            }
                                        } else if (new ObfuscatedString(new long[]{-8994464427942388168L, -1325301984595904977L, -1693975460753443111L, -4857394845522380737L}).toString().equals(zzd5)) {
                                            if (new ObfuscatedString(new long[]{7066010825893245079L, -4591767583886425342L}).toString().equals(sb) || sb.startsWith(new ObfuscatedString(new long[]{-7451621220302382649L, 9082488313878614344L}).toString())) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            zzalzVar.zzj(z);
                                        } else if (new ObfuscatedString(new long[]{-5919066176875124154L, -2520745940892376473L, 6102198952080159069L}).toString().equals(zzd5)) {
                                            if (new ObfuscatedString(new long[]{-2619360932453727839L, 6433105425641190510L, -60168350914847534L}).toString().equals(sb)) {
                                                zzalzVar.zzq(true);
                                            }
                                        } else if (new ObfuscatedString(new long[]{4199781155810887770L, 1044339998063556313L, -3325610600532015973L}).toString().equals(zzd5)) {
                                            zzalzVar.zzl(sb);
                                        } else if (new ObfuscatedString(new long[]{-1179344079512649954L, -5143286952752234361L, 3066080454546458883L}).toString().equals(zzd5)) {
                                            if (new ObfuscatedString(new long[]{2843457864022689548L, -8740227774088598349L}).toString().equals(sb)) {
                                                zzalzVar.zzi(true);
                                            }
                                        } else if (new ObfuscatedString(new long[]{-1495347926981228555L, 5023203564585076263L, -6784855855197513112L}).toString().equals(zzd5)) {
                                            if (new ObfuscatedString(new long[]{-3602534431150839640L, 6749645023953906663L}).toString().equals(sb)) {
                                                zzalzVar.zzo(true);
                                            }
                                        } else if (new ObfuscatedString(new long[]{-5664629006245080794L, -3092442220606859505L, -1944272812162079651L}).toString().equals(zzd5)) {
                                            Matcher matcher2 = zzb.matcher(zzfwk.zza(sb));
                                            if (!matcher2.matches()) {
                                                StringBuilder sb6 = new StringBuilder();
                                                sb6.append(new ObfuscatedString(new long[]{-2244669314183185709L, 2419947387845202150L, -8191422289707014005L, -4835896071723983023L}).toString());
                                                sb6.append(sb);
                                                zzff.zzf(new ObfuscatedString(new long[]{5251369910563244731L, -8055985488657646088L, -5675815672562700692L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1697088881076437809L, -8144871121131672957L}), sb6));
                                            } else {
                                                String group2 = matcher2.group(2);
                                                group2.getClass();
                                                int hashCode = group2.hashCode();
                                                if (hashCode != 37) {
                                                    if (hashCode != 3240) {
                                                        if (hashCode == 3592 && group2.equals(new ObfuscatedString(new long[]{8349256675431674862L, 3414322809956260618L}).toString())) {
                                                            c = 0;
                                                            if (c == 0) {
                                                                if (c != 1) {
                                                                    if (c == 2) {
                                                                        zzalzVar.zzn(3);
                                                                    } else {
                                                                        throw new IllegalStateException();
                                                                    }
                                                                } else {
                                                                    zzalzVar.zzn(2);
                                                                }
                                                            } else {
                                                                zzalzVar.zzn(1);
                                                            }
                                                            String group3 = matcher2.group(1);
                                                            group3.getClass();
                                                            zzalzVar.zzm(Float.parseFloat(group3));
                                                        }
                                                        c = 65535;
                                                        if (c == 0) {
                                                        }
                                                        String group32 = matcher2.group(1);
                                                        group32.getClass();
                                                        zzalzVar.zzm(Float.parseFloat(group32));
                                                    } else {
                                                        if (group2.equals(new ObfuscatedString(new long[]{-7776485348019745108L, 4845721287192317351L}).toString())) {
                                                            c = 1;
                                                            if (c == 0) {
                                                            }
                                                            String group322 = matcher2.group(1);
                                                            group322.getClass();
                                                            zzalzVar.zzm(Float.parseFloat(group322));
                                                        }
                                                        c = 65535;
                                                        if (c == 0) {
                                                        }
                                                        String group3222 = matcher2.group(1);
                                                        group3222.getClass();
                                                        zzalzVar.zzm(Float.parseFloat(group3222));
                                                    }
                                                } else {
                                                    if (group2.equals(new ObfuscatedString(new long[]{8387565350031323414L, 367603856547638302L}).toString())) {
                                                        c = 2;
                                                        if (c == 0) {
                                                        }
                                                        String group32222 = matcher2.group(1);
                                                        group32222.getClass();
                                                        zzalzVar.zzm(Float.parseFloat(group32222));
                                                    }
                                                    c = 65535;
                                                    if (c == 0) {
                                                    }
                                                    String group322222 = matcher2.group(1);
                                                    group322222.getClass();
                                                    zzalzVar.zzm(Float.parseFloat(group322222));
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    i2 = 0;
                                }
                            }
                        }
                    }
                    if (new ObfuscatedString(new long[]{2024231879955121802L, 1906640822214911107L}).toString().equals(str4)) {
                        arrayList.add(zzalzVar);
                    }
                    i = -1;
                }
            }
            str2 = null;
            if (str2 == null) {
                break;
            }
            break;
        }
        return arrayList;
    }
}
