package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes2.dex */
public class zzgee extends zzgeo {
    public static zzgee zzu(ListenableFuture listenableFuture) {
        if (listenableFuture instanceof zzgee) {
            return (zzgee) listenableFuture;
        }
        return new zzgef(listenableFuture);
    }
}
