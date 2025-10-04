package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;

/* loaded from: classes2.dex */
public final class zam extends com.google.android.gms.internal.base.zaa implements IInterface {
    public zam(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{1495186268301980577L, -3835719877554771916L, 2283135775563586363L, -5872211625159425306L, 1149366040877102426L, -3866613653055266402L, -8889134512670217436L, 7034294845857129503L, 3339184779164901744L}).toString());
    }

    public final IObjectWrapper zae(IObjectWrapper iObjectWrapper, zax zaxVar) {
        Parcel zaa = zaa();
        com.google.android.gms.internal.base.zac.zad(zaa, iObjectWrapper);
        com.google.android.gms.internal.base.zac.zac(zaa, zaxVar);
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zab(2, zaa));
    }
}
