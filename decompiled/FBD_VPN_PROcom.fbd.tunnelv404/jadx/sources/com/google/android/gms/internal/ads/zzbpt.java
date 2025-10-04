package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbpt extends zzayg implements zzbpv {
    public zzbpt(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-8527323821435879946L, 4114754606732365256L, 5796974125704939047L, 1849164386161846327L, 5060678825946769937L, -8861650925612011577L, -7776255001880614718L, -4809871682811969041L, -7104468740843727134L, 5555252493361662576L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final void zze(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final void zzf() {
        zzbm(1, zza());
    }
}
