package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.zzavh;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzcei;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzo implements Callable {
    final /* synthetic */ zzs zza;

    public zzo(zzs zzsVar) {
        this.zza = zzsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        zzcei zzceiVar;
        Context context;
        zzs zzsVar = this.zza;
        zzceiVar = zzsVar.zza;
        String str = zzceiVar.zza;
        context = zzsVar.zzd;
        return new zzavi(zzavh.zzt(str, context, false));
    }
}
