package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzboi extends zzayg implements zzbok {
    public zzboi(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{5750784562395119293L, -8283029707451296521L, -4563490956232197224L, 5259654336099027781L, -2983505341685444557L, 8408686988053326692L, -9204878040027631307L, 7014616512910873828L, 3841119834278442030L, -4791431610435517732L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbok
    public final zzboh zze(IObjectWrapper iObjectWrapper, zzbsv zzbsvVar, int i, zzboe zzboeVar) {
        zzboh zzbofVar;
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        zzayi.zzf(zza, zzboeVar);
        Parcel zzbl = zzbl(1, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbofVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-9209928820947037744L, -7318046998313991884L, 5436929740868052076L, -1136890040370582947L, 467393358950381066L, -7040485345331003267L, 7828005251759806288L, 8158514494783202729L, -8408836358651389192L}).toString());
            if (queryLocalInterface instanceof zzboh) {
                zzbofVar = (zzboh) queryLocalInterface;
            } else {
                zzbofVar = new zzbof(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbofVar;
    }
}
