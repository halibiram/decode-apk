package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.Bundle;
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
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zap extends GmsClient<zai> {
    private final TelemetryLoggingOptions zaa;

    public zap(Context context, Looper looper, ClientSettings clientSettings, TelemetryLoggingOptions telemetryLoggingOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 270, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zaa = telemetryLoggingOptions;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @Nullable
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{4718478529997608861L, 2663417653951402511L, -5298274095535427524L, 8670759232223290783L, 3017349695266481590L, -3246541438767558779L, 5456650533946825442L, 605808665313909442L, 9191533914422870418L, 5554138479218839327L}).toString());
        if (queryLocalInterface instanceof zai) {
            return (zai) queryLocalInterface;
        }
        return new zai(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] getApiFeatures() {
        return com.google.android.gms.internal.base.zad.zab;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getGetServiceRequestExtraArgs() {
        return this.zaa.zaa();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 203400000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @NonNull
    public final String getServiceDescriptor() {
        return new ObfuscatedString(new long[]{3594955233402396497L, -5185168121180939245L, 568523449441389083L, -7207076866268899492L, -7243569339164238944L, -520787056690627678L, 8375969275794130674L, 4106321033178211163L, -6545917432095548061L, -8331626912683411204L}).toString();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @NonNull
    public final String getStartServiceAction() {
        return new ObfuscatedString(new long[]{-7867582800882437573L, 3566956350163021129L, 2923484942102529223L, 5399549013486451670L, -7584631056748958686L, 5718291218635761362L, 6567523959822544542L, -4006250494907771527L}).toString();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean getUseDynamicLookup() {
        return true;
    }
}
