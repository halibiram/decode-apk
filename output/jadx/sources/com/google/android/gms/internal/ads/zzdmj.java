package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzdmj extends zzbji {
    private final zzdna zza;
    private IObjectWrapper zzb;

    public zzdmj(zzdna zzdnaVar) {
        this.zza = zzdnaVar;
    }

    private static float zzb(IObjectWrapper iObjectWrapper) {
        Drawable drawable;
        if (iObjectWrapper != null && (drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapper)) != null && drawable.getIntrinsicWidth() != -1 && drawable.getIntrinsicHeight() != -1) {
            return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final float zze() {
        float f;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgm)).booleanValue()) {
            return 0.0f;
        }
        if (this.zza.zzb() != 0.0f) {
            return this.zza.zzb();
        }
        if (this.zza.zzj() != null) {
            try {
                return this.zza.zzj().zze();
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{2062753159894548372L, 3526682318085581873L, 3496281402888509762L, -8412531068834963770L, -7064421272229510803L, -699638375506358903L, 7300435124566671396L, 3774828090730028545L}).toString(), e);
                return 0.0f;
            }
        }
        IObjectWrapper iObjectWrapper = this.zzb;
        if (iObjectWrapper != null) {
            return zzb(iObjectWrapper);
        }
        zzbjm zzm = this.zza.zzm();
        if (zzm == null) {
            return 0.0f;
        }
        if (zzm.zzd() != -1 && zzm.zzc() != -1) {
            f = zzm.zzd() / zzm.zzc();
        } else {
            f = 0.0f;
        }
        if (f == 0.0f) {
            return zzb(zzm.zzf());
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final float zzf() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgn)).booleanValue() && this.zza.zzj() != null) {
            return this.zza.zzj().zzf();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final float zzg() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgn)).booleanValue() && this.zza.zzj() != null) {
            return this.zza.zzj().zzg();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdq zzh() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgn)).booleanValue()) {
            return null;
        }
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    @Nullable
    public final IObjectWrapper zzi() {
        IObjectWrapper iObjectWrapper = this.zzb;
        if (iObjectWrapper != null) {
            return iObjectWrapper;
        }
        zzbjm zzm = this.zza.zzm();
        if (zzm == null) {
            return null;
        }
        return zzm.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final void zzj(IObjectWrapper iObjectWrapper) {
        this.zzb = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final boolean zzk() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgn)).booleanValue()) {
            return false;
        }
        return this.zza.zzaf();
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final boolean zzl() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgn)).booleanValue() || this.zza.zzj() == null) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final void zzm(zzbku zzbkuVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgn)).booleanValue() && (this.zza.zzj() instanceof zzcki)) {
            ((zzcki) this.zza.zzj()).zzv(zzbkuVar);
        }
    }
}
