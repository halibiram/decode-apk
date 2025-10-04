package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcrn implements zzcqv {
    private final zzfgl zza;

    public zzcrn(zzfgl zzfglVar) {
        this.zza = zzfglVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcqv
    public final void zza(Map map) {
        String str = (String) map.get(new ObfuscatedString(new long[]{-7124857034908834741L, -5108699469848400302L, -4281897724127061381L, 8792541095078582385L}).toString());
        if (!TextUtils.isEmpty(str)) {
            try {
                this.zza.zzb(Boolean.parseBoolean(str));
            } catch (Exception e) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{3970341336044616301L, 1223498254592050512L, 4852360561124454378L, -8979175441106006747L, 5543549603215572990L}).toString(), e);
            }
        }
    }
}
