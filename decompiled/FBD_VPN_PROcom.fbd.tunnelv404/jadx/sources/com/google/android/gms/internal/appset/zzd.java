package com.google.android.gms.internal.appset;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzd extends GmsClient<zzg> {
    public zzd(Context context, Looper looper, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 300, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @Nullable
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{2633328826253254964L, -8647858962241918281L, 5315866222007105239L, 4052864988243317528L, 6788134873916437060L, -8288038286275457649L, 6593109254836556861L, 3040457146054979495L}).toString());
        if (queryLocalInterface instanceof zzg) {
            return (zzg) queryLocalInterface;
        }
        return new zzg(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] getApiFeatures() {
        return com.google.android.gms.appset.zze.zzb;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 212800000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @NonNull
    public final String getServiceDescriptor() {
        return new ObfuscatedString(new long[]{3588095454052460223L, 7314296919913193962L, 1888517028633381756L, -5285914473050224334L, 4305241582018816512L, -7040289378565211765L, 8661657772816600971L, -3087769561866963870L}).toString();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @NonNull
    public final String getStartServiceAction() {
        return new ObfuscatedString(new long[]{-5289725521875469594L, -7412660817979416759L, -2872453814028276595L, 5482760177794061144L, -8385466633809257225L, -7592860839729150330L, 8375287468152545489L}).toString();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean getUseDynamicLookup() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean usesClientTelemetry() {
        return true;
    }
}
