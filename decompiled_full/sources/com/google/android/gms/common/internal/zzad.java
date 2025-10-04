package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzad implements IGmsServiceBroker {
    private final IBinder zza;

    public zzad(IBinder iBinder) {
        this.zza = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.zza;
    }

    @Override // com.google.android.gms.common.internal.IGmsServiceBroker
    public final void getService(IGmsCallbacks iGmsCallbacks, @Nullable GetServiceRequest getServiceRequest) {
        IBinder iBinder;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(new ObfuscatedString(new long[]{-412166823619120513L, 5854350916037404319L, 4005597099645460552L, -3770572243792966042L, -610840545323396463L, -257187381411061755L, -5444066116761032458L, 4620413288156284465L}).toString());
            if (iGmsCallbacks != null) {
                iBinder = iGmsCallbacks.asBinder();
            } else {
                iBinder = null;
            }
            obtain.writeStrongBinder(iBinder);
            if (getServiceRequest != null) {
                obtain.writeInt(1);
                zzn.zza(getServiceRequest, obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.zza.transact(46, obtain, obtain2, 0);
            obtain2.readException();
            obtain2.recycle();
            obtain.recycle();
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
    }
}
