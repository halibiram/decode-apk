package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzewj implements zzexp {
    private final String zza;
    private final String zzb;

    public zzewj(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgW)).booleanValue()) {
            bundle.putString(new ObfuscatedString(new long[]{-3775174219127779080L, -6560873163303126321L, 957353075311756330L}).toString(), this.zzb);
        } else {
            bundle.putString(new ObfuscatedString(new long[]{2422232594847491654L, -6381441140101756106L, 8830684130558142428L}).toString(), this.zza);
        }
    }
}
