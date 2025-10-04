package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcdd {
    final /* synthetic */ zzcde zza;
    private long zzb = -1;
    private long zzc = -1;

    public zzcdd(zzcde zzcdeVar) {
        this.zza = zzcdeVar;
    }

    public final long zza() {
        return this.zzc;
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        bundle.putLong(new ObfuscatedString(new long[]{7883348954353496989L, -4626865965187757575L}).toString(), this.zzb);
        bundle.putLong(new ObfuscatedString(new long[]{-3176790113015309120L, -2813643858021455089L}).toString(), this.zzc);
        return bundle;
    }

    public final void zzc() {
        Clock clock;
        clock = this.zza.zza;
        this.zzc = clock.elapsedRealtime();
    }

    public final void zzd() {
        Clock clock;
        clock = this.zza.zza;
        this.zzb = clock.elapsedRealtime();
    }
}
