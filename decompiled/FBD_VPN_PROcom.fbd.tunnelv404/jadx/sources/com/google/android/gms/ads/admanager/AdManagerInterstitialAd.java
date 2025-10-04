package com.google.android.gms.ads.admanager;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbpz;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzcdr;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class AdManagerInterstitialAd extends InterstitialAd {
    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdManagerAdRequest adManagerAdRequest, @NonNull final AdManagerInterstitialAdLoadCallback adManagerInterstitialAdLoadCallback) {
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{1610594543783217514L, 1167368026673606501L, -577111682242488845L, 1874418971429926144L}).toString());
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{-8181391427696314893L, -1417389952739256935L, -1075012540580138254L, -5533698921243324350L}).toString());
        Preconditions.checkNotNull(adManagerAdRequest, new ObfuscatedString(new long[]{1069123126873048808L, 2654079202531227989L, -7235620824062723890L, -3516887499158389669L, 3164194415859810159L, 9208929254845111617L}).toString());
        Preconditions.checkNotNull(adManagerInterstitialAdLoadCallback, new ObfuscatedString(new long[]{4772590474183972962L, -3367542699155530832L, -367007304745724295L, 5925801763843757234L, 7379920278129374670L}).toString());
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{6344529983580747684L, 2449688352293549221L, 2399760368193806309L, 6574651774456659852L, 4897243330554894751L, 2941603585894597461L, -9043118452440511349L}).toString());
        zzbgc.zza(context);
        if (((Boolean) zzbhy.zzi.zze()).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                zzcdr.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.admanager.zzc
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdManagerAdRequest adManagerAdRequest2 = adManagerAdRequest;
                        try {
                            new zzbpz(context2, str2).zza(adManagerAdRequest2.zza(), adManagerInterstitialAdLoadCallback);
                        } catch (IllegalStateException e) {
                            zzbxw.zza(context2).zzg(e, new ObfuscatedString(new long[]{-8350992256062926016L, 7732724397489482734L, 3968114815980384778L, -2619571764442404496L, 8887312173375154061L}).toString());
                        }
                    }
                });
                return;
            }
        }
        new zzbpz(context, str).zza(adManagerAdRequest.zza(), adManagerInterstitialAdLoadCallback);
    }

    @Nullable
    public abstract AppEventListener getAppEventListener();

    public abstract void setAppEventListener(@Nullable AppEventListener appEventListener);
}
