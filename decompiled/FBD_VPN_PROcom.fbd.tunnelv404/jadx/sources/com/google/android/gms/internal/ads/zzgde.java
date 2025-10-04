package com.google.android.gms.internal.ads;

import defpackage.AbstractC1323xfc2219a9;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
public final /* synthetic */ class zzgde {
    public static /* synthetic */ boolean zza(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!AbstractC1323xfc2219a9.m4384xfbe0c504(unsafe, obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
