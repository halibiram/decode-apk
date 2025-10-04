package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;

/* loaded from: classes2.dex */
final class zaal implements BaseGmsClient.ConnectionProgressReportCallbacks {
    private final WeakReference<zaaw> zaa;
    private final Api<?> zab;
    private final boolean zac;

    public zaal(zaaw zaawVar, Api<?> api, boolean z) {
        this.zaa = new WeakReference<>(zaawVar);
        this.zab = api;
        this.zac = z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(@NonNull ConnectionResult connectionResult) {
        zabi zabiVar;
        boolean z;
        Lock lock;
        Lock lock2;
        boolean zaG;
        boolean zaH;
        Lock lock3;
        zaaw zaawVar = this.zaa.get();
        if (zaawVar == null) {
            return;
        }
        Looper myLooper = Looper.myLooper();
        zabiVar = zaawVar.zaa;
        if (myLooper == zabiVar.zag.getLooper()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{-8401569322982950835L, -7369486909340099947L, 8816435937606527606L, -8142632081477070814L, -8243296122387913340L, 99070473872875044L, 1968842540463615307L, -7291700702989224291L, -1251415166047027728L, 2136646430400003251L, -7225308057471809335L}).toString());
        lock = zaawVar.zab;
        lock.lock();
        try {
            zaG = zaawVar.zaG(0);
            if (!zaG) {
                lock3 = zaawVar.zab;
            } else {
                if (!connectionResult.isSuccess()) {
                    zaawVar.zaE(connectionResult, this.zab, this.zac);
                }
                zaH = zaawVar.zaH();
                if (zaH) {
                    zaawVar.zaF();
                }
                lock3 = zaawVar.zab;
            }
            lock3.unlock();
        } catch (Throwable th) {
            lock2 = zaawVar.zab;
            lock2.unlock();
            throw th;
        }
    }
}
