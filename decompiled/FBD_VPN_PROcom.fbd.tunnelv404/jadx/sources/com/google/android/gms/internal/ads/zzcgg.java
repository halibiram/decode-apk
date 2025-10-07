package com.google.android.gms.internal.ads;

import android.os.Looper;

/* loaded from: classes2.dex */
final class zzcgg implements Runnable {
    public zzcgg(zzcgi zzcgiVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
