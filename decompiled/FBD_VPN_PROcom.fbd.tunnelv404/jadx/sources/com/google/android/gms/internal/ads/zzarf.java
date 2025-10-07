package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.io.File;

/* loaded from: classes2.dex */
final class zzarf implements zzaqv {
    final /* synthetic */ Context zza;
    private File zzb = null;

    public zzarf(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaqv
    public final File zza() {
        if (this.zzb == null) {
            this.zzb = new File(this.zza.getCacheDir(), new ObfuscatedString(new long[]{4427634064306912940L, 5305357235980616205L}).toString());
        }
        return this.zzb;
    }
}
