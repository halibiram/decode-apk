package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public final class zzavb implements zzave {

    @Nullable
    private static zzavb zzb;
    private final Context zzc;
    private final zzfsg zzd;
    private final zzfsn zze;
    private final zzfsp zzf;
    private final zzawd zzg;
    private final zzfqr zzh;
    private final Executor zzi;
    private final zzfsm zzj;
    private final zzaws zzl;

    @Nullable
    private final zzawk zzm;

    @Nullable
    private final zzawb zzn;
    private volatile boolean zzp;
    private volatile boolean zzq;
    private final int zzr;

    @VisibleForTesting
    volatile long zza = 0;
    private final Object zzo = new Object();
    private final CountDownLatch zzk = new CountDownLatch(1);

    @VisibleForTesting
    public zzavb(@NonNull Context context, @NonNull zzfqr zzfqrVar, @NonNull zzfsg zzfsgVar, @NonNull zzfsn zzfsnVar, @NonNull zzfsp zzfspVar, @NonNull zzawd zzawdVar, @NonNull Executor executor, @NonNull zzfqm zzfqmVar, int i, @Nullable zzaws zzawsVar, @Nullable zzawk zzawkVar, @Nullable zzawb zzawbVar) {
        this.zzq = false;
        this.zzc = context;
        this.zzh = zzfqrVar;
        this.zzd = zzfsgVar;
        this.zze = zzfsnVar;
        this.zzf = zzfspVar;
        this.zzg = zzawdVar;
        this.zzi = executor;
        this.zzr = i;
        this.zzl = zzawsVar;
        this.zzm = zzawkVar;
        this.zzn = zzawbVar;
        this.zzq = false;
        this.zzj = new zzauz(this, zzfqmVar);
    }

    public static synchronized zzavb zza(@NonNull String str, @NonNull Context context, boolean z, boolean z2) {
        zzavb zzb2;
        synchronized (zzavb.class) {
            zzb2 = zzb(str, context, Executors.newCachedThreadPool(), z, z2);
        }
        return zzb2;
    }

    @Deprecated
    public static synchronized zzavb zzb(@NonNull String str, @NonNull Context context, @NonNull Executor executor, boolean z, boolean z2) {
        zzavb zzavbVar;
        zzavm zzavmVar;
        zzaws zzawsVar;
        zzawk zzawkVar;
        zzawb zzawbVar;
        synchronized (zzavb.class) {
            try {
                if (zzb == null) {
                    zzfqs zza = zzfqt.zza();
                    zza.zza(str);
                    zza.zzc(z);
                    zzfqt zzd = zza.zzd();
                    zzfqr zza2 = zzfqr.zza(context, executor, z2);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdi)).booleanValue()) {
                        zzavmVar = zzavm.zzc(context);
                    } else {
                        zzavmVar = null;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdj)).booleanValue()) {
                        zzawsVar = zzaws.zzd(context, executor);
                    } else {
                        zzawsVar = null;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcx)).booleanValue()) {
                        zzawkVar = new zzawk();
                    } else {
                        zzawkVar = null;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcz)).booleanValue()) {
                        zzawbVar = new zzawb();
                    } else {
                        zzawbVar = null;
                    }
                    zzfrk zze = zzfrk.zze(context, executor, zza2, zzd);
                    zzawc zzawcVar = new zzawc(context);
                    zzawd zzawdVar = new zzawd(zzd, zze, new zzawq(context, zzawcVar), zzawcVar, zzavmVar, zzawsVar, zzawkVar, zzawbVar);
                    int zzb2 = zzfrt.zzb(context, zza2);
                    zzfqm zzfqmVar = new zzfqm();
                    zzavb zzavbVar2 = new zzavb(context, zza2, new zzfsg(context, zzb2), new zzfsn(context, zzb2, new zzauy(zza2), ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcg)).booleanValue()), new zzfsp(context, zzawdVar, zza2, zzfqmVar), zzawdVar, executor, zzfqmVar, zzb2, zzawsVar, zzawkVar, zzawbVar);
                    zzb = zzavbVar2;
                    zzavbVar2.zzm();
                    zzb.zzp();
                }
                zzavbVar = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzavbVar;
    }

    public static /* bridge */ /* synthetic */ void zzj(zzavb zzavbVar) {
        String str;
        String str2;
        int length;
        boolean zza;
        long currentTimeMillis = System.currentTimeMillis();
        zzfsf zzt = zzavbVar.zzt(1);
        if (zzt != null) {
            String zzk = zzt.zza().zzk();
            str2 = zzt.zza().zzj();
            str = zzk;
        } else {
            str = null;
            str2 = null;
        }
        try {
            try {
                zzfsk zza2 = zzfrb.zza(zzavbVar.zzc, 1, zzavbVar.zzr, str, str2, new ObfuscatedString(new long[]{4284502620613430515L, 6439401360844047936L}).toString(), zzavbVar.zzh);
                byte[] bArr = zza2.zzb;
                if (bArr != null && (length = bArr.length) != 0) {
                    try {
                        zzayc zzc = zzayc.zzc(zzgyl.zzv(bArr, 0, length), zzgzf.zza());
                        if (!zzc.zzd().zzk().isEmpty() && !zzc.zzd().zzj().isEmpty() && zzc.zze().zzA().length != 0) {
                            zzfsf zzt2 = zzavbVar.zzt(1);
                            if (zzt2 != null) {
                                zzayf zza3 = zzt2.zza();
                                if (zzc.zzd().zzk().equals(zza3.zzk())) {
                                    if (!zzc.zzd().zzj().equals(zza3.zzj())) {
                                    }
                                }
                            }
                            zzfsm zzfsmVar = zzavbVar.zzj;
                            int i = zza2.zzc;
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzce)).booleanValue()) {
                                if (i == 3) {
                                    zza = zzavbVar.zze.zza(zzc);
                                } else {
                                    if (i == 4) {
                                        zza = zzavbVar.zze.zzb(zzc, zzfsmVar);
                                    }
                                    zzavbVar.zzh.zzd(4009, System.currentTimeMillis() - currentTimeMillis);
                                }
                            } else {
                                zza = zzavbVar.zzd.zza(zzc, zzfsmVar);
                            }
                            if (zza) {
                                zzfsf zzt3 = zzavbVar.zzt(1);
                                if (zzt3 != null) {
                                    if (zzavbVar.zzf.zzc(zzt3)) {
                                        zzavbVar.zzq = true;
                                    }
                                    zzavbVar.zza = System.currentTimeMillis() / 1000;
                                }
                            }
                            zzavbVar.zzh.zzd(4009, System.currentTimeMillis() - currentTimeMillis);
                        }
                        zzavbVar.zzh.zzd(5010, System.currentTimeMillis() - currentTimeMillis);
                    } catch (NullPointerException unused) {
                        zzavbVar.zzh.zzd(2030, System.currentTimeMillis() - currentTimeMillis);
                    }
                } else {
                    zzavbVar.zzh.zzd(5009, System.currentTimeMillis() - currentTimeMillis);
                }
            } catch (zzhag e) {
                zzavbVar.zzh.zzc(4002, System.currentTimeMillis() - currentTimeMillis, e);
            }
            zzavbVar.zzk.countDown();
        } catch (Throwable th) {
            zzavbVar.zzk.countDown();
            throw th;
        }
    }

    private final void zzs() {
        zzaws zzawsVar = this.zzl;
        if (zzawsVar != null) {
            zzawsVar.zzh();
        }
    }

    private final zzfsf zzt(int i) {
        if (!zzfrt.zza(this.zzr)) {
            return null;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzce)).booleanValue()) {
            return this.zze.zzc(1);
        }
        return this.zzd.zzc(1);
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final String zze(Context context, @Nullable String str, @Nullable View view) {
        return zzf(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final String zzf(Context context, String str, @Nullable View view, @Nullable Activity activity) {
        zzs();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcx)).booleanValue()) {
            this.zzm.zzi();
        }
        zzp();
        zzfqu zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zza2 = zza.zza(context, null, str, view, activity);
            this.zzh.zzf(5000, System.currentTimeMillis() - currentTimeMillis, zza2, null);
            return zza2;
        }
        return new ObfuscatedString(new long[]{6784343071935288441L}).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final String zzg(Context context) {
        zzs();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcx)).booleanValue()) {
            this.zzm.zzj();
        }
        zzp();
        zzfqu zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzc = zza.zzc(context, null);
            this.zzh.zzf(5001, System.currentTimeMillis() - currentTimeMillis, zzc, null);
            return zzc;
        }
        return new ObfuscatedString(new long[]{-1495097052247959561L}).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final String zzh(Context context, @Nullable View view, @Nullable Activity activity) {
        zzs();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcx)).booleanValue()) {
            this.zzm.zzk(context, view);
        }
        zzp();
        zzfqu zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzb2 = zza.zzb(context, null, view, activity);
            this.zzh.zzf(5002, System.currentTimeMillis() - currentTimeMillis, zzb2, null);
            return zzb2;
        }
        return new ObfuscatedString(new long[]{8864678079506995724L}).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final void zzk(@Nullable MotionEvent motionEvent) {
        zzfqu zza = this.zzf.zza();
        if (zza != null) {
            try {
                zza.zzd(null, motionEvent);
            } catch (zzfso e) {
                this.zzh.zzc(e.zza(), -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final void zzl(int i, int i2, int i3) {
        DisplayMetrics displayMetrics;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlp)).booleanValue() && (displayMetrics = this.zzc.getResources().getDisplayMetrics()) != null) {
            float f = i;
            float f2 = displayMetrics.density;
            float f3 = i2;
            MotionEvent obtain = MotionEvent.obtain(0L, 0L, 0, f * f2, f3 * f2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            zzk(obtain);
            obtain.recycle();
            float f4 = displayMetrics.density;
            MotionEvent obtain2 = MotionEvent.obtain(0L, 0L, 2, f * f4, f3 * f4, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            zzk(obtain2);
            obtain2.recycle();
            float f5 = displayMetrics.density;
            MotionEvent obtain3 = MotionEvent.obtain(0L, i3, 1, f * f5, f3 * f5, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            zzk(obtain3);
            obtain3.recycle();
        }
    }

    public final synchronized void zzm() {
        long currentTimeMillis = System.currentTimeMillis();
        zzfsf zzt = zzt(1);
        if (zzt != null) {
            if (this.zzf.zzc(zzt)) {
                this.zzq = true;
                this.zzk.countDown();
                return;
            }
            return;
        }
        this.zzh.zzd(4013, System.currentTimeMillis() - currentTimeMillis);
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzawb zzawbVar = this.zzn;
        if (zzawbVar != null) {
            zzawbVar.zzb(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final void zzo(@Nullable View view) {
        this.zzg.zzd(view);
    }

    public final void zzp() {
        if (!this.zzp) {
            synchronized (this.zzo) {
                try {
                    if (!this.zzp) {
                        if ((System.currentTimeMillis() / 1000) - this.zza < 3600) {
                            return;
                        }
                        zzfsf zzb2 = this.zzf.zzb();
                        if ((zzb2 == null || zzb2.zzd(3600L)) && zzfrt.zza(this.zzr)) {
                            this.zzi.execute(new zzava(this));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final synchronized boolean zzr() {
        return this.zzq;
    }
}
