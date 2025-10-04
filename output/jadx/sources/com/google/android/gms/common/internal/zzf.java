package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzf extends zza {

    @Nullable
    public final IBinder zze;
    final /* synthetic */ BaseGmsClient zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public zzf(BaseGmsClient baseGmsClient, @Nullable int i, @Nullable IBinder iBinder, Bundle bundle) {
        super(baseGmsClient, i, bundle);
        this.zzf = baseGmsClient;
        this.zze = iBinder;
    }

    @Override // com.google.android.gms.common.internal.zza
    public final void zzb(ConnectionResult connectionResult) {
        if (this.zzf.zzx != null) {
            this.zzf.zzx.onConnectionFailed(connectionResult);
        }
        this.zzf.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.zza
    public final boolean zzd() {
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks;
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks2;
        try {
            IBinder iBinder = this.zze;
            Preconditions.checkNotNull(iBinder);
            if (!this.zzf.getServiceDescriptor().equals(iBinder.getInterfaceDescriptor())) {
                this.zzf.getServiceDescriptor();
                new ObfuscatedString(new long[]{-4504515237904758378L, -1677607152106532760L, 4116150918726958396L, -8743319499895699946L, 2294630978257501135L}).toString();
                new ObfuscatedString(new long[]{-4429891948211860152L, 215110546406464881L}).toString();
                new ObfuscatedString(new long[]{-3900722749352818375L, 1904271409769674466L, -8655980691841267870L}).toString();
                return false;
            }
            IInterface createServiceInterface = this.zzf.createServiceInterface(this.zze);
            if (createServiceInterface == null || (!BaseGmsClient.zzn(this.zzf, 2, 4, createServiceInterface) && !BaseGmsClient.zzn(this.zzf, 3, 4, createServiceInterface))) {
                return false;
            }
            this.zzf.zzB = null;
            BaseGmsClient baseGmsClient = this.zzf;
            Bundle connectionHint = baseGmsClient.getConnectionHint();
            baseConnectionCallbacks = baseGmsClient.zzw;
            if (baseConnectionCallbacks != null) {
                baseConnectionCallbacks2 = this.zzf.zzw;
                baseConnectionCallbacks2.onConnected(connectionHint);
                return true;
            }
            return true;
        } catch (RemoteException unused) {
            new ObfuscatedString(new long[]{7487587669479849179L, 4949497573712842936L, 7669114202887472544L}).toString();
            new ObfuscatedString(new long[]{6749539412113246808L, 4591782491130851167L, -113543170240060079L, -2702846027692380255L}).toString();
            return false;
        }
    }
}
