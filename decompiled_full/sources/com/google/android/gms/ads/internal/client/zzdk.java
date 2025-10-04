package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.google.android.gms.internal.ads.zzbsv;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzdk extends zzayg implements IInterface {
    public zzdk(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-193466000967466417L, -7153836530069886901L, 3699758491960011012L, 1725486672620263063L, 5614704917314102723L, 4292429359399293366L, -7782433688572478208L, -7876525136799500293L, -1875509342224444821L, 4501774381602182019L}).toString());
    }

    public final zzdj zze(IObjectWrapper iObjectWrapper, zzbsv zzbsvVar, int i) {
        zzdj zzdhVar;
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(1, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzdhVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{6329680452893958845L, -6330629169309075335L, 2720172966548998048L, -4599612175210127958L, -3582365218804895765L, 8355576635085539987L, -7486811710966877579L, -7876679741157231797L, -3906084122967204650L}).toString());
            if (queryLocalInterface instanceof zzdj) {
                zzdhVar = (zzdj) queryLocalInterface;
            } else {
                zzdhVar = new zzdh(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzdhVar;
    }
}
