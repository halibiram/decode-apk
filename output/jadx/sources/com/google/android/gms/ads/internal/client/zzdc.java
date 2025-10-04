package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzdc extends zzayh implements zzdd {
    public zzdc() {
        super(new ObfuscatedString(new long[]{-1543835977912793795L, -229605740011932341L, -6060230025094955236L, -7063231352842667137L, -8408057519436896208L, -8550046202955288538L, -6921893979774843049L, -3183994335649862010L, 4397690250958471508L, 2748998390833651678L}).toString());
    }

    public static zzdd zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-7541505448390569876L, 7364570764557049750L, 3261412113815495127L, 5697940587644027596L, -8518990692610245446L, -1266607678795643954L, -5388182577342422516L, -2109939466778991091L, 1425728050856977503L, 3737436535571232047L}).toString());
        if (queryLocalInterface instanceof zzdd) {
            return (zzdd) queryLocalInterface;
        }
        return new zzdb(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zze();
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
