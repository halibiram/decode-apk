package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeyh implements zzexp {

    @VisibleForTesting
    final String zza;
    final int zzb;

    public /* synthetic */ zzeyh(String str, int i, zzeyg zzeygVar) {
        this.zza = str;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjU)).booleanValue()) {
            if (!TextUtils.isEmpty(this.zza)) {
                bundle.putString(new ObfuscatedString(new long[]{462873349148946581L, 3486948080597642923L}).toString(), this.zza);
            }
            int i = this.zzb;
            if (i != -1) {
                bundle.putInt(new ObfuscatedString(new long[]{2909585946178349275L, 1525898879184780945L}).toString(), i);
            }
        }
    }
}
