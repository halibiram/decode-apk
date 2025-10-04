package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcdb implements Runnable {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzceu zzb;

    public zzcdb(zzcdc zzcdcVar, Context context, zzceu zzceuVar) {
        this.zza = context;
        this.zzb = zzceuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzb.zzc(AdvertisingIdClient.getAdvertisingIdInfo(this.zza));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            this.zzb.zzd(e);
            zzcec.zzh(new ObfuscatedString(new long[]{-3227302226661310704L, 7523776051034891264L, -681553193741848156L, -1577538409431195845L, -839567962385237665L, -2503762919502723652L, 8764076777384970169L}).toString(), e);
        }
    }
}
