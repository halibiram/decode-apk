package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
final class zzaln {
    private static final Pattern zzd = Pattern.compile(new ObfuscatedString(new long[]{226567304546869963L, 7138559186887529617L}).toString());
    private static final zzgaf zze = zzgaf.zzp(new ObfuscatedString(new long[]{-1096075340004971430L, -4658239740883974941L}).toString(), new ObfuscatedString(new long[]{8583347140508723359L, -7268505509019514607L}).toString());
    private static final zzgaf zzf = zzgaf.zzq(new ObfuscatedString(new long[]{8469882331475104675L, 431972166661485760L}).toString(), new ObfuscatedString(new long[]{3818291029229426541L, 7162561260269629245L}).toString(), new ObfuscatedString(new long[]{2284961259341681959L, 8178214761414032678L}).toString());
    private static final zzgaf zzg = zzgaf.zzp(new ObfuscatedString(new long[]{-3739257702264061257L, -5405162417670373088L}).toString(), new ObfuscatedString(new long[]{-434620252343869290L, -5467082014521643618L}).toString());
    private static final zzgaf zzh = zzgaf.zzq(new ObfuscatedString(new long[]{4550025637009582702L, 2661374044715305866L}).toString(), new ObfuscatedString(new long[]{-2505402299339442458L, -1329607572882843112L}).toString(), new ObfuscatedString(new long[]{-3662312222790869122L, -1586126120148805841L}).toString());
    public final int zza;
    public final int zzb;
    public final int zzc;

    private zzaln(int i, int i2, int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
    }

    @Nullable
    public static zzaln zza(@Nullable String str) {
        char c;
        int i;
        int i2;
        int i3 = 2;
        if (str != null) {
            String zza = zzfwk.zza(str.trim());
            if (!zza.isEmpty()) {
                zzgaf zzm = zzgaf.zzm(TextUtils.split(zza, zzd));
                String str2 = (String) zzgag.zza(zzgca.zzb(zzh, zzm), new ObfuscatedString(new long[]{1395266503526946666L, 876793495861324332L}).toString());
                int hashCode = str2.hashCode();
                char c2 = 65535;
                int i4 = 0;
                if (hashCode != -1106037339) {
                    if (hashCode == 92734940 && str2.equals(new ObfuscatedString(new long[]{-7267656960851110462L, 5839746288881482028L}).toString())) {
                        c = 0;
                    }
                    c = 65535;
                } else {
                    if (str2.equals(new ObfuscatedString(new long[]{8350443325727558757L, -5789954561639042533L}).toString())) {
                        c = 1;
                    }
                    c = 65535;
                }
                if (c != 0) {
                    if (c != 1) {
                        i = 1;
                    } else {
                        i = -2;
                    }
                } else {
                    i = 2;
                }
                zzgbz zzb = zzgca.zzb(zze, zzm);
                if (!zzb.isEmpty()) {
                    String str3 = (String) zzb.iterator().next();
                    if (str3.hashCode() == 3387192 && str3.equals(new ObfuscatedString(new long[]{-6979105906086744722L, -8015718850628159207L}).toString())) {
                        i3 = 0;
                    }
                    i3 = -1;
                } else {
                    zzgbz zzb2 = zzgca.zzb(zzg, zzm);
                    zzgbz zzb3 = zzgca.zzb(zzf, zzm);
                    if (!zzb2.isEmpty() || !zzb3.isEmpty()) {
                        String str4 = (String) zzgag.zza(zzb2, new ObfuscatedString(new long[]{8155733707693393567L, -4309927108411527449L}).toString());
                        if (str4.hashCode() == 3417674 && str4.equals(new ObfuscatedString(new long[]{7255737640770882771L, 6488903038635159288L}).toString())) {
                            i2 = 2;
                        } else {
                            i2 = 1;
                        }
                        String str5 = (String) zzgag.zza(zzb3, new ObfuscatedString(new long[]{-5829919632526902719L, -4381965081746889208L}).toString());
                        int hashCode2 = str5.hashCode();
                        if (hashCode2 != -905816648) {
                            if (hashCode2 == 99657 && str5.equals(new ObfuscatedString(new long[]{1472481131867456712L, -8660487186931650670L}).toString())) {
                                c2 = 0;
                            }
                        } else if (str5.equals(new ObfuscatedString(new long[]{148392535959638992L, -8042562368841840113L}).toString())) {
                            c2 = 1;
                        }
                        if (c2 != 0) {
                            if (c2 != 1) {
                                i4 = i2;
                                i3 = 1;
                            } else {
                                i3 = 3;
                            }
                        }
                        i4 = i2;
                    }
                    i3 = -1;
                }
                return new zzaln(i3, i4, i);
            }
            return null;
        }
        return null;
    }
}
