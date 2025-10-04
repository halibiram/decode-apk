package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.webkit.WebView;
import androidx.annotation.UiThread;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

@UiThread
/* loaded from: classes2.dex */
public final class zzbu extends WebView {
    private final Handler zza;
    private final zzca zzb;
    private boolean zzc;

    public zzbu(zzbw zzbwVar, Handler handler, zzca zzcaVar) {
        super(zzbwVar);
        this.zzc = false;
        this.zza = handler;
        this.zzb = zzcaVar;
    }

    public static /* bridge */ /* synthetic */ boolean zzf(zzbu zzbuVar, String str) {
        if (str != null && str.startsWith(new ObfuscatedString(new long[]{756848905680448162L, 5524388322989580115L, 7607857763885966736L}).toString())) {
            return true;
        }
        return false;
    }

    public final void zzc() {
        final zzca zzcaVar = this.zzb;
        Objects.requireNonNull(zzcaVar);
        this.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbr
            @Override // java.lang.Runnable
            public final void run() {
                zzca.this.zzc();
            }
        });
    }

    public final void zzd(String str, String str2) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{5776331908319943095L, -2898047048470354013L}).toString());
        m3341xc20437a5.append(str2);
        final String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8053731688969088456L, 5885701832256819395L}), m3341xc20437a5);
        this.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbq
            @Override // java.lang.Runnable
            public final void run() {
                zzcs.zza(zzbu.this, m3332x9d12c1f4);
            }
        });
    }
}
