package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbwn extends zzayg implements zzbwp {
    public zzbwn(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{8377030505822692571L, -9032468586138849669L, -1175482758798745225L, -4361722195420126791L, 2004794442200628693L, 2616495895654360322L, 5469873619400700066L, -49979801338053809L, -801255615790904445L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final zzbwm zze(IObjectWrapper iObjectWrapper, zzbsv zzbsvVar, int i) {
        zzbwm zzbwkVar;
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(1, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-6455942320809941024L, 4550446037187881311L, -2395261259560286342L, -2206502242436305087L, 1672539386512897401L, 3977562847995775151L, -8472302511618074567L, -3543446080583281335L, -1074469851445050224L}).toString());
            if (queryLocalInterface instanceof zzbwm) {
                zzbwkVar = (zzbwm) queryLocalInterface;
            } else {
                zzbwkVar = new zzbwk(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbwkVar;
    }
}
