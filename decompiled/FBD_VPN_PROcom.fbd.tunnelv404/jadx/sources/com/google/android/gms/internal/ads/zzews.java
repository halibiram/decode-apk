package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzews implements zzexp {
    private final String zza;
    private final Bundle zzb;

    public zzews(String str, Bundle bundle) {
        this.zza = str;
        this.zzb = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString(new ObfuscatedString(new long[]{229606893711651551L, 6271149338822203744L}).toString(), this.zza);
        if (!this.zzb.isEmpty()) {
            bundle.putBundle(new ObfuscatedString(new long[]{6320110641225521184L, 5312213308497911106L, 5971810895185289617L, 8648949111031568352L, 4365148853343043054L}).toString(), this.zzb);
        }
    }
}
