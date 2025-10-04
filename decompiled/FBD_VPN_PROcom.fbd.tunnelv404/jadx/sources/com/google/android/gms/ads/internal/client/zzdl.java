package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzdl extends zzayg implements zzdn {
    public zzdl(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-4456831357432971420L, 5010355207558148105L, 1002387462387286947L, 7131534063920902379L, -5091099276250096407L, 5081337529024560668L, -8061203810031948513L, 2304197827125791566L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final Bundle zze() {
        Parcel zzbl = zzbl(5, zza());
        Bundle bundle = (Bundle) zzayi.zza(zzbl, Bundle.CREATOR);
        zzbl.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final zzu zzf() {
        Parcel zzbl = zzbl(4, zza());
        zzu zzuVar = (zzu) zzayi.zza(zzbl, zzu.CREATOR);
        zzbl.recycle();
        return zzuVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String zzg() {
        Parcel zzbl = zzbl(1, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String zzh() {
        Parcel zzbl = zzbl(6, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String zzi() {
        Parcel zzbl = zzbl(2, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final List zzj() {
        Parcel zzbl = zzbl(3, zza());
        ArrayList createTypedArrayList = zzbl.createTypedArrayList(zzu.CREATOR);
        zzbl.recycle();
        return createTypedArrayList;
    }
}
