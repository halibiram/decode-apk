package com.google.android.play.core.review.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzr implements ServiceConnection {
    final /* synthetic */ zzt zza;

    public /* synthetic */ zzr(zzt zztVar, zzs zzsVar) {
        this.zza = zztVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzt.zzf(this.zza).zzc(new ObfuscatedString(new long[]{457675374971400230L, 5962665076727445262L, 6535320820629133010L, 7696568318716426529L, 1871201503715809124L, -5761790767427476326L, 6067609168001103385L}).toString(), componentName);
        this.zza.zzc().post(new zzp(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzt.zzf(this.zza).zzc(new ObfuscatedString(new long[]{-5118999677084267354L, -3055801856313616451L, 4213368400393159469L, 7821383993384792L, 7147610036127766023L, 327805612989492195L, -9111115816721184447L}).toString(), componentName);
        this.zza.zzc().post(new zzq(this));
    }
}
