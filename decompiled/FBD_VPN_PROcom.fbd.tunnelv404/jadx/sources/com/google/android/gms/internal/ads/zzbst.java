package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbst extends zzayg implements zzbsv {
    public zzbst(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-6597207892387561255L, -5899584471750464070L, -9038689323124414122L, 542934156575131372L, 4052799731356334308L, 6179357899346784216L, 5468245425356888474L, 8347398070996778243L, 466935167961224754L, -1122900469855378734L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbsv
    public final zzbsy zzb(String str) {
        zzbsy zzbswVar;
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbl = zzbl(1, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbswVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{4175727184573488515L, 5493657445062277153L, 1589242664579350071L, -8668202256728975836L, 5921745060088091162L, 8345563099738854608L, 4931879191318248925L, -694562997800534133L, 2244624894752671833L, -1484912394948054528L}).toString());
            if (queryLocalInterface instanceof zzbsy) {
                zzbswVar = (zzbsy) queryLocalInterface;
            } else {
                zzbswVar = new zzbsw(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbswVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsv
    public final zzbus zzc(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbl = zzbl(3, zza);
        zzbus zzb = zzbur.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbsv
    public final boolean zzd(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbl = zzbl(4, zza);
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbsv
    public final boolean zze(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbl = zzbl(2, zza);
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }
}
