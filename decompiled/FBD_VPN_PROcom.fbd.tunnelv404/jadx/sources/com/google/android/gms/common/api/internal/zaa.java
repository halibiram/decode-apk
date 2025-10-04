package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@VisibleForTesting(otherwise = 2)
/* loaded from: classes2.dex */
final class zaa extends LifecycleCallback {
    private List<Runnable> zaa;

    private zaa(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.zaa = new ArrayList();
        this.mLifecycleFragment.addCallback(new ObfuscatedString(new long[]{-8545338988473657136L, -6262277723825089230L, -303277574215665735L, 1764789846997213280L}).toString(), this);
    }

    public static /* bridge */ /* synthetic */ zaa zaa(Activity activity) {
        zaa zaaVar;
        synchronized (activity) {
            try {
                LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
                zaaVar = (zaa) fragment.getCallbackOrNull(new ObfuscatedString(new long[]{-3002150103352559127L, 5256493873272722996L, -5312995461248428688L, 9200240125372746322L}).toString(), zaa.class);
                if (zaaVar == null) {
                    zaaVar = new zaa(fragment);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zaaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zac(Runnable runnable) {
        this.zaa.add(runnable);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    @MainThread
    public final void onStop() {
        List<Runnable> list;
        synchronized (this) {
            list = this.zaa;
            this.zaa = new ArrayList();
        }
        Iterator<Runnable> it = list.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
    }
}
