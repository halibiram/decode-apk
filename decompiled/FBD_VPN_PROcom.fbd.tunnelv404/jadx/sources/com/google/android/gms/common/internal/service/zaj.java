package com.google.android.gms.common.internal.service;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zaj extends com.google.android.gms.internal.base.zab implements zak {
    public zaj() {
        super(new ObfuscatedString(new long[]{940195554008345414L, 7859799182397371477L, -4018113250608289807L, 1486015080942581003L, -6723264026906697975L, -2732772405915309668L, 1364495885958717980L, -3236034399638565740L, -6853974829921571324L}).toString());
    }

    @Override // com.google.android.gms.internal.base.zab
    public final boolean zaa(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zab(parcel.readInt());
            return true;
        }
        return false;
    }
}
