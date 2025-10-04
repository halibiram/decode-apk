package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzctb implements zzayq, zzdbs, com.google.android.gms.ads.internal.overlay.zzp, zzdbr {
    private final zzcsw zza;
    private final zzcsx zzb;
    private final zzbsj zzd;
    private final Executor zze;
    private final Clock zzf;
    private final Set zzc = new HashSet();
    private final AtomicBoolean zzg = new AtomicBoolean(false);
    private final zzcta zzh = new zzcta();
    private boolean zzi = false;
    private WeakReference zzj = new WeakReference(this);

    public zzctb(zzbsg zzbsgVar, zzcsx zzcsxVar, Executor executor, zzcsw zzcswVar, Clock clock) {
        this.zza = zzcswVar;
        String obfuscatedString = new ObfuscatedString(new long[]{-7544147690710744489L, 1051453536519353062L, 5706073710798082665L, -6777804867348688497L, -4154622699868375895L, 7804332856568808844L}).toString();
        zzbrr zzbrrVar = zzbru.zza;
        this.zzd = zzbsgVar.zza(obfuscatedString, zzbrrVar, zzbrrVar);
        this.zzb = zzcsxVar;
        this.zze = executor;
        this.zzf = clock;
    }

    private final void zzk() {
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            this.zza.zzf((zzcjk) it.next());
        }
        this.zza.zze();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbA() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbC() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbD(int i) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void zzbP() {
        this.zzh.zzb = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final synchronized void zzbs(@Nullable Context context) {
        this.zzh.zze = new ObfuscatedString(new long[]{4497976974656666630L, -3913868292568040534L}).toString();
        zzg();
        zzk();
        this.zzi = true;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void zzbt() {
        this.zzh.zzb = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final synchronized void zzbu(@Nullable Context context) {
        this.zzh.zzb = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final synchronized void zzbv(@Nullable Context context) {
        this.zzh.zzb = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzayq
    public final synchronized void zzby(zzayp zzaypVar) {
        zzcta zzctaVar = this.zzh;
        zzctaVar.zza = zzaypVar.zzj;
        zzctaVar.zzf = zzaypVar;
        zzg();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbz() {
    }

    public final synchronized void zzg() {
        try {
            if (this.zzj.get() != null) {
                if (!this.zzi && this.zzg.get()) {
                    try {
                        this.zzh.zzd = this.zzf.elapsedRealtime();
                        final JSONObject zzb = this.zzb.zzb(this.zzh);
                        for (final zzcjk zzcjkVar : this.zzc) {
                            this.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcsz
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzcjk.this.zzl(new ObfuscatedString(new long[]{5862313653866838348L, -145913277013403282L, 7766898279419101150L, 1626944490459431242L}).toString(), zzb);
                                }
                            });
                        }
                        zzces.zzb(this.zzd.zzb(zzb), new ObfuscatedString(new long[]{7843183066481575974L, -3733387500011495801L, -8827183292077544463L, -8985204986590318388L, -5701274810305967495L, -6091371644207785042L}).toString());
                        return;
                    } catch (Exception e) {
                        com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{-6501409094347653141L, 5672551756915971522L, 4113217760190656243L, -2862352879037564839L, -419116822007121652L}).toString(), e);
                        return;
                    }
                }
                return;
            }
            zzj();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzh(zzcjk zzcjkVar) {
        this.zzc.add(zzcjkVar);
        this.zza.zzd(zzcjkVar);
    }

    public final void zzi(Object obj) {
        this.zzj = new WeakReference(obj);
    }

    public final synchronized void zzj() {
        zzk();
        this.zzi = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdbr
    public final synchronized void zzq() {
        if (this.zzg.compareAndSet(false, true)) {
            this.zza.zzc(this);
            zzg();
        }
    }
}
