package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzesv implements zzexp {

    @Nullable
    @VisibleForTesting
    final String zza;

    @VisibleForTesting
    final int zzb;

    public zzesv(@Nullable String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (!TextUtils.isEmpty(this.zza) && this.zzb != -1) {
            Bundle zza = zzfhv.zza(bundle, new ObfuscatedString(new long[]{-1760763873572515709L, 5696009257331822133L}).toString());
            bundle.putBundle(new ObfuscatedString(new long[]{-5173745536697568934L, -194601783834209317L}).toString(), zza);
            zza.putString(new ObfuscatedString(new long[]{-3390120376613008839L, 336856153563458201L}).toString(), this.zza);
            zza.putInt(new ObfuscatedString(new long[]{8570363119604955833L, -4359705275598137173L}).toString(), this.zzb);
        }
    }
}
