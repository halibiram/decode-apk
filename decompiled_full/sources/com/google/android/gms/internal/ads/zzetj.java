package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzetj implements zzexq {
    private final zzgey zza;
    private final Context zzb;

    public zzetj(zzgey zzgeyVar, Context context) {
        this.zza = zzgeyVar;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    @SuppressLint({"UnprotectedReceiver"})
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeti
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzetj.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzetk zzc() {
        Intent registerReceiver;
        double d;
        IntentFilter intentFilter = new IntentFilter(new ObfuscatedString(new long[]{1286298419095217069L, 7177595524047912156L, -7914260455462547800L, -7886866607192072994L, -8486977408757161225L, -4913374244043879691L}).toString());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkw)).booleanValue() && Build.VERSION.SDK_INT >= 33) {
            registerReceiver = this.zzb.registerReceiver(null, intentFilter, 4);
        } else {
            registerReceiver = this.zzb.registerReceiver(null, intentFilter);
        }
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra(new ObfuscatedString(new long[]{-1712699781001095235L, 7282844305836402509L}).toString(), -1);
            double intExtra2 = registerReceiver.getIntExtra(new ObfuscatedString(new long[]{-3205629211154827748L, 7614109956538364223L}).toString(), -1);
            double intExtra3 = registerReceiver.getIntExtra(new ObfuscatedString(new long[]{8398624205166366197L, 3070309373026628823L}).toString(), -1);
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
            d = intExtra2 / intExtra3;
        } else {
            d = -1.0d;
        }
        return new zzetk(d, z);
    }
}
