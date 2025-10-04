package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzewy implements zzexp {

    @Nullable
    private final String zza;

    public zzewy(@Nullable String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (TextUtils.isEmpty(this.zza)) {
            return;
        }
        bundle.putString(new ObfuscatedString(new long[]{1536525732149793727L, 7444056718461850280L, -8912392434113495747L}).toString(), this.zza);
    }
}
