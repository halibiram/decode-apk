package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbxg extends zzayg implements zzbxi {
    public zzbxg(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-1506983024339257639L, -4340085561955709658L, -8264680760135267186L, -3297589502461329838L, -3538041795090690818L, -3366634430283967295L, -6763981862417987733L, -2753893749871563228L, -8383399008193448452L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbxi
    public final void zze(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxi
    public final void zzf(List list) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzbm(1, zza);
    }
}
