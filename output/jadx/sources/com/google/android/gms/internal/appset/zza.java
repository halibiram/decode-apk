package com.google.android.gms.internal.appset;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public class zza implements IInterface {
    private final IBinder zza;
    private final String zzb = new ObfuscatedString(new long[]{7645246335482050758L, 1587533972752679437L, 4434426715996608515L, 1296137448269927830L, -1860811409391289783L, 9035661549734787228L, 5088288774669364487L, -8229947976791306270L}).toString();

    public zza(IBinder iBinder, String str) {
        this.zza = iBinder;
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

    public final void zzb(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.zza.transact(1, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
