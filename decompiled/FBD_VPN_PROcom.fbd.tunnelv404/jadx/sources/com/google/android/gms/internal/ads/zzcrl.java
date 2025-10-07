package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcrl implements zzcqv {
    private final Context zza;
    private final com.google.android.gms.ads.internal.util.zzg zzb = com.google.android.gms.ads.internal.zzt.zzo().zzi();

    public zzcrl(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcqv
    public final void zza(Map map) {
        String str;
        if (!map.isEmpty() && (str = (String) map.get(new ObfuscatedString(new long[]{5192601533392988008L, -2508389773985076744L, 8715594885799019145L}).toString())) != null) {
            com.google.android.gms.ads.internal.util.zzg zzgVar = this.zzb;
            boolean parseBoolean = Boolean.parseBoolean(str);
            zzgVar.zzH(parseBoolean);
            if (parseBoolean) {
                com.google.android.gms.ads.internal.util.zzad.zzc(this.zza);
            }
        }
    }
}
