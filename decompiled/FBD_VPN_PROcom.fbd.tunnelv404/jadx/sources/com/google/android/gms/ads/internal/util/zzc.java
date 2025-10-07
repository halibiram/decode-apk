package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.zzceb;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;

/* loaded from: classes2.dex */
final class zzc extends zzb {
    private final Context zza;

    public zzc(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        boolean z;
        try {
            z = AdvertisingIdClient.getIsAdIdFakeForDebugLogging(this.zza);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{2555510735828236846L, -8088002440562905539L, 4676043761523226898L, -7534042919692695141L, 680294858752212950L, 7305793323270969191L}).toString(), e);
            z = false;
        }
        zzceb.zzj(z);
        zzcec.zzj(new ObfuscatedString(new long[]{-4810796017966510601L, 8925793637538623985L, -7712600496068561976L, 3398001114656259142L, 1467257848642528516L, 610151138386498344L}).toString() + z);
    }
}
