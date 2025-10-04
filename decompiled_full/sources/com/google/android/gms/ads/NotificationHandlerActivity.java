package com.google.android.gms.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbsr;
import com.google.android.gms.internal.ads.zzbwm;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public final class NotificationHandlerActivity extends Activity {

    @NonNull
    @KeepForSdk
    public static final String CLASS_NAME = new ObfuscatedString(new long[]{3161077743793076070L, -3587692419800957621L, -9036104148463341150L, 8363670792366454811L, -609154568918530610L, -2626412012326907941L, 6586790740657814905L, -6804926133940456784L}).toString();

    @Override // android.app.Activity
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        try {
            zzbwm zzm = zzay.zza().zzm(this, new zzbsr());
            if (zzm == null) {
                zzcec.zzg(new ObfuscatedString(new long[]{-1124827903509051068L, -6782856293845017327L, -8161545087957343231L, -4885668670699255386L}).toString());
            } else {
                zzm.zze(getIntent());
            }
        } catch (RemoteException e) {
            zzcec.zzg(new ObfuscatedString(new long[]{-7867457793947018308L, 8243562005821656679L, -8385136109441601782L, 7107611213510684823L, 4039025985051593512L, 463192178650665389L, 1043485558533335371L, 8626502633919168427L}).toString().concat(e.toString()));
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        finish();
    }
}
