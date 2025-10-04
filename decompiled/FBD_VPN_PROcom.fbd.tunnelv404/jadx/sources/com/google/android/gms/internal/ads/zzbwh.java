package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbwh implements NativeCustomFormatAd {
    private final zzbkg zza;
    private NativeCustomFormatAd.DisplayOpenMeasurement zzb;

    @VisibleForTesting
    public zzbwh(zzbkg zzbkgVar) {
        this.zza = zzbkgVar;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void destroy() {
        try {
            this.zza.zzl();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1320399705683585694L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    @Nullable
    public final List<String> getAvailableAssetNames() {
        try {
            return this.zza.zzk();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-6112643533093617468L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    @Nullable
    public final String getCustomFormatId() {
        try {
            return this.zza.zzi();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{2922859713330115565L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final NativeCustomFormatAd.DisplayOpenMeasurement getDisplayOpenMeasurement() {
        try {
            if (this.zzb == null && this.zza.zzq()) {
                this.zzb = new zzbvz(this.zza);
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{2175114571628252769L}).toString(), e);
        }
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    @Nullable
    public final NativeAd.Image getImage(String str) {
        try {
            zzbjm zzg = this.zza.zzg(str);
            if (zzg != null) {
                return new zzbwa(zzg);
            }
            return null;
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{4325210031299395415L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    @Nullable
    public final MediaContent getMediaContent() {
        try {
            if (this.zza.zzf() != null) {
                return new com.google.android.gms.ads.internal.client.zzep(this.zza.zzf(), this.zza);
            }
            return null;
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2935804906864629153L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    @Nullable
    public final CharSequence getText(String str) {
        try {
            return this.zza.zzj(str);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{1821308681355161943L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void performClick(String str) {
        try {
            this.zza.zzn(str);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-8409190628409933082L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void recordImpression() {
        try {
            this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{2720650664434390651L}).toString(), e);
        }
    }
}
