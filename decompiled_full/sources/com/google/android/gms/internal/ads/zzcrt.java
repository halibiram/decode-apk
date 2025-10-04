package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcrt implements zzcqv {
    private final zzdzd zza;

    public zzcrt(zzdzd zzdzdVar) {
        this.zza = zzdzdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcqv
    public final void zza(Map map) {
        String str = (String) map.get(new ObfuscatedString(new long[]{496615310058010718L, 460790256776670158L, -5153269925955986494L, 4548434560623278645L}).toString());
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zza.zzn(str.equals(new ObfuscatedString(new long[]{-2810838941722004577L, 8405814211908900876L}).toString()));
    }
}
