package com.google.android.play.core.review.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public class zzb extends Binder implements IInterface {
    public zzb(String str) {
        attachInterface(this, new ObfuscatedString(new long[]{5503068017499144891L, -5257696399843548121L, -2027406034791271185L, 8995420493816220749L, -725983012631481752L, 1318417906668015380L, 5306087043633078262L, -6172235793996058463L, -7192507308637838589L, 7639728699801092056L, -6124167235874236171L}).toString());
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
