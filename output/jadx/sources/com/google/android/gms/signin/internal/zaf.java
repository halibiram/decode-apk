package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zaf extends com.google.android.gms.internal.base.zaa implements IInterface {
    public zaf(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{6385851680230527836L, 4966352635562466312L, 586845455793573801L, 9106423478261387346L, -1516225964215336259L, 4437336937716419087L, -5133736563398768797L, 4045459405677745490L}).toString());
    }

    public final void zae(int i) {
        Parcel zaa = zaa();
        zaa.writeInt(i);
        zac(7, zaa);
    }

    public final void zaf(IAccountAccessor iAccountAccessor, int i, boolean z) {
        Parcel zaa = zaa();
        com.google.android.gms.internal.base.zac.zad(zaa, iAccountAccessor);
        zaa.writeInt(i);
        com.google.android.gms.internal.base.zac.zab(zaa, z);
        zac(9, zaa);
    }

    public final void zag(zai zaiVar, zae zaeVar) {
        Parcel zaa = zaa();
        com.google.android.gms.internal.base.zac.zac(zaa, zaiVar);
        com.google.android.gms.internal.base.zac.zad(zaa, zaeVar);
        zac(12, zaa);
    }
}
