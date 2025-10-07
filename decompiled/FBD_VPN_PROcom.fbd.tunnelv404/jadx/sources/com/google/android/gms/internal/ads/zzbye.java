package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbye extends com.google.android.gms.ads.internal.zzc {
    public zzbye(Context context, Looper looper, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        super(zzbzs.zza(context), looper, 8, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{7797731891435550661L, 6237913428177190563L, 8742222987877933056L, -1390890536781905211L, 3892793420803056261L, 5940541936700977450L, -6652287292369070358L, 4782719512920174729L, 6293642873290503511L}).toString());
        if (queryLocalInterface instanceof zzbyq) {
            return (zzbyq) queryLocalInterface;
        }
        return new zzbyo(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final String getServiceDescriptor() {
        return new ObfuscatedString(new long[]{3923890136129742438L, -2377491206294952386L, -3485240866773382059L, -8071140228327967580L, -7346622853610789195L, 8185725857296544887L, -2462013606583470883L, 6381835191666927595L, 1636824647298766236L}).toString();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final String getStartServiceAction() {
        return new ObfuscatedString(new long[]{-2121487394100558528L, 7969927775891331025L, 7963628009790407386L, -5969407622805859698L, -2874616992712451045L, -3794759998108913598L}).toString();
    }

    public final zzbyq zzp() {
        return (zzbyq) getService();
    }
}
