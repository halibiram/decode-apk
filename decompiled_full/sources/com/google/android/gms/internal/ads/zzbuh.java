package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbuh extends zzayg implements zzbuj {
    public zzbuh(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{5391987892007328862L, -34407473732679465L, 4211399700941794234L, -583373157257553195L, 3884748948877380492L, 2823143335393184554L, 525332672480617809L, -6899331071737216029L, 3686577995469368239L, 6935723284779531846L, 23345548598940212L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void zze(String str) {
        Parcel zza = zza();
        zza.writeString(new ObfuscatedString(new long[]{4362418816819151197L, 164335205724081867L, -6742261897723241640L, -1421383949825594245L}).toString());
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void zzg() {
        zzbm(2, zza());
    }
}
