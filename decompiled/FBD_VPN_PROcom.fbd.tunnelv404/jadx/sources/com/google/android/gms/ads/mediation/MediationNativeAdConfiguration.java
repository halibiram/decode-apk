package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.internal.ads.zzbjb;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public class MediationNativeAdConfiguration extends MediationAdConfiguration {

    @Nullable
    private final zzbjb zza;

    public MediationNativeAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, @Nullable Location location, int i, int i2, @Nullable String str2, String str3, @Nullable zzbjb zzbjbVar) {
        super(context, str, bundle, bundle2, z, location, i, i2, str2, str3);
        this.zza = zzbjbVar;
    }

    @NonNull
    public NativeAdOptions getNativeAdOptions() {
        return zzbjb.zza(this.zza);
    }
}
