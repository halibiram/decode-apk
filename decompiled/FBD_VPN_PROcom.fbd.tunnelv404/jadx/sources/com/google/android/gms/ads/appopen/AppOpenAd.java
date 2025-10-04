package com.google.android.gms.ads.appopen;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzcdr;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class AppOpenAd {
    public static final int APP_OPEN_AD_ORIENTATION_LANDSCAPE = 2;
    public static final int APP_OPEN_AD_ORIENTATION_PORTRAIT = 1;

    /* loaded from: classes2.dex */
    public static abstract class AppOpenAdLoadCallback extends AdLoadCallback<AppOpenAd> {
    }

    /* loaded from: classes2.dex */
    public @interface AppOpenAdOrientation {
    }

    @Deprecated
    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdRequest adRequest, @AppOpenAdOrientation final int i, @NonNull final AppOpenAdLoadCallback appOpenAdLoadCallback) {
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{490982459849442008L, -5254768937872185257L, 611636471973262714L, -4798037200236919542L}).toString());
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{4768603396798933046L, 2621470606537281955L, -5010923394949053932L, 5054525147478766839L}).toString());
        Preconditions.checkNotNull(adRequest, new ObfuscatedString(new long[]{4060173324215206536L, -7299985820802167526L, 5596389352961484905L, 3827571528462186799L, 4799212008628138794L}).toString());
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6959011984950967901L, -8270894785984369980L, -8559748534760654157L, -1947050735960126301L, 1325031955879996489L, 622479011049293386L, 197961532736863200L}).toString());
        zzbgc.zza(context);
        if (((Boolean) zzbhy.zzd.zze()).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                zzcdr.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.appopen.zzb
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        int i2 = i;
                        String str2 = str;
                        AdRequest adRequest2 = adRequest;
                        try {
                            new zzbar(context2, str2, adRequest2.zza(), i2, appOpenAdLoadCallback).zza();
                        } catch (IllegalStateException e) {
                            zzbxw.zza(context2).zzg(e, new ObfuscatedString(new long[]{1335692559034160647L, -2258429827975802868L, 2141584977851395681L}).toString());
                        }
                    }
                });
                return;
            }
        }
        new zzbar(context, str, adRequest.zza(), i, appOpenAdLoadCallback).zza();
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

    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdRequest adRequest, @NonNull final AppOpenAdLoadCallback appOpenAdLoadCallback) {
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{-3044368055820858029L, -8834156049629336909L, 37828176201095443L, -2956620979243896613L}).toString());
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{-8658535264564880607L, 4698925820935020611L, -5779562584251118754L, -7395726456987031616L}).toString());
        Preconditions.checkNotNull(adRequest, new ObfuscatedString(new long[]{1836536065047124555L, 1900023218695374198L, 529458167590557733L, 5614197774992252508L, -3268008768026169547L}).toString());
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-1002730463216977939L, -6514307948563437048L, -7610566680267684794L, -3863615259648114421L, -7393754091652850323L, 4031605132875236902L, -8632475361279323545L}).toString());
        zzbgc.zza(context);
        if (((Boolean) zzbhy.zzd.zze()).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                zzcdr.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.appopen.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdRequest adRequest2 = adRequest;
                        try {
                            new zzbar(context2, str2, adRequest2.zza(), 3, appOpenAdLoadCallback).zza();
                        } catch (IllegalStateException e) {
                            zzbxw.zza(context2).zzg(e, new ObfuscatedString(new long[]{568423775078648513L, 6922102144445280965L, 5525087895319696291L}).toString());
                        }
                    }
                });
                return;
            }
        }
        new zzbar(context, str, adRequest.zza(), 3, appOpenAdLoadCallback).zza();
    }

    @Deprecated
    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdManagerAdRequest adManagerAdRequest, @AppOpenAdOrientation final int i, @NonNull final AppOpenAdLoadCallback appOpenAdLoadCallback) {
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{4646537127263346412L, 7429078436175053557L, -5831499408763088748L, 6839854901309658696L}).toString());
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{-3552569513775922846L, -7077612013629305207L, -7462773621401679037L, 5564338953099493933L}).toString());
        Preconditions.checkNotNull(adManagerAdRequest, new ObfuscatedString(new long[]{-1405432132009338639L, 5254726480402015431L, -4472297426027246821L, -4569883975855066010L, 5023685609890646146L, -5163061081388100122L}).toString());
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{5893196320366292494L, -2954057835149421532L, 5758071675474070584L, 5800746853062379330L, 3178720337500674310L, -5391916697221694761L, -5072579191608178057L}).toString());
        zzbgc.zza(context);
        if (((Boolean) zzbhy.zzd.zze()).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                zzcdr.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.appopen.zzc
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        int i2 = i;
                        String str2 = str;
                        AdManagerAdRequest adManagerAdRequest2 = adManagerAdRequest;
                        try {
                            new zzbar(context2, str2, adManagerAdRequest2.zza(), i2, appOpenAdLoadCallback).zza();
                        } catch (IllegalStateException e) {
                            zzbxw.zza(context2).zzg(e, new ObfuscatedString(new long[]{-88285092882158738L, -2752357547374165867L, -7319188747794936880L, 7983578996188768405L}).toString());
                        }
                    }
                });
                return;
            }
        }
        new zzbar(context, str, adManagerAdRequest.zza(), i, appOpenAdLoadCallback).zza();
    }
}
