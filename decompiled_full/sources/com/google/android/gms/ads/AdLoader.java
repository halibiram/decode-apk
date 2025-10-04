package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbn;
import com.google.android.gms.ads.internal.client.zzbq;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzeu;
import com.google.android.gms.ads.internal.client.zzfk;
import com.google.android.gms.ads.internal.client.zzp;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbjb;
import com.google.android.gms.internal.ads.zzblr;
import com.google.android.gms.internal.ads.zzblt;
import com.google.android.gms.internal.ads.zzblu;
import com.google.android.gms.internal.ads.zzbsr;
import com.google.android.gms.internal.ads.zzbwg;
import com.google.android.gms.internal.ads.zzbwi;
import com.google.android.gms.internal.ads.zzcdr;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public class AdLoader {
    private final zzp zza;
    private final Context zzb;
    private final zzbn zzc;

    /* loaded from: classes2.dex */
    public static class Builder {
        private final Context zza;
        private final zzbq zzb;

        public Builder(@NonNull Context context, @NonNull String str) {
            Context context2 = (Context) Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{2663732328570257347L, -3093205155129788269L, 7599885780598994778L, 7814444494697336874L}).toString());
            zzbq zzc = zzay.zza().zzc(context, str, new zzbsr());
            this.zza = context2;
            this.zzb = zzc;
        }

        @NonNull
        public AdLoader build() {
            try {
                return new AdLoader(this.zza, this.zzb.zze(), zzp.zza);
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{8499515886533901732L, 8067287576091161901L, 1347999801582032029L, 6659847690345884089L, 6979911767898105579L}).toString(), e);
                return new AdLoader(this.zza, new zzeu().zzc(), zzp.zza);
            }
        }

        @NonNull
        public Builder forAdManagerAdView(@NonNull OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener, @NonNull AdSize... adSizeArr) {
            if (adSizeArr != null && adSizeArr.length > 0) {
                try {
                    this.zzb.zzj(new zzblt(onAdManagerAdViewLoadedListener), new zzq(this.zza, adSizeArr));
                } catch (RemoteException e) {
                    zzcec.zzk(new ObfuscatedString(new long[]{-106153893462562558L, 5593885336234387497L, -2057897724343820808L, 4289827339538441835L, -2677858249463016840L, 8629487495817719043L, -1673086102998784121L, 4367999758169621219L}).toString(), e);
                }
                return this;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{7760203343072650533L, 2759009541812339340L, -652871387009988021L, -3146276479009115073L, -1534938397883112416L, 3870288697644042009L, 8545094328822116720L, 6919793495079020083L, 1593303056787287700L}).toString());
        }

        @NonNull
        public Builder forCustomFormatAd(@NonNull String str, @NonNull NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, @Nullable NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
            zzbwg zzbwgVar = new zzbwg(onCustomFormatAdLoadedListener, onCustomClickListener);
            try {
                this.zzb.zzh(str, zzbwgVar.zzb(), zzbwgVar.zza());
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{3283553112936772317L, -2845561241010296496L, -8049655594571102065L, -838374434553101913L, -7098276092191104511L, -1819474547300743422L}).toString(), e);
            }
            return this;
        }

        @NonNull
        public Builder forNativeAd(@NonNull NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.zzb.zzk(new zzbwi(onNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{5880167811561825094L, -7103685594591134452L, -7579470797383590281L, 6635651383039484910L, 7410967874980647408L, -898175067520080862L}).toString(), e);
            }
            return this;
        }

        @NonNull
        public Builder withAdListener(@NonNull AdListener adListener) {
            try {
                this.zzb.zzl(new com.google.android.gms.ads.internal.client.zzg(adListener));
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-1944062393931034515L, -7648134206650805633L, 6859318406102253826L, -7850313224809943729L, -4245986489593086955L}).toString(), e);
            }
            return this;
        }

        @NonNull
        public Builder withAdManagerAdViewOptions(@NonNull AdManagerAdViewOptions adManagerAdViewOptions) {
            try {
                this.zzb.zzm(adManagerAdViewOptions);
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-5457473871383496913L, -2187912001212550428L, 6679286800740702081L, 740163365189014500L, -5106028862307481927L, -6757280024186028078L, 6532884278676332180L}).toString(), e);
            }
            return this;
        }

        @NonNull
        public Builder withNativeAdOptions(@NonNull NativeAdOptions nativeAdOptions) {
            zzfk zzfkVar;
            try {
                zzbq zzbqVar = this.zzb;
                boolean shouldReturnUrlsForImageAssets = nativeAdOptions.shouldReturnUrlsForImageAssets();
                boolean shouldRequestMultipleImages = nativeAdOptions.shouldRequestMultipleImages();
                int adChoicesPlacement = nativeAdOptions.getAdChoicesPlacement();
                if (nativeAdOptions.getVideoOptions() != null) {
                    zzfkVar = new zzfk(nativeAdOptions.getVideoOptions());
                } else {
                    zzfkVar = null;
                }
                zzbqVar.zzo(new zzbjb(4, shouldReturnUrlsForImageAssets, -1, shouldRequestMultipleImages, adChoicesPlacement, zzfkVar, nativeAdOptions.zzc(), nativeAdOptions.getMediaAspectRatio(), nativeAdOptions.zza(), nativeAdOptions.zzb(), nativeAdOptions.zzd() - 1));
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{5411998833789131625L, 8966235629516388115L, 2344684555127820338L, -4355955402593062800L, 1180389417183128004L, 1653601469368904593L}).toString(), e);
            }
            return this;
        }

        @Deprecated
        public final Builder zza(String str, com.google.android.gms.ads.formats.zzg zzgVar, @Nullable com.google.android.gms.ads.formats.zzf zzfVar) {
            zzblr zzblrVar = new zzblr(zzgVar, zzfVar);
            try {
                this.zzb.zzh(str, zzblrVar.zzd(), zzblrVar.zzc());
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{7380469279449157106L, 417339980099350440L, 3776859067417196139L, 6705526824623263702L, -5380191006501802168L, -1657919424833396436L, -910097793476779961L}).toString(), e);
            }
            return this;
        }

        @Deprecated
        public final Builder zzb(com.google.android.gms.ads.formats.zzi zziVar) {
            try {
                this.zzb.zzk(new zzblu(zziVar));
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{7696283444195499915L, -7405083527324421185L, -2360298051784196060L, -3681978070443447529L, 1146138978183171561L, -2017508970039179887L}).toString(), e);
            }
            return this;
        }

        @NonNull
        @Deprecated
        public final Builder zzc(@NonNull com.google.android.gms.ads.formats.NativeAdOptions nativeAdOptions) {
            try {
                this.zzb.zzo(new zzbjb(nativeAdOptions));
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-419287726414119571L, -5758461862100925022L, -97416843269608027L, 4974947432534448681L, -8044706374603014090L, 4238531465549614509L}).toString(), e);
            }
            return this;
        }
    }

    public AdLoader(Context context, zzbn zzbnVar, zzp zzpVar) {
        this.zzb = context;
        this.zzc = zzbnVar;
        this.zza = zzpVar;
    }

    private final void zzb(final zzdx zzdxVar) {
        zzbgc.zza(this.zzb);
        if (((Boolean) zzbhy.zzc.zze()).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                zzcdr.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdLoader.this.zza(zzdxVar);
                    }
                });
                return;
            }
        }
        try {
            this.zzc.zzg(this.zza.zza(this.zzb, zzdxVar));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-3204198135167854439L, -3919308367046845892L, -4925408241593989771L, 5234899547481769011L}).toString(), e);
        }
    }

    public boolean isLoading() {
        try {
            return this.zzc.zzi();
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-2406218612775843068L, 5624292437580750423L, -4962368770981050279L, -6081688237790220078L, -2582758586232243594L, 2591573910556443491L}).toString(), e);
            return false;
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(@NonNull AdRequest adRequest) {
        zzb(adRequest.zza);
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAds(@NonNull AdRequest adRequest, int i) {
        try {
            this.zzc.zzh(this.zza.zza(this.zzb, adRequest.zza), i);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{8326001347836342143L, -6701359295370939449L, 1434060731582806083L, 1928097896551291887L}).toString(), e);
        }
    }

    public final /* synthetic */ void zza(zzdx zzdxVar) {
        try {
            this.zzc.zzg(this.zza.zza(this.zzb, zzdxVar));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{54958566297117677L, -6761377162895117140L, -6305629635773563850L, 4858910606910331623L}).toString(), e);
        }
    }

    public void loadAd(@NonNull AdManagerAdRequest adManagerAdRequest) {
        zzb(adManagerAdRequest.zza);
    }
}
