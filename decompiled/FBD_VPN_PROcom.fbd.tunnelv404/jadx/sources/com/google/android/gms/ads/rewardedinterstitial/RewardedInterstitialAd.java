package com.google.android.gms.ads.rewardedinterstitial;

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
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzcbh;
import com.google.android.gms.internal.ads.zzcdr;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class RewardedInterstitialAd {
    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdRequest adRequest, @NonNull final RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{2819871824741099952L, -3183640964756795139L, 6553003997903158079L, -5230791570650974596L}).toString());
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{856790268476280017L, -4851635724076960716L, -928026731405987231L, -5280517297747612126L}).toString());
        Preconditions.checkNotNull(adRequest, new ObfuscatedString(new long[]{5315119724041079911L, 8706289830492336955L, -8942256045331219494L, 2921319535424640634L, -1726453555462251167L}).toString());
        Preconditions.checkNotNull(rewardedInterstitialAdLoadCallback, new ObfuscatedString(new long[]{5146214916891699592L, -637951536468196844L, 3903757543850971531L, 5496014672724362702L, -1783915265310148741L}).toString());
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6945825168334257658L, -8787488929065544344L, -7366348011550829381L, 131839025430590675L, 8977565786392941641L, -3911055980082194056L, 4071953302617192453L}).toString());
        zzbgc.zza(context);
        if (((Boolean) zzbhy.zzl.zze()).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                zzcdr.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.rewardedinterstitial.zzb
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdRequest adRequest2 = adRequest;
                        try {
                            new zzcbh(context2, str2).zza(adRequest2.zza(), rewardedInterstitialAdLoadCallback);
                        } catch (IllegalStateException e) {
                            zzbxw.zza(context2).zzg(e, new ObfuscatedString(new long[]{7955939231876299824L, -6132151875313064288L, -2726577434304093682L, 7158985998629111195L, -7736644262947181632L}).toString());
                        }
                    }
                });
                return;
            }
        }
        new zzcbh(context, str).zza(adRequest.zza(), rewardedInterstitialAdLoadCallback);
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

    public abstract void setServerSideVerificationOptions(@NonNull ServerSideVerificationOptions serverSideVerificationOptions);

    public abstract void show(@NonNull Activity activity, @NonNull OnUserEarnedRewardListener onUserEarnedRewardListener);

    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdManagerAdRequest adManagerAdRequest, @NonNull final RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{5709676292581208092L, 6887391458689693857L, -4248543230742438304L, -5854472634881800868L}).toString());
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{1758373016633007488L, -4514373521848651118L, 5818876480551993127L, -2925434804375635865L}).toString());
        Preconditions.checkNotNull(adManagerAdRequest, new ObfuscatedString(new long[]{5998431291544411111L, 2807251615307228602L, -5750565678514886476L, -1661201971027113161L, -685948204375020924L, -1379351011945076237L}).toString());
        Preconditions.checkNotNull(rewardedInterstitialAdLoadCallback, new ObfuscatedString(new long[]{4394862865457495318L, -95083908397220008L, -6483287135698923082L, 4276929960776339353L, -4142725604217032532L}).toString());
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{3524765883313036737L, 7756467276873527260L, 8944205917619545252L, 8119815135993440L, 254578231579805733L, 332835076916150610L, 4261398835680907920L}).toString());
        zzbgc.zza(context);
        if (((Boolean) zzbhy.zzl.zze()).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                zzcdr.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.rewardedinterstitial.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdManagerAdRequest adManagerAdRequest2 = adManagerAdRequest;
                        try {
                            new zzcbh(context2, str2).zza(adManagerAdRequest2.zza(), rewardedInterstitialAdLoadCallback);
                        } catch (IllegalStateException e) {
                            zzbxw.zza(context2).zzg(e, new ObfuscatedString(new long[]{-8220832498050370993L, 7257666259443393333L, -8478573121046422662L, -8972023962183176076L, 3763958372674019843L, -4189730919278107988L}).toString());
                        }
                    }
                });
                return;
            }
        }
        new zzcbh(context, str).zza(adManagerAdRequest.zza(), rewardedInterstitialAdLoadCallback);
    }
}
