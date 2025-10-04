package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzeqe implements AppEventListener, zzdds, zzdcl, zzdba, zzdbr, com.google.android.gms.ads.internal.client.zza, zzdax, zzddi, zzdbn, zzdiu {

    @Nullable
    private final zzflw zzj;
    private final AtomicReference zzb = new AtomicReference();
    private final AtomicReference zzc = new AtomicReference();
    private final AtomicReference zzd = new AtomicReference();
    private final AtomicReference zze = new AtomicReference();
    private final AtomicReference zzf = new AtomicReference();
    private final AtomicBoolean zzg = new AtomicBoolean(true);
    private final AtomicBoolean zzh = new AtomicBoolean(false);
    private final AtomicBoolean zzi = new AtomicBoolean(false);

    @VisibleForTesting
    final BlockingQueue zza = new ArrayBlockingQueue(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziK)).intValue());

    public zzeqe(@Nullable zzflw zzflwVar) {
        this.zzj = zzflwVar;
    }

    private final void zzo() {
        if (this.zzh.get() && this.zzi.get()) {
            for (final Pair pair : this.zza) {
                zzfdr.zza(this.zzc, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepp
                    @Override // com.google.android.gms.internal.ads.zzfdq
                    public final void zza(Object obj) {
                        Pair pair2 = pair;
                        ((com.google.android.gms.ads.internal.client.zzcb) obj).zzc((String) pair2.first, (String) pair2.second);
                    }
                });
            }
            this.zza.clear();
            this.zzg.set(false);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkm)).booleanValue()) {
            zzfdr.zza(this.zzb, zzeqc.zza);
        }
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final synchronized void onAppEvent(final String str, final String str2) {
        if (this.zzg.get()) {
            if (!this.zza.offer(new Pair(str, str2))) {
                zzcec.zze(new ObfuscatedString(new long[]{5471358433448709756L, -8940649522779112809L, 1727399348829866015L, 7164035338615228055L, 8800351727413309896L, 2427203566606933457L, -4876803186222284346L, -3160973670633035950L, -2416343251899213378L}).toString());
                zzflw zzflwVar = this.zzj;
                if (zzflwVar != null) {
                    zzflv zzb = zzflv.zzb(new ObfuscatedString(new long[]{3903618679408732522L, 8713678878924636592L, 2544600710648842446L}).toString());
                    zzb.zza(new ObfuscatedString(new long[]{-2065315468787695359L, 4804988966722669430L}).toString(), str);
                    zzb.zza(new ObfuscatedString(new long[]{5980651787679009208L, -4686251317931678013L}).toString(), str2);
                    zzflwVar.zzb(zzb);
                    return;
                }
            }
            return;
        }
        zzfdr.zza(this.zzc, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepw
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzcb) obj).zzc(str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zza() {
        zzfdr.zza(this.zzb, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepm
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzd();
            }
        });
        zzfdr.zza(this.zzf, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepn
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzci) obj).zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzb() {
        zzfdr.zza(this.zzb, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepx
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzh();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzbB(zzbzu zzbzuVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final void zzbK(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfdr.zza(this.zzb, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepq
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzf(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        zzfdr.zza(this.zzb, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepr
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zze(com.google.android.gms.ads.internal.client.zze.this.zza);
            }
        });
        zzfdr.zza(this.zze, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzeps
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzb(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        this.zzg.set(false);
        this.zza.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzdiu
    public final void zzbo() {
        zzfdr.zza(this.zzb, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepy
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzk();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzbw(zzbze zzbzeVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzbx(zzfgy zzfgyVar) {
        this.zzg.set(true);
        this.zzi.set(false);
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzc() {
        zzfdr.zza(this.zzb, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepz
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzj();
            }
        });
        zzfdr.zza(this.zzf, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzeqa
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzci) obj).zzf();
            }
        });
        zzfdr.zza(this.zzf, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzeqb
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzci) obj).zze();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzf() {
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzbh zzg() {
        return (com.google.android.gms.ads.internal.client.zzbh) this.zzb.get();
    }

    @Override // com.google.android.gms.internal.ads.zzddi
    public final void zzh(@NonNull final com.google.android.gms.ads.internal.client.zzs zzsVar) {
        zzfdr.zza(this.zzd, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzeqd
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzdg) obj).zze(com.google.android.gms.ads.internal.client.zzs.this);
            }
        });
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzcb zzi() {
        return (com.google.android.gms.ads.internal.client.zzcb) this.zzc.get();
    }

    public final void zzj(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        this.zzb.set(zzbhVar);
    }

    public final void zzk(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        this.zze.set(zzbkVar);
    }

    public final void zzl(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.zzd.set(zzdgVar);
    }

    public final void zzm(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        this.zzc.set(zzcbVar);
        this.zzh.set(true);
        zzo();
    }

    public final void zzn(com.google.android.gms.ads.internal.client.zzci zzciVar) {
        this.zzf.set(zzciVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbn
    public final void zzp(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfdr.zza(this.zzf, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepv
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzci) obj).zzd(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbr
    public final void zzq() {
        zzfdr.zza(this.zzb, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepl
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzg();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdcl
    public final synchronized void zzr() {
        zzfdr.zza(this.zzb, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzept
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzi();
            }
        });
        zzfdr.zza(this.zze, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepu
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzc();
            }
        });
        this.zzi.set(true);
        zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzdiu
    public final void zzs() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkm)).booleanValue()) {
            zzfdr.zza(this.zzb, zzeqc.zza);
        }
        zzfdr.zza(this.zzf, new zzfdq() { // from class: com.google.android.gms.internal.ads.zzepo
            @Override // com.google.android.gms.internal.ads.zzfdq
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzci) obj).zzb();
            }
        });
    }
}
