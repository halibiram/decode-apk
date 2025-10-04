package com.google.android.gms.internal.ads;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzcz {
    public final int zzb = 1;
    public final String zzc;
    public final int zzd;
    private final zzam[] zzg;
    private int zzh;
    private static final String zze = Integer.toString(0, 36);
    private static final String zzf = Integer.toString(1, 36);

    @Deprecated
    public static final zzn zza = new zzn() { // from class: com.google.android.gms.internal.ads.zzcy
    };

    public zzcz(String str, zzam... zzamVarArr) {
        this.zzc = str;
        this.zzg = zzamVarArr;
        int zzb = zzcb.zzb(zzamVarArr[0].zzm);
        this.zzd = zzb == -1 ? zzcb.zzb(zzamVarArr[0].zzl) : zzb;
        zzd(zzamVarArr[0].zzd);
        int i = zzamVarArr[0].zzf;
    }

    private static String zzd(@Nullable String str) {
        if (str != null && !str.equals(new ObfuscatedString(new long[]{6479335156515103468L, -5080489721961628480L}).toString())) {
            return str;
        }
        return new ObfuscatedString(new long[]{-799787106832426147L}).toString();
    }

    private static void zze(String str, @Nullable String str2, @Nullable String str3, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-4967217120816954509L, 1298265740170015577L, -3278213972876364624L}).toString());
        sb.append(str);
        sb.append(new ObfuscatedString(new long[]{5352760718281064805L, 2649079310189522838L, -4024945357805579903L, 3883901398840013182L, 3051480027010017288L}).toString());
        sb.append(str2);
        sb.append(new ObfuscatedString(new long[]{5088248481681937194L, 158785810669992039L, 49304471793320899L, 4176327600834438671L}).toString());
        sb.append(str3);
        sb.append(new ObfuscatedString(new long[]{-4095468325379246557L, -5371885926713258307L, -1667924331625570091L}).toString());
        sb.append(i);
        zzff.zzd(new ObfuscatedString(new long[]{-1974510878894860559L, -4506320332823909718L, 1123316928171537957L}).toString(), new ObfuscatedString(new long[]{-3037879180506116568L}).toString(), new IllegalStateException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4807007850811630447L, -8006186476052906357L}), sb)));
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzcz.class == obj.getClass()) {
            zzcz zzczVar = (zzcz) obj;
            if (this.zzc.equals(zzczVar.zzc) && Arrays.equals(this.zzg, zzczVar.zzg)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzh;
        if (i == 0) {
            int hashCode = this.zzc.hashCode() + 527;
            int hashCode2 = Arrays.hashCode(this.zzg) + (hashCode * 31);
            this.zzh = hashCode2;
            return hashCode2;
        }
        return i;
    }

    public final int zza(zzam zzamVar) {
        for (int i = 0; i <= 0; i++) {
            if (zzamVar == this.zzg[i]) {
                return i;
            }
        }
        return -1;
    }

    public final zzam zzb(int i) {
        return this.zzg[i];
    }

    @CheckResult
    public final zzcz zzc(String str) {
        return new zzcz(str, this.zzg);
    }
}
