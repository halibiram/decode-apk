package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbyc extends zzayh implements zzbyd {
    public zzbyc() {
        super(new ObfuscatedString(new long[]{6394927304025197924L, 7763331573962061415L, -5260600187906481590L, -3721416213467568451L, -3803161025567124530L, -763792011612290896L, 4543974526992136950L, 243791457440384580L, 4495765779215939386L, 6984561238198289689L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzb();
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
