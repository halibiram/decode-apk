package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfwd implements ServiceConnection {
    final /* synthetic */ zzfwe zza;

    public /* synthetic */ zzfwd(zzfwe zzfweVar, zzfwc zzfwcVar) {
        this.zza = zzfweVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzfwe.zzf(this.zza).zzc(new ObfuscatedString(new long[]{1088052545476243958L, -1910708826657324525L, 6543542235217902648L, 7593197276486916430L, -9031483017113837929L, -4907670684641865510L, 2303301730883755752L}).toString(), componentName);
        this.zza.zzc().post(new zzfwa(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzfwe.zzf(this.zza).zzc(new ObfuscatedString(new long[]{100756041317668433L, -7664082695012048931L, 1151466005928506007L, -141914109422517798L, -4085902015406065521L, 2917106581164340111L, -602277882844329726L}).toString(), componentName);
        this.zza.zzc().post(new zzfwb(this));
    }
}
