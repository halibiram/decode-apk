package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.Bundle;
import android.os.ext.SdkExtensions;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.Nullable;
import kotlin.time.DurationKt;

/* loaded from: classes2.dex */
public final class zzetc implements zzexp {

    @Nullable
    private final Integer zza;

    private zzetc(@Nullable Integer num) {
        this.zza = num;
    }

    public static /* bridge */ /* synthetic */ zzetc zzb() {
        int extensionVersion;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjL)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            int i = 0;
            if (Build.VERSION.SDK_INT >= 30) {
                extensionVersion = SdkExtensions.getExtensionVersion(30);
                if (extensionVersion > 3) {
                    i = SdkExtensions.getExtensionVersion(DurationKt.NANOS_IN_MILLIS);
                }
            }
            return new zzetc(Integer.valueOf(i));
        }
        return new zzetc(null);
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Integer num = this.zza;
        Bundle bundle = (Bundle) obj;
        if (num != null) {
            bundle.putInt(new ObfuscatedString(new long[]{-5076507459222578474L, -7830021307142541859L}).toString(), num.intValue());
        }
    }
}
