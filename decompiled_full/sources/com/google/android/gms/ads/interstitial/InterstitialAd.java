package com.google.android.gms.ads.interstitial;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbpz;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzcdr;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class InterstitialAd {
    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdRequest adRequest, @NonNull final InterstitialAdLoadCallback interstitialAdLoadCallback) {
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{4698644554026719701L, -8712352175228651298L, 959238481292815126L, 7367453380257322806L}).toString());
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{5644150778094440602L, -1303806633579354917L, 2564082936235055046L, -6865492263770503070L}).toString());
        Preconditions.checkNotNull(adRequest, new ObfuscatedString(new long[]{8019376352799016984L, 7096315214256993724L, -435515715821589127L, -1401621440452030164L, -6872021213567807682L}).toString());
        Preconditions.checkNotNull(interstitialAdLoadCallback, new ObfuscatedString(new long[]{-1305372548791987517L, -347482183189863506L, 1801580765679532816L, -3563997954225329844L, 7579000120988692772L}).toString());
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{873920053938234762L, -6040959876550732962L, 849117728492218564L, 3266453204136725861L, 8909401478562800595L, -4850220753404529578L, -3221462318080119721L}).toString());
        zzbgc.zza(context);
        if (((Boolean) zzbhy.zzi.zze()).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                zzcdr.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.interstitial.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdRequest adRequest2 = adRequest;
                        try {
                            new zzbpz(context2, str2).zza(adRequest2.zza(), interstitialAdLoadCallback);
                        } catch (IllegalStateException e) {
                            zzbxw.zza(context2).zzg(e, new ObfuscatedString(new long[]{1435274136408959508L, -1921934391316341823L, -8845924236906490547L, -210669610808898509L}).toString());
                        }
                    }
                });
                return;
            }
        }
        new zzbpz(context, str).zza(adRequest.zza(), interstitialAdLoadCallback);
    }

    @NonNull
    public abstract String getAdUnitId();

    @Nullable
    public abstract FullScreenContentCallback getFullScreenContentCallback();

    @Nullable
    public abstract OnPaidEventListener getOnPaidEventListener();

    @NonNull
    public abstract ResponseInfo getResponseInfo();

    public abstract void setFullScreenContentCallback(@Nullable FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z);

    public abstract void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener);

    public abstract void show(@NonNull Activity activity);
}
