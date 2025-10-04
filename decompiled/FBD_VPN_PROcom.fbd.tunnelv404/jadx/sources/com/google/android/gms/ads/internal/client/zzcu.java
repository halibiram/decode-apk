package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayg;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcu extends zzayg implements zzcw {
    public zzcu(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-4770759167896484444L, 5995458902096265580L, 7296509402463421670L, 5712393948360189116L, -8955127801843510291L, -6932251311370128790L, 8729339213582745826L, 6045546500021121434L, 5482997293989303888L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzcw
    public final String zze() {
        Parcel zzbl = zzbl(1, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcw
    public final String zzf() {
        Parcel zzbl = zzbl(2, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }
}
