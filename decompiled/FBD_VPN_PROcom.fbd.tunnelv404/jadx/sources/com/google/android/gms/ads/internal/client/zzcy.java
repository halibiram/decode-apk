package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcy extends zzayg implements zzda {
    public zzcy(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-1853931526801239977L, -1746116286629661620L, -4855500979364774395L, -8053712429631668347L, -7056252537433653705L, -8674438397044310229L, -2367675690790517L, 7794684128957680016L, -7006211494127611545L, -1748967048967174235L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzda
    public final void zze(zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(1, zza);
    }
}
