package com.google.android.gms.internal.ads;

import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;

/* loaded from: classes2.dex */
final class zzfk extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {
    private final zzfn zza;

    public zzfk(zzfn zzfnVar) {
        this.zza = zzfnVar;
    }

    @Override // android.telephony.TelephonyCallback.DisplayInfoListener
    public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
        int overrideNetworkType;
        boolean z;
        overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
        int i = 5;
        if (overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5) {
            z = true;
        } else {
            z = false;
        }
        zzfn zzfnVar = this.zza;
        if (true == z) {
            i = 10;
        }
        zzfn.zzc(zzfnVar, i);
    }
}
