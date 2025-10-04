package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgox implements zzgpc {
    private final String zza;
    private final zzgxq zzb;
    private final zzgyl zzc;
    private final zzgus zzd;
    private final zzgvz zze;

    @Nullable
    private final Integer zzf;

    private zzgox(String str, zzgyl zzgylVar, zzgus zzgusVar, zzgvz zzgvzVar, @Nullable Integer num) {
        this.zza = str;
        this.zzb = zzgpm.zza(str);
        this.zzc = zzgylVar;
        this.zzd = zzgusVar;
        this.zze = zzgvzVar;
        this.zzf = num;
    }

    public static zzgox zza(String str, zzgyl zzgylVar, zzgus zzgusVar, zzgvz zzgvzVar, @Nullable Integer num) {
        if (zzgvzVar == zzgvz.zzd) {
            if (num != null) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-1873484976468628172L, 4391670523402162977L, -7074008973711752902L, 2943549157638226089L, -5341348604639159604L, -6447583444896449702L, 9073365667939642113L, 5749292973734139646L, 2431420206421718548L, -2882751964554729804L}).toString());
            }
        } else if (num == null) {
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-2893170896345907648L, -7618489930687326361L, 1225511615082825240L, 5084277981587267601L, 8717621241462011736L, 5630216149836345137L, -4230152197620094797L, 1187542504903402022L, -4442132278796830228L, -4182177910321702351L, 3643245137849515223L}).toString());
        }
        return new zzgox(str, zzgylVar, zzgusVar, zzgvzVar, num);
    }

    public final zzgus zzb() {
        return this.zzd;
    }

    public final zzgvz zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgpc
    public final zzgxq zzd() {
        return this.zzb;
    }

    public final zzgyl zze() {
        return this.zzc;
    }

    @Nullable
    public final Integer zzf() {
        return this.zzf;
    }

    public final String zzg() {
        return this.zza;
    }
}
