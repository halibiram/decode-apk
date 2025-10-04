package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbjd extends zzayg implements zzbjf {
    public zzbjd(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{2823980160917153131L, -6555947487445093991L, 7641144632747982935L, 4661968244848343154L, -2690180221440984007L, -6417812366833253831L, 1343475139252469246L, 156883596337860844L, -1533972763792910718L, -8747592439678640950L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final String zzg() {
        Parcel zzbl = zzbl(2, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final List zzh() {
        Parcel zzbl = zzbl(3, zza());
        ArrayList zzb = zzayi.zzb(zzbl);
        zzbl.recycle();
        return zzb;
    }
}
