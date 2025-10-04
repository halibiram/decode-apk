package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzese implements zzexp {
    private final Bundle zza;

    @VisibleForTesting
    public zzese(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (!this.zza.isEmpty()) {
            bundle.putBundle(new ObfuscatedString(new long[]{4835898341071588103L, 4554607871476990427L, 4346034485125447535L, 5508354222579085860L}).toString(), this.zza);
        }
    }
}
