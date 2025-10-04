package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzemg {
    final String zza;
    final String zzb;
    int zzc;
    long zzd;

    @Nullable
    final Integer zze;

    public zzemg(String str, String str2, int i, long j, @Nullable Integer num) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = j;
        this.zze = num;
    }

    public final String toString() {
        int i = this.zzc;
        long j = this.zzd;
        StringBuilder sb = new StringBuilder();
        sb.append(this.zza);
        sb.append(new ObfuscatedString(new long[]{-2825634495941803840L, 6221036821491587316L}).toString());
        sb.append(i);
        String m2930x9e171bf9 = AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{5478358651918612482L, 5999950646126449191L}), sb, j);
        if (!TextUtils.isEmpty(this.zzb)) {
            String str = this.zzb;
            m2930x9e171bf9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-45706314955712900L, 5019281234022005348L}), AbstractC0749x8313616e.m3341xc20437a5(m2930x9e171bf9), str);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbC)).booleanValue() && this.zze != null && !TextUtils.isEmpty(this.zzb)) {
            Integer num = this.zze;
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(m2930x9e171bf9);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{-4513508552262963046L, -6876320814088730066L}).toString());
            m3341xc20437a5.append(num);
            return m3341xc20437a5.toString();
        }
        return m2930x9e171bf9;
    }
}
