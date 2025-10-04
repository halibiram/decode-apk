package com.google.android.gms.ads.admanager;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbu;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzcdr;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class AdManagerAdView extends BaseAdView {
    public AdManagerAdView(@NonNull Context context) {
        super(context, 0);
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{1692538128856451105L, 5318081294519551646L, -5932668856766204150L, 3114399914868706747L}).toString());
    }

    @Nullable
    public AdSize[] getAdSizes() {
        return this.zza.zzB();
    }

    @Nullable
    public AppEventListener getAppEventListener() {
        return this.zza.zzh();
    }

    @NonNull
    public VideoController getVideoController() {
        return this.zza.zzf();
    }

    @Nullable
    public VideoOptions getVideoOptions() {
        return this.zza.zzg();
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(@NonNull final AdManagerAdRequest adManagerAdRequest) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{6755885511969830219L, -4570681842408906197L, -4074756361282572452L, 4361970307460987702L, -4084862803101860257L, -4907190113019373430L, 1611147740312506256L}).toString());
        zzbgc.zza(getContext());
        if (((Boolean) zzbhy.zzf.zze()).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                zzcdr.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.admanager.zzb
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdManagerAdView.this.zza(adManagerAdRequest);
                    }
                });
                return;
            }
        }
        this.zza.zzm(adManagerAdRequest.zza());
    }

    public void recordManualImpression() {
        this.zza.zzo();
    }

    public void setAdSizes(@NonNull AdSize... adSizeArr) {
        if (adSizeArr != null && adSizeArr.length > 0) {
            this.zza.zzt(adSizeArr);
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7511755533978496222L, -1491813868519980678L, 5341264591376185567L, -6701019869584655205L, 7726790595892724677L, -2923471180213165443L, 2332124777238988205L, -2657124610523296159L, 6112389830122160481L}).toString());
    }

    public void setAppEventListener(@Nullable AppEventListener appEventListener) {
        this.zza.zzv(appEventListener);
    }

    public void setManualImpressionsEnabled(boolean z) {
        this.zza.zzw(z);
    }

    public void setVideoOptions(@NonNull VideoOptions videoOptions) {
        this.zza.zzy(videoOptions);
    }

    public final /* synthetic */ void zza(AdManagerAdRequest adManagerAdRequest) {
        try {
            this.zza.zzm(adManagerAdRequest.zza());
        } catch (IllegalStateException e) {
            zzbxw.zza(getContext()).zzg(e, new ObfuscatedString(new long[]{5294241355296815065L, -995633768139225649L, -1793790958385800436L, -4281550385397534942L}).toString());
        }
    }

    public final boolean zzb(zzbu zzbuVar) {
        return this.zza.zzz(zzbuVar);
    }

    public AdManagerAdView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet, true);
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{4408985075397377973L, 4983187625562166631L, 2669556847619261374L, -6531459582343546401L}).toString());
    }

    public AdManagerAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0, true);
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{-4022588265144588187L, 1115351905771368218L, -5246855637505211161L, -2152100994183197830L}).toString());
    }
}
