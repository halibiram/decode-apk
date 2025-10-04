package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcai extends zzayg implements zzcak {
    public zzcai(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{639513972788684841L, -8704305367599181258L, 6531463475371589863L, -235908360001093374L, 7223840069343978659L, -8956131856225052669L, -1914461968191144971L, -2067479328065146711L, -7378664466267682387L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcak
    public final int zze() {
        Parcel zzbl = zzbl(2, zza());
        int readInt = zzbl.readInt();
        zzbl.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzcak
    public final String zzf() {
        Parcel zzbl = zzbl(1, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }
}
