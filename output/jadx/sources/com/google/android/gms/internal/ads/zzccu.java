package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzccu extends zzayg implements zzccw {
    public zzccu(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-5843519567125185200L, -3255986547302304643L, -2860073511202351005L, 7001043964347675408L, 2483777029714322631L, -239206243565920424L, 441122497287011234L, 2021174680397435420L, -1029346945193198403L, -5702044537255127514L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzccw
    public final zzcct zze(IObjectWrapper iObjectWrapper, zzbsv zzbsvVar, int i) {
        zzcct zzccrVar;
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(2, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzccrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-3356768543371800880L, 3274089716361264463L, -2067330212776079984L, -6700691530834656497L, 6759306362005380453L, -4844722810469777483L, 8231318518389101479L, 5581776062164922796L, 5057846027506271218L}).toString());
            if (queryLocalInterface instanceof zzcct) {
                zzccrVar = (zzcct) queryLocalInterface;
            } else {
                zzccrVar = new zzccr(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzccrVar;
    }
}
