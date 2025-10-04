package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdFormat;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public class MediationConfiguration {

    @NonNull
    public static final String CUSTOM_EVENT_SERVER_PARAMETER_FIELD = new ObfuscatedString(new long[]{8202655986003695848L, -7138727609610395956L, -3455226667072276203L}).toString();
    private final AdFormat zza;
    private final Bundle zzb;

    public MediationConfiguration(@NonNull AdFormat adFormat, @NonNull Bundle bundle) {
        this.zza = adFormat;
        this.zzb = bundle;
    }

    @NonNull
    public AdFormat getFormat() {
        return this.zza;
    }

    @NonNull
    public Bundle getServerParameters() {
        return this.zzb;
    }
}
