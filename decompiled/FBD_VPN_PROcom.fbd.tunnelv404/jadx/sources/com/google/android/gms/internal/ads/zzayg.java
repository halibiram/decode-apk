package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public class zzayg implements IInterface {
    private final IBinder zza;
    private final String zzb;

    public zzayg(IBinder iBinder, String str) {
        this.zza = iBinder;
        this.zzb = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.zza;
    }

    public final Parcel zza() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.zzb);
        return obtain;
    }

    public final Parcel zzbl(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.zza.transact(i, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e) {
                obtain.recycle();
                throw e;
            }
        } finally {
            parcel.recycle();
        }
    }

    public final void zzbm(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.zza.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    public final void zzbn(int i, Parcel parcel) {
        try {
            this.zza.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
