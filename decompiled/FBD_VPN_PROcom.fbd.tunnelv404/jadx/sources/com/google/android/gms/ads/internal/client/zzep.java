package com.google.android.gms.ads.internal.client;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzbkg;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzep implements MediaContent {
    private final zzbjj zza;
    private final VideoController zzb = new VideoController();

    @Nullable
    private final zzbkg zzc;

    public zzep(zzbjj zzbjjVar, @Nullable zzbkg zzbkgVar) {
        this.zza = zzbjjVar;
        this.zzc = zzbkgVar;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getAspectRatio() {
        try {
            return this.zza.zze();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-6071775506300983138L}).toString(), e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getCurrentTime() {
        try {
            return this.zza.zzf();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{3641515359808488163L}).toString(), e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getDuration() {
        try {
            return this.zza.zzg();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1524032207732934194L}).toString(), e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    @Nullable
    public final Drawable getMainImage() {
        try {
            IObjectWrapper zzi = this.zza.zzi();
            if (zzi != null) {
                return (Drawable) ObjectWrapper.unwrap(zzi);
            }
            return null;
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{3488101100522612132L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final VideoController getVideoController() {
        try {
            if (this.zza.zzh() != null) {
                this.zzb.zzb(this.zza.zzh());
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{1413177377134230786L, -1099008879088190313L, -1338709193218322109L, 5052119637233708228L, -8351961128545873596L, 148113528607213317L, -2483983007564813032L, 175701786078783087L}).toString(), e);
        }
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final boolean hasVideoContent() {
        try {
            return this.zza.zzl();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-7455403527350083475L}).toString(), e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final void setMainImage(@Nullable Drawable drawable) {
        try {
            this.zza.zzj(ObjectWrapper.wrap(drawable));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{686713095150553076L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    @Nullable
    public final zzbkg zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final boolean zzb() {
        try {
            return this.zza.zzk();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4017063166737663130L}).toString(), e);
            return false;
        }
    }

    public final zzbjj zzc() {
        return this.zza;
    }
}
