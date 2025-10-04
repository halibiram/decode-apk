package com.google.android.gms.ads.identifier;

import android.net.Uri;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
final class zza extends Thread {
    final /* synthetic */ Map zza;

    public zza(AdvertisingIdClient advertisingIdClient, Map map) {
        this.zza = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Map map = this.zza;
        Uri.Builder buildUpon = Uri.parse(new ObfuscatedString(new long[]{2760355069535132269L, 2473736522203553160L, 9022534726253097204L, 6062677818893798659L, -2060455709196086924L, -3142187032160751431L, -1434619490557230023L, 4576451666879659753L, -6337585130456432365L, -5587955198507634484L}).toString()).buildUpon();
        for (String str : map.keySet()) {
            buildUpon.appendQueryParameter(str, (String) map.get(str));
        }
        zzc.zza(buildUpon.build().toString());
    }
}
