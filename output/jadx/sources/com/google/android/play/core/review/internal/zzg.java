package com.google.android.play.core.review.internal;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public abstract class zzg extends zzb implements zzh {
    public zzg() {
        super(new ObfuscatedString(new long[]{-2881372677297874019L, 8332612862636064729L, 4625819978433328672L, -1689971179200796566L, -2305920459580980751L, 5196974444272308377L, -8513352910429991641L, 4411091926455622204L, 3012113552973607238L, -7775678585741424711L, -2604255719648331908L}).toString());
    }

    @Override // com.google.android.play.core.review.internal.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        Parcelable parcelable;
        if (i == 2) {
            Parcelable.Creator creator = Bundle.CREATOR;
            int i3 = zzc.zza;
            if (parcel.readInt() == 0) {
                parcelable = null;
            } else {
                parcelable = (Parcelable) creator.createFromParcel(parcel);
            }
            Bundle bundle = (Bundle) parcelable;
            int dataAvail = parcel.dataAvail();
            if (dataAvail <= 0) {
                zzb(bundle);
                return true;
            }
            throw new BadParcelableException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{3857570040667345259L, 1511749999236177194L, 3795299265558214212L, -4377476399155964502L, -2287668451616876396L, 6069482037122230139L, -3061364632390819955L}), new StringBuilder(), dataAvail));
        }
        return false;
    }
}
