package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzz extends com.google.android.gms.internal.common.zzb implements zzaa {
    public zzz() {
        super(new ObfuscatedString(new long[]{230657928412618207L, -868515173546040641L, -4544649712560701495L, -2646121667803481337L, 454652846216049034L, 6715648762141565417L, -1668012528692102417L}).toString());
    }

    public static zzaa zzg(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-5589862520339613548L, 8499702921325949093L, -8200204343868161487L, 2881390673601253412L, -2577888675093136049L, 5085919152903047626L, -5083962654570534707L}).toString());
        if (queryLocalInterface instanceof zzaa) {
            return (zzaa) queryLocalInterface;
        }
        return new zzy(iBinder);
    }

    @Override // com.google.android.gms.internal.common.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int zzc = zzc();
            parcel2.writeNoException();
            parcel2.writeInt(zzc);
        } else {
            IObjectWrapper zzd = zzd();
            parcel2.writeNoException();
            com.google.android.gms.internal.common.zzc.zze(parcel2, zzd);
        }
        return true;
    }
}
