package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbd extends zzayh implements zzbe {
    public zzbd() {
        super(new ObfuscatedString(new long[]{3460169415260995735L, -9164106351009843131L, -6925587998429608761L, -3448477570240516939L, -589388919649380636L, -4406835963297123717L, -4683806711888950196L, -7511929471003973515L, -2356207120345970308L}).toString());
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
