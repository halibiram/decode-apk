package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;

/* loaded from: classes2.dex */
public final class zzy extends com.google.android.gms.internal.common.zza implements zzaa {
    public zzy(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{1418195924939801021L, 2162466613332384296L, 6980460524951382674L, -5276979925668823965L, 330012778630338688L, 299575799097987683L, 5136590927186515743L}).toString());
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final int zzc() {
        Parcel zzB = zzB(2, zza());
        int readInt = zzB.readInt();
        zzB.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final IObjectWrapper zzd() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzB(1, zza()));
    }
}
