package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;

/* loaded from: classes2.dex */
public final class zzq extends com.google.android.gms.internal.common.zza implements IInterface {
    public zzq(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{5549247916766721924L, 8414496263581002435L, -1647696458518316061L, -4798552876871225832L, 4362068996567135864L, 7179272921580361435L, 900486442141797350L}).toString());
    }

    public final int zze() {
        Parcel zzB = zzB(6, zza());
        int readInt = zzB.readInt();
        zzB.recycle();
        return readInt;
    }

    public final int zzf(IObjectWrapper iObjectWrapper, String str, boolean z) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.zzc.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(z ? 1 : 0);
        Parcel zzB = zzB(3, zza);
        int readInt = zzB.readInt();
        zzB.recycle();
        return readInt;
    }

    public final int zzg(IObjectWrapper iObjectWrapper, String str, boolean z) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.zzc.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(z ? 1 : 0);
        Parcel zzB = zzB(5, zza);
        int readInt = zzB.readInt();
        zzB.recycle();
        return readInt;
    }

    public final IObjectWrapper zzh(IObjectWrapper iObjectWrapper, String str, int i) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.zzc.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(i);
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzB(2, zza));
    }

    public final IObjectWrapper zzi(IObjectWrapper iObjectWrapper, String str, int i, IObjectWrapper iObjectWrapper2) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.zzc.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(i);
        com.google.android.gms.internal.common.zzc.zze(zza, iObjectWrapper2);
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzB(8, zza));
    }

    public final IObjectWrapper zzj(IObjectWrapper iObjectWrapper, String str, int i) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.zzc.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(i);
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzB(4, zza));
    }

    public final IObjectWrapper zzk(IObjectWrapper iObjectWrapper, String str, boolean z, long j) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.zzc.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(z ? 1 : 0);
        zza.writeLong(j);
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzB(7, zza));
    }
}
