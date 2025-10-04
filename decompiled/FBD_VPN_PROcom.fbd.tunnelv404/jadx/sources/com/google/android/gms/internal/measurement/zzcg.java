package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcg extends zzbm implements zzci {
    public zzcg(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{3241856452462851558L, -4465895648813620460L, 8242545287920084914L, 1639768451677679934L, 3040382875953695266L, -9159553276601124147L, -545089009130787403L, 5731776211668186985L, 8002465712412053951L, -4308951821708887700L}).toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzci
    public final int zzd() {
        Parcel zzb = zzb(2, zza());
        int readInt = zzb.readInt();
        zzb.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.measurement.zzci
    public final void zze(String str, String str2, Bundle bundle, long j) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzbo.zze(zza, bundle);
        zza.writeLong(j);
        zzc(1, zza);
    }
}
