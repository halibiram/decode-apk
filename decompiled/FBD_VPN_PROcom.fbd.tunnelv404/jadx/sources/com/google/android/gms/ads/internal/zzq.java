package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
final class zzq extends AsyncTask {
    final /* synthetic */ zzs zza;

    public /* synthetic */ zzq(zzs zzsVar, zzp zzpVar) {
        this.zza = zzsVar;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        zzs zzsVar = this.zza;
        String str = (String) obj;
        if (zzs.zze(zzsVar) != null && str != null) {
            zzs.zze(zzsVar).loadUrl(str);
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final String doInBackground(Void... voidArr) {
        try {
            zzs zzsVar = this.zza;
            zzs.zzv(zzsVar, (zzavi) zzs.zzu(zzsVar).get(1000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException e) {
            e = e;
            zzcec.zzk(new ObfuscatedString(new long[]{2514875060812765691L}).toString(), e);
        } catch (ExecutionException e2) {
            e = e2;
            zzcec.zzk(new ObfuscatedString(new long[]{2514875060812765691L}).toString(), e);
        } catch (TimeoutException e3) {
            zzcec.zzk(new ObfuscatedString(new long[]{-3327430261957131494L}).toString(), e3);
        }
        return this.zza.zzp();
    }
}
