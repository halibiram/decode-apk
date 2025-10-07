package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zah extends GmsClient<zal> {
    public zah(Context context, Looper looper, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 39, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1385430410417350231L, 8354183984007910214L, 3456584434593413486L, -2046939915235158934L, 8130885200920101150L, -6525720792770723682L, 256200478821169435L, -1881377039020148512L, -260192393503787469L}).toString());
        if (queryLocalInterface instanceof zal) {
            return (zal) queryLocalInterface;
        }
        return new zal(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return new ObfuscatedString(new long[]{3200536640558948567L, 4489852126142686252L, -897553205521979665L, -2242182962906258874L, -737498325402427771L, 4856800035224496469L, 8334203440966601383L, -1538588476991169846L, -4376558146796948107L}).toString();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return new ObfuscatedString(new long[]{2281259732018446160L, 1634064602878872765L, -8331224042923002248L, 482034275530533347L, 4014597265099735547L, 1926286894257672119L, -1832797524128681924L}).toString();
    }
}
