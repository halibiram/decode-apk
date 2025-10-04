package com.google.android.gms.internal.ads;

import android.app.Activity;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzegw extends zzeht {
    private Activity zza;
    private com.google.android.gms.ads.internal.overlay.zzm zzb;
    private String zzc;
    private String zzd;

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzeht zza(Activity activity) {
        if (activity != null) {
            this.zza = activity;
            return this;
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{-4072792867624363808L, 1443830051987032012L, 2382638616068395369L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzeht zzb(@Nullable com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.zzb = zzmVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzeht zzc(@Nullable String str) {
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzeht zzd(@Nullable String str) {
        this.zzd = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzehu zze() {
        Activity activity = this.zza;
        if (activity != null) {
            return new zzegy(activity, this.zzb, this.zzc, this.zzd, null);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-8408227215952246080L, -3691939381005162093L, -2758119832504208113L, 7643563084778485097L, -6091183809586278133L, -2994820344710103228L}).toString());
    }
}
