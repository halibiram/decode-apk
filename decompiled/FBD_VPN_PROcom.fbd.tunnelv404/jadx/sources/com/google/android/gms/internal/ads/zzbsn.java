package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class zzbsn {
    private static zzbsn zza;
    private final AtomicBoolean zzb = new AtomicBoolean(false);

    @VisibleForTesting
    public zzbsn() {
    }

    public static zzbsn zza() {
        if (zza == null) {
            zza = new zzbsn();
        }
        return zza;
    }

    @Nullable
    public final Thread zzb(final Context context, @Nullable final String str) {
        if (!this.zzb.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbsm
            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = context;
                zzbgc.zza(context2);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzat)).booleanValue()) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean(new ObfuscatedString(new long[]{-5532088335438112313L, 2766705965764283141L, 7752708422073492207L, -8939221001536151710L}).toString(), ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzah)).booleanValue());
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzao)).booleanValue()) {
                    bundle.putString(new ObfuscatedString(new long[]{1810289216522486078L, -625878430876765804L, -6463188704129240927L}).toString(), new ObfuscatedString(new long[]{-5989127233962705072L, 6869776566752008700L}).toString());
                    bundle.putString(new ObfuscatedString(new long[]{-8391173327327625213L, -4800901865775772806L, -4988369373674655230L, 7442049072894192843L}).toString(), new ObfuscatedString(new long[]{8410834128681903266L, 425126446846198746L}).toString());
                }
                try {
                    ((zzclf) zzceg.zzb(context2, new ObfuscatedString(new long[]{7177866316786334633L, -7495692674578572211L, -1470689286272704131L, -9068688091761768401L, 6854445175827264769L, 6585718023074492740L, 9156110800791825839L, 1552271823491154627L, -4867021472244057804L, -2264626417531155822L}).toString(), new zzcee() { // from class: com.google.android.gms.internal.ads.zzbsl
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // com.google.android.gms.internal.ads.zzcee
                        public final Object zza(Object obj) {
                            return zzcle.zzb(obj);
                        }
                    })).zze(ObjectWrapper.wrap(context2), new zzbsk(AppMeasurementSdk.getInstance(context2, new ObfuscatedString(new long[]{-7162336496197210845L, -7006893793031462381L}).toString(), new ObfuscatedString(new long[]{-5224866501122586923L, -7801877636814350788L}).toString(), str, bundle)));
                } catch (RemoteException | zzcef | NullPointerException e) {
                    zzcec.zzl(new ObfuscatedString(new long[]{6633433004709057017L, -144681533486870897L, 1758120560271515702L, 6229844329366560682L, 7798544477174081820L, 8646223685611092634L}).toString(), e);
                }
            }
        });
        thread.start();
        return thread;
    }
}
