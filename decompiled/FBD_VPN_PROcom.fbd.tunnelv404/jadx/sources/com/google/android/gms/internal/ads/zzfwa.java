package com.google.android.gms.internal.ads;

import android.os.IBinder;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
final class zzfwa extends zzfvu {
    final /* synthetic */ IBinder zza;
    final /* synthetic */ zzfwd zzb;

    public zzfwa(zzfwd zzfwdVar, IBinder iBinder) {
        this.zza = iBinder;
        this.zzb = zzfwdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvu
    public final void zza() {
        List list;
        List list2;
        this.zzb.zza.zzn = zzful.zzb(this.zza);
        zzfwe.zzq(this.zzb.zza);
        this.zzb.zza.zzh = false;
        list = this.zzb.zza.zze;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        list2 = this.zzb.zza.zze;
        list2.clear();
    }
}
