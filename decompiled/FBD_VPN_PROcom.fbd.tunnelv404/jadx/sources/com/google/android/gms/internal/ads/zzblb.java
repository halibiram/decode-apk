package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzblb extends zzayg implements zzbld {
    public zzblb(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-6435898088796363360L, -2188133496396775311L, -8363414423367106769L, 5831757880917805816L, 3809310854117166830L, -4881925372454707569L, 3409014471521626682L, -970402697394010294L, -5111313760683066653L, -8779658940603302932L, -5348543166471698426L, 977710909316338475L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbld
    public final boolean zze(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        Parcel zzbl = zzbl(2, zza);
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }
}
