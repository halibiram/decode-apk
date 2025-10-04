package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbop extends com.google.android.gms.ads.internal.zzc {
    public zzbop(Context context, Looper looper, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        super(zzbzs.zza(context), looper, 166, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{8125375131376845533L, -5454828012608138745L, -1845617954995425318L, 1508330681741595855L, 2678668863140555179L, -4429377378141206148L, -5090257677918031824L, -4201743485127845652L, -5250574570839357471L, -1107118785163004699L}).toString());
        if (queryLocalInterface instanceof zzbow) {
            return (zzbow) queryLocalInterface;
        }
        return new zzbow(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final String getServiceDescriptor() {
        return new ObfuscatedString(new long[]{2456210949082979280L, 7532204962862582884L, 1958399817134397966L, -2052446541549560421L, -5512475983295140504L, -6589054311662663110L, -8440968894896562913L, 159216213333901890L, 5491817265869159482L, 4924104794309314643L}).toString();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final String getStartServiceAction() {
        return new ObfuscatedString(new long[]{2676588286599691007L, -5718025202785048358L, -4181278214473219194L, -670437384811784222L, -2306718355345612947L, 6946009016761718586L}).toString();
    }

    public final zzbow zzp() {
        return (zzbow) getService();
    }
}
