package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.ExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzaf<T> implements zzae<T> {
    private final Object zza = new Object();
    private final int zzb;
    private final zzw zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private Exception zzg;
    private boolean zzh;

    public zzaf(int i, zzw zzwVar) {
        this.zzb = i;
        this.zzc = zzwVar;
    }

    private final void zza() {
        if (this.zzd + this.zze + this.zzf == this.zzb) {
            if (this.zzg != null) {
                zzw zzwVar = this.zzc;
                int i = this.zze;
                int i2 = this.zzb;
                StringBuilder m3340x952a0a9e = AbstractC0749x8313616e.m3340x952a0a9e(i);
                m3340x952a0a9e.append(new ObfuscatedString(new long[]{-4430959430862617254L, -6653244897704911752L}).toString());
                m3340x952a0a9e.append(i2);
                zzwVar.zza(new ExecutionException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{483416754918309662L, 575087763717132413L, 8375362661969578597L, -5156963076548959133L}), m3340x952a0a9e), this.zzg));
                return;
            }
            if (this.zzh) {
                this.zzc.zzc();
            } else {
                this.zzc.zzb(null);
            }
        }
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        synchronized (this.zza) {
            this.zzf++;
            this.zzh = true;
            zza();
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(@NonNull Exception exc) {
        synchronized (this.zza) {
            this.zze++;
            this.zzg = exc;
            zza();
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(T t) {
        synchronized (this.zza) {
            this.zzd++;
            zza();
        }
    }
}
