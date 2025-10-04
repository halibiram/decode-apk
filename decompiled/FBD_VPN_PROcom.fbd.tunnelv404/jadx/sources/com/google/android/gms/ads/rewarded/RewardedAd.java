package com.google.android.gms.ads.rewarded;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzcaw;
import com.google.android.gms.internal.ads.zzcdr;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class RewardedAd {
    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdRequest adRequest, @NonNull final RewardedAdLoadCallback rewardedAdLoadCallback) {
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{-6311590675680208664L, 19868071401679974L, -3522172266064191538L, -1922844895639923758L}).toString());
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{776928750522115074L, -7119076677906152412L, -2708337185089600984L, -2614011039726030680L}).toString());
        Preconditions.checkNotNull(adRequest, new ObfuscatedString(new long[]{-8618836421604203493L, -3351760428835353802L, 5246193344485294264L, 24051405683326199L, 8075959153899307148L}).toString());
        Preconditions.checkNotNull(rewardedAdLoadCallback, new ObfuscatedString(new long[]{-3109176770066850869L, -2909031447366146917L, -5149741031931548869L, 7967707854146015991L, 9077430815606815207L}).toString());
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{604543046301140521L, 4335958063086426559L, 4693827356690658054L, -8489329877031035246L, -484425108023296689L, -302565784079558725L, -5722269322564853066L}).toString());
        zzbgc.zza(context);
        if (((Boolean) zzbhy.zzl.zze()).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                zzcdr.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.rewarded.zzc
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdRequest adRequest2 = adRequest;
                        try {
                            new zzcaw(context2, str2).zza(adRequest2.zza(), rewardedAdLoadCallback);
                        } catch (IllegalStateException e) {
                            zzbxw.zza(context2).zzg(e, new ObfuscatedString(new long[]{-8508046879222672323L, 8489597961442444934L, -7812856420662029177L}).toString());
                        }
                    }
                });
                return;
            }
        }
        zzcec.zze(new ObfuscatedString(new long[]{8655006198786937926L, 3613278921065259759L, -8990767886110262046L, 8114396031007225826L}).toString());
        new zzcaw(context, str).zza(adRequest.zza(), rewardedAdLoadCallback);
    }

    @NonNull
    public abstract Bundle getAdMetadata();

    @NonNull
    public abstract String getAdUnitId();

    @Nullable
    public abstract FullScreenContentCallback getFullScreenContentCallback();

    @Nullable
    public abstract OnAdMetadataChangedListener getOnAdMetadataChangedListener();

    @Nullable
    public abstract OnPaidEventListener getOnPaidEventListener();

    @NonNull
    public abstract ResponseInfo getResponseInfo();

    @NonNull
    public abstract RewardItem getRewardItem();

    public abstract void setFullScreenContentCallback(@Nullable FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z);

    public abstract void setOnAdMetadataChangedListener(@Nullable OnAdMetadataChangedListener onAdMetadataChangedListener);

    public abstract void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener);

    public abstract void setServerSideVerificationOptions(@Nullable ServerSideVerificationOptions serverSideVerificationOptions);

    public abstract void show(@NonNull Activity activity, @NonNull OnUserEarnedRewardListener onUserEarnedRewardListener);

    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdManagerAdRequest adManagerAdRequest, @NonNull final RewardedAdLoadCallback rewardedAdLoadCallback) {
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{-4842360510256289436L, -5822271676709308642L, 2034472878744904550L, -3863309696935051353L}).toString());
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{5051525762272499753L, -6792388881434846175L, -5608906623815734968L, 8675195146725803351L}).toString());
        Preconditions.checkNotNull(adManagerAdRequest, new ObfuscatedString(new long[]{2488483765000641052L, 925734589498182040L, -8454156431445548432L, 6810375113187479600L, -6080665026368683566L, -8410931469113455229L}).toString());
        Preconditions.checkNotNull(rewardedAdLoadCallback, new ObfuscatedString(new long[]{-6613321017121038390L, -6471894193245290324L, 1396460050918263192L, 894033873138753519L, -207466463785520883L}).toString());
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{5826534570491663995L, -2891885101847302031L, -1917506896423224200L, -3596613214811837217L, -5453251791395157135L, 2593797261778335036L, -2643533023970021146L}).toString());
        zzbgc.zza(context);
        if (((Boolean) zzbhy.zzl.zze()).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                zzcec.zze(new ObfuscatedString(new long[]{-5200205948753953301L, -2571111634595140005L, 1267109192840698829L, -3535596988148653346L, 8205573937232618551L}).toString());
                zzcdr.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.rewarded.zzb
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdManagerAdRequest adManagerAdRequest2 = adManagerAdRequest;
                        try {
                            new zzcaw(context2, str2).zza(adManagerAdRequest2.zza(), rewardedAdLoadCallback);
                        } catch (IllegalStateException e) {
                            zzbxw.zza(context2).zzg(e, new ObfuscatedString(new long[]{3819174164814047519L, 1530269345185133058L, 74183987601163089L, -4288640418491064754L}).toString());
                        }
                    }
                });
                return;
            }
        }
        zzcec.zze(new ObfuscatedString(new long[]{8833709907450151452L, -953121180964585601L, -3318142920273908664L, -430357651079594578L}).toString());
        new zzcaw(context, str).zza(adManagerAdRequest.zza(), rewardedAdLoadCallback);
    }
}
