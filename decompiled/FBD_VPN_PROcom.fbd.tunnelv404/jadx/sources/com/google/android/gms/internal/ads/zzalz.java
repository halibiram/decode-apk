package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzalz {

    @ColorInt
    private int zzf;
    private int zzh;
    private float zzn;
    private String zza = new ObfuscatedString(new long[]{-4548873998435361975L}).toString();
    private String zzb = new ObfuscatedString(new long[]{5146485523640240439L}).toString();
    private Set zzc = Collections.emptySet();
    private String zzd = new ObfuscatedString(new long[]{-3409917274947505320L}).toString();

    @Nullable
    private String zze = null;
    private boolean zzg = false;
    private boolean zzi = false;
    private int zzj = -1;
    private int zzk = -1;
    private int zzl = -1;
    private int zzm = -1;
    private int zzo = -1;
    private boolean zzp = false;

    private static int zzA(int i, String str, @Nullable String str2, int i2) {
        if (!str.isEmpty() && i != -1) {
            if (!str.equals(str2)) {
                return -1;
            }
            return i + i2;
        }
        return i;
    }

    public final float zza() {
        return this.zzn;
    }

    public final int zzb() {
        if (this.zzi) {
            return this.zzh;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{2481270560049683126L, -8037037124299263890L, 5329102765132783053L, -622065168836202458L, 9029094109532671526L}).toString());
    }

    public final int zzc() {
        if (this.zzg) {
            return this.zzf;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{1361671416255849525L, -8077376620680512823L, 4440795885228624929L, -1924478826102448190L}).toString());
    }

    public final int zzd() {
        return this.zzm;
    }

    public final int zze() {
        return this.zzo;
    }

    public final int zzf(@Nullable String str, @Nullable String str2, Set set, @Nullable String str3) {
        if (this.zza.isEmpty() && this.zzb.isEmpty() && this.zzc.isEmpty() && this.zzd.isEmpty()) {
            if (!TextUtils.isEmpty(str2)) {
                return 0;
            }
            return 1;
        }
        int zzA = zzA(zzA(zzA(0, this.zza, str, 1073741824), this.zzb, str2, 2), this.zzd, str3, 4);
        if (zzA == -1 || !set.containsAll(this.zzc)) {
            return 0;
        }
        return (this.zzc.size() * 4) + zzA;
    }

    public final int zzg() {
        int i = this.zzk;
        if (i == -1 && this.zzl == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.zzl == 1 ? 2 : 0);
    }

    public final zzalz zzh(int i) {
        this.zzh = i;
        this.zzi = true;
        return this;
    }

    public final zzalz zzi(boolean z) {
        this.zzk = 1;
        return this;
    }

    public final zzalz zzj(boolean z) {
        this.zzp = z;
        return this;
    }

    public final zzalz zzk(int i) {
        this.zzf = i;
        this.zzg = true;
        return this;
    }

    public final zzalz zzl(@Nullable String str) {
        this.zze = zzfwk.zza(str);
        return this;
    }

    public final zzalz zzm(float f) {
        this.zzn = f;
        return this;
    }

    public final zzalz zzn(int i) {
        this.zzm = i;
        return this;
    }

    public final zzalz zzo(boolean z) {
        this.zzl = 1;
        return this;
    }

    public final zzalz zzp(int i) {
        this.zzo = i;
        return this;
    }

    public final zzalz zzq(boolean z) {
        this.zzj = 1;
        return this;
    }

    @Nullable
    public final String zzr() {
        return this.zze;
    }

    public final void zzs(String[] strArr) {
        this.zzc = new HashSet(Arrays.asList(strArr));
    }

    public final void zzt(String str) {
        this.zza = str;
    }

    public final void zzu(String str) {
        this.zzb = str;
    }

    public final void zzv(String str) {
        this.zzd = str;
    }

    public final boolean zzw() {
        return this.zzp;
    }

    public final boolean zzx() {
        return this.zzi;
    }

    public final boolean zzy() {
        return this.zzg;
    }

    public final boolean zzz() {
        return this.zzj == 1;
    }
}
