package com.google.android.play.core.appupdate.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public class zzb extends Binder implements IInterface {
    public zzb(String str) {
        attachInterface(this, new ObfuscatedString(new long[]{-3252446470166630208L, 6433547162309190997L, -8978725418145385138L, 7585250336581858871L, 556269592567990893L, 1772672204750242895L, 8733378849736583835L, -2630641579405094560L, -15978463365690226L, 5819665944037755417L, 4292515580176219808L}).toString());
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i > 16777215) {
            if (super.onTransact(i, parcel, parcel2, i2)) {
                return true;
            }
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
        }
        return zza(i, parcel, parcel2, i2);
    }

    public boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        throw null;
    }
}
