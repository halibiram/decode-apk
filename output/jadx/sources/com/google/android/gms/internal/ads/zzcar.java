package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcar extends zzayg implements IInterface {
    public zzcar(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{6691359856384028247L, -5028055480603346263L, 153487057131489763L, 3936579164629976803L, -1863484978574637554L, -1336284275441330076L, 7721143620093307538L, 3207024549244457315L, 4736298571799421285L, -5197229209604597839L}).toString());
    }

    public final IBinder zze(IObjectWrapper iObjectWrapper, String str, zzbsv zzbsvVar, int i) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(1, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        zzbl.recycle();
        return readStrongBinder;
    }
}
