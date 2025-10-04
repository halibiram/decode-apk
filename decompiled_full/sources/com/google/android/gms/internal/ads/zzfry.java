package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfry extends com.google.android.gms.ads.internal.zzc {
    private final int zze;

    public zzfry(Context context, Looper looper, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener, int i) {
        super(context, looper, 116, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
        this.zze = i;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{7417554822255691980L, 6524444810147800183L, -4687018775204793965L, 5804026202437506122L, -8465506470806746608L, -4548910349531265197L, 5173734437173975303L, -3091829470071872192L}).toString());
        if (queryLocalInterface instanceof zzfsd) {
            return (zzfsd) queryLocalInterface;
        }
        return new zzfsd(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return this.zze;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return new ObfuscatedString(new long[]{-4796214599512891836L, 8601068744659470636L, 5890919408755675936L, 8521511065134229394L, -4531790477434085824L, -5589905057522778323L, 6523807532138450996L, -7081951491757064928L}).toString();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return new ObfuscatedString(new long[]{-1800115244790598898L, -2571333580547747748L, -9189913747955875213L, -7697292992200787749L, -6572052445332849713L, -6166886753553329261L}).toString();
    }

    public final zzfsd zzp() {
        return (zzfsd) getService();
    }
}
