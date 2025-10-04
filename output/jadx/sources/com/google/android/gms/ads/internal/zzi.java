package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzavb;
import com.google.android.gms.internal.ads.zzave;
import com.google.android.gms.internal.ads.zzavh;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcdv;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcei;
import com.google.android.gms.internal.ads.zzcep;
import com.google.android.gms.internal.ads.zzfqr;
import com.google.android.gms.internal.ads.zzfrt;
import com.google.android.gms.internal.ads.zzfsn;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzi implements Runnable, zzave {

    @VisibleForTesting
    protected boolean zza;
    private final boolean zzf;
    private final boolean zzg;
    private final Executor zzh;
    private final zzfqr zzi;
    private Context zzj;
    private final Context zzk;
    private zzcei zzl;
    private final zzcei zzm;
    private final boolean zzn;
    private int zzo;
    private final List zzc = new Vector();
    private final AtomicReference zzd = new AtomicReference();
    private final AtomicReference zze = new AtomicReference();
    final CountDownLatch zzb = new CountDownLatch(1);

    public zzi(Context context, zzcei zzceiVar) {
        this.zzj = context;
        this.zzk = context;
        this.zzl = zzceiVar;
        this.zzm = zzceiVar;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.zzh = newCachedThreadPool;
        boolean booleanValue = ((Boolean) zzba.zzc().zza(zzbgc.zzcj)).booleanValue();
        this.zzn = booleanValue;
        this.zzi = zzfqr.zza(context, newCachedThreadPool, booleanValue);
        this.zzf = ((Boolean) zzba.zzc().zza(zzbgc.zzcf)).booleanValue();
        this.zzg = ((Boolean) zzba.zzc().zza(zzbgc.zzck)).booleanValue();
        if (((Boolean) zzba.zzc().zza(zzbgc.zzci)).booleanValue()) {
            this.zzo = 2;
        } else {
            this.zzo = 1;
        }
        if (!((Boolean) zzba.zzc().zza(zzbgc.zzdm)).booleanValue()) {
            this.zza = zzc();
        }
        if (((Boolean) zzba.zzc().zza(zzbgc.zzdf)).booleanValue()) {
            zzcep.zza.execute(this);
            return;
        }
        zzay.zzb();
        if (zzcdv.zzu()) {
            zzcep.zza.execute(this);
        } else {
            run();
        }
    }

    @Nullable
    private final zzave zzj() {
        if (zzi() == 2) {
            return (zzave) this.zze.get();
        }
        return (zzave) this.zzd.get();
    }

    private final void zzm() {
        List list = this.zzc;
        zzave zzj = zzj();
        if (!list.isEmpty() && zzj != null) {
            for (Object[] objArr : this.zzc) {
                int length = objArr.length;
                if (length == 1) {
                    zzj.zzk((MotionEvent) objArr[0]);
                } else if (length == 3) {
                    zzj.zzl(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                }
            }
            this.zzc.clear();
        }
    }

    private final void zzp(boolean z) {
        this.zzd.set(zzavh.zzu(this.zzl.zza, zzq(this.zzj), z, this.zzo));
    }

    private static final Context zzq(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            return context;
        }
        return applicationContext;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzdm)).booleanValue()) {
                this.zza = zzc();
            }
            boolean z = this.zzl.zzd;
            final boolean z2 = false;
            if (!((Boolean) zzba.zzc().zza(zzbgc.zzaW)).booleanValue() && z) {
                z2 = true;
            }
            if (zzi() == 1) {
                zzp(z2);
                if (this.zzo == 2) {
                    this.zzh.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.zzg
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzi.this.zzb(z2);
                        }
                    });
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    zzavb zza = zzavb.zza(this.zzl.zza, zzq(this.zzj), z2, this.zzn);
                    this.zze.set(zza);
                    if (this.zzg && !zza.zzr()) {
                        this.zzo = 1;
                        zzp(z2);
                    }
                } catch (NullPointerException e) {
                    this.zzo = 1;
                    zzp(z2);
                    this.zzi.zzc(2031, System.currentTimeMillis() - currentTimeMillis, e);
                }
            }
            this.zzb.countDown();
            this.zzj = null;
            this.zzl = null;
        } catch (Throwable th) {
            this.zzb.countDown();
            this.zzj = null;
            this.zzl = null;
            throw th;
        }
    }

    public final /* synthetic */ void zzb(boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            zzavb.zza(this.zzm.zza, zzq(this.zzk), z, this.zzn).zzp();
        } catch (NullPointerException e) {
            this.zzi.zzc(2027, System.currentTimeMillis() - currentTimeMillis, e);
        }
    }

    public final boolean zzc() {
        Context context = this.zzj;
        zzh zzhVar = new zzh(this);
        zzfqr zzfqrVar = this.zzi;
        return new zzfsn(this.zzj, zzfrt.zzb(context, zzfqrVar), zzhVar, ((Boolean) zzba.zzc().zza(zzbgc.zzcg)).booleanValue()).zzd(1);
    }

    public final boolean zzd() {
        try {
            this.zzb.await();
            return true;
        } catch (InterruptedException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{5460762806084249183L, 4906501356022127882L, 8477960282721600317L, -4763315362837816076L, -3312205225927917618L, -1293839242235846477L}).toString(), e);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final String zze(Context context, String str, View view) {
        return zzf(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final String zzf(Context context, String str, View view, Activity activity) {
        if (zzd()) {
            zzave zzj = zzj();
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkh)).booleanValue()) {
                zzt.zzp();
                com.google.android.gms.ads.internal.util.zzt.zzI(view, 4, null);
            }
            if (zzj != null) {
                zzm();
                return zzj.zzf(zzq(context), str, view, activity);
            }
        }
        return new ObfuscatedString(new long[]{3698397345590605294L}).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final String zzg(Context context) {
        zzave zzj;
        if (zzd() && (zzj = zzj()) != null) {
            zzm();
            return zzj.zzg(zzq(context));
        }
        return new ObfuscatedString(new long[]{1596692989946534146L}).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final String zzh(Context context, View view, Activity activity) {
        if (((Boolean) zzba.zzc().zza(zzbgc.zzkg)).booleanValue()) {
            if (zzd()) {
                zzave zzj = zzj();
                if (((Boolean) zzba.zzc().zza(zzbgc.zzkh)).booleanValue()) {
                    zzt.zzp();
                    com.google.android.gms.ads.internal.util.zzt.zzI(view, 2, null);
                }
                if (zzj != null) {
                    return zzj.zzh(context, view, activity);
                }
            }
        } else {
            zzave zzj2 = zzj();
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkh)).booleanValue()) {
                zzt.zzp();
                com.google.android.gms.ads.internal.util.zzt.zzI(view, 2, null);
            }
            if (zzj2 != null) {
                return zzj2.zzh(context, view, activity);
            }
        }
        return new ObfuscatedString(new long[]{-2458667818868405606L}).toString();
    }

    public final int zzi() {
        if (!this.zzf || this.zza) {
            return this.zzo;
        }
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final void zzk(MotionEvent motionEvent) {
        zzave zzj = zzj();
        if (zzj != null) {
            zzm();
            zzj.zzk(motionEvent);
        } else {
            this.zzc.add(new Object[]{motionEvent});
        }
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final void zzl(int i, int i2, int i3) {
        zzave zzj = zzj();
        if (zzj != null) {
            zzm();
            zzj.zzl(i, i2, i3);
        } else {
            this.zzc.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
        }
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzave zzj;
        if (zzd() && (zzj = zzj()) != null) {
            zzj.zzn(stackTraceElementArr);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzave
    public final void zzo(View view) {
        zzave zzj = zzj();
        if (zzj != null) {
            zzj.zzo(view);
        }
    }
}
