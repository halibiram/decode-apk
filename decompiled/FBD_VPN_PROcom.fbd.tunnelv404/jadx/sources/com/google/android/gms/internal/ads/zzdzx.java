package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzdzx extends com.google.android.gms.ads.internal.client.zzdi {

    @VisibleForTesting
    final Map zza = new HashMap();
    private final Context zzb;
    private final WeakReference zzc;
    private final zzdzl zzd;
    private final zzgey zze;
    private final zzdzy zzf;
    private zzdzd zzg;

    public zzdzx(Context context, WeakReference weakReference, zzdzl zzdzlVar, zzdzy zzdzyVar, zzgey zzgeyVar) {
        this.zzb = context;
        this.zzc = weakReference;
        this.zzd = zzdzlVar;
        this.zze = zzgeyVar;
        this.zzf = zzdzyVar;
    }

    private final Context zzj() {
        Context context = (Context) this.zzc.get();
        if (context == null) {
            return this.zzb;
        }
        return context;
    }

    private static AdRequest zzk() {
        Bundle bundle = new Bundle();
        bundle.putString(new ObfuscatedString(new long[]{5498933936470891169L, -4540897658734737981L, -8492797163751950146L}).toString(), new ObfuscatedString(new long[]{-8895560835508345883L, -3327081460584556495L, 8579865368033350521L}).toString());
        return new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzl(Object obj) {
        ResponseInfo responseInfo;
        com.google.android.gms.ads.internal.client.zzdn zzc;
        if (obj instanceof LoadAdError) {
            responseInfo = ((LoadAdError) obj).getResponseInfo();
        } else if (obj instanceof AppOpenAd) {
            responseInfo = ((AppOpenAd) obj).getResponseInfo();
        } else if (obj instanceof InterstitialAd) {
            responseInfo = ((InterstitialAd) obj).getResponseInfo();
        } else if (obj instanceof RewardedAd) {
            responseInfo = ((RewardedAd) obj).getResponseInfo();
        } else if (obj instanceof RewardedInterstitialAd) {
            responseInfo = ((RewardedInterstitialAd) obj).getResponseInfo();
        } else if (obj instanceof AdView) {
            responseInfo = ((AdView) obj).getResponseInfo();
        } else {
            if (obj instanceof NativeAd) {
                responseInfo = ((NativeAd) obj).getResponseInfo();
            }
            return new ObfuscatedString(new long[]{7744236633122489610L}).toString();
        }
        if (responseInfo != null && (zzc = responseInfo.zzc()) != null) {
            try {
                return zzc.zzh();
            } catch (RemoteException unused) {
            }
        }
        return new ObfuscatedString(new long[]{7744236633122489610L}).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzm(String str, String str2) {
        try {
            zzgen.zzr(this.zzg.zzb(str), new zzdzv(this, str2), this.zze);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{1927131085835703048L, 4571696990228512735L, 6458772887670115146L, -4438184369333402708L, -8702457576248671936L, 6409472515452970759L}).toString());
            this.zzd.zzk(str2);
        }
    }

    private final synchronized void zzn(String str, String str2) {
        try {
            zzgen.zzr(this.zzg.zzb(str), new zzdzw(this, str2), this.zze);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{6585017069679900195L, 8819443746472924608L, 4072136520139492938L, 75179248340043949L, 3666955550781692415L}).toString());
            this.zzd.zzk(str2);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdj
    public final void zze(String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        ViewGroup viewGroup = (ViewGroup) ObjectWrapper.unwrap(iObjectWrapper2);
        if (context != null && viewGroup != null) {
            Object obj = this.zza.get(str);
            if (obj != null) {
                this.zza.remove(str);
            }
            if (obj instanceof AdView) {
                zzdzy.zza(context, viewGroup, (AdView) obj);
            } else if (obj instanceof NativeAd) {
                zzdzy.zzb(context, viewGroup, (NativeAd) obj);
            }
        }
    }

    public final void zzf(zzdzd zzdzdVar) {
        this.zzg = zzdzdVar;
    }

    public final synchronized void zzg(String str, Object obj, String str2) {
        this.zza.put(str, obj);
        zzm(zzl(obj), str2);
    }

    public final synchronized void zzh(final String str, String str2, final String str3) {
        char c;
        try {
            switch (str2.hashCode()) {
                case -1999289321:
                    if (str2.equals(new ObfuscatedString(new long[]{8211993384874528693L, 2446986234403233444L}).toString())) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1372958932:
                    if (str2.equals(new ObfuscatedString(new long[]{-680276516249940389L, 5938714999978424364L, -2199329466972969076L}).toString())) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -428325382:
                    if (str2.equals(new ObfuscatedString(new long[]{-889842137387156931L, 1533443397949301117L, 442873785080446153L}).toString())) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 543046670:
                    if (str2.equals(new ObfuscatedString(new long[]{-4811860249896284520L, 1565521942350803109L}).toString())) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1854800829:
                    if (str2.equals(new ObfuscatedString(new long[]{-6467673498537171365L, 5987647926115322637L, -2659957149481742984L, -5903756106360927079L}).toString())) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1951953708:
                    if (str2.equals(new ObfuscatedString(new long[]{2278050080415364990L, -5563969888336656883L}).toString())) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c != 0) {
                if (c != 1) {
                    if (c != 2) {
                        if (c != 3) {
                            if (c != 4) {
                                if (c != 5) {
                                    return;
                                }
                                RewardedInterstitialAd.load(zzj(), str, zzk(), new zzdzt(this, str, str3));
                                return;
                            }
                            RewardedAd.load(zzj(), str, zzk(), new zzdzs(this, str, str3));
                            return;
                        }
                        AdLoader.Builder builder = new AdLoader.Builder(zzj(), str);
                        builder.forNativeAd(new NativeAd.OnNativeAdLoadedListener() { // from class: com.google.android.gms.internal.ads.zzdzm
                            @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
                            public final void onNativeAdLoaded(NativeAd nativeAd) {
                                zzdzx.this.zzg(str, nativeAd, str3);
                            }
                        });
                        builder.withAdListener(new zzdzu(this, str3));
                        builder.build().loadAd(zzk());
                        return;
                    }
                    InterstitialAd.load(zzj(), str, zzk(), new zzdzr(this, str, str3));
                    return;
                }
                AdView adView = new AdView(zzj());
                adView.setAdSize(AdSize.BANNER);
                adView.setAdUnitId(str);
                adView.setAdListener(new zzdzq(this, str, adView, str3));
                adView.loadAd(zzk());
                return;
            }
            AppOpenAd.load(zzj(), str, zzk(), 1, new zzdzp(this, str, str3));
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0049 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:9:0x000b, B:11:0x0013, B:13:0x0025, B:15:0x0029, B:17:0x002d, B:19:0x0031, B:22:0x003e, B:24:0x0049, B:27:0x0050, B:29:0x0054, B:32:0x005b, B:34:0x005f, B:37:0x0068, B:39:0x006c, B:42:0x0075, B:44:0x0085, B:46:0x0089, B:48:0x008d, B:51:0x0039), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0050 A[Catch: all -> 0x0036, TRY_ENTER, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:9:0x000b, B:11:0x0013, B:13:0x0025, B:15:0x0029, B:17:0x002d, B:19:0x0031, B:22:0x003e, B:24:0x0049, B:27:0x0050, B:29:0x0054, B:32:0x005b, B:34:0x005f, B:37:0x0068, B:39:0x006c, B:42:0x0075, B:44:0x0085, B:46:0x0089, B:48:0x008d, B:51:0x0039), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzi(String str, String str2) {
        Object obj;
        try {
            Activity zzg = this.zzd.zzg();
            if (zzg != null && (obj = this.zza.get(str)) != null) {
                zzbfu zzbfuVar = zzbgc.zzjm;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue()) {
                    if (!(obj instanceof AppOpenAd)) {
                        if (!(obj instanceof InterstitialAd)) {
                            if (!(obj instanceof RewardedAd)) {
                                if (obj instanceof RewardedInterstitialAd) {
                                }
                                zzn(zzl(obj), str2);
                                if (!(obj instanceof AppOpenAd)) {
                                    ((AppOpenAd) obj).show(zzg);
                                    return;
                                }
                                if (obj instanceof InterstitialAd) {
                                    ((InterstitialAd) obj).show(zzg);
                                    return;
                                }
                                if (obj instanceof RewardedAd) {
                                    ((RewardedAd) obj).show(zzg, new OnUserEarnedRewardListener() { // from class: com.google.android.gms.internal.ads.zzdzn
                                        @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
                                        public final void onUserEarnedReward(RewardItem rewardItem) {
                                        }
                                    });
                                    return;
                                }
                                if (obj instanceof RewardedInterstitialAd) {
                                    ((RewardedInterstitialAd) obj).show(zzg, new OnUserEarnedRewardListener() { // from class: com.google.android.gms.internal.ads.zzdzo
                                        @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
                                        public final void onUserEarnedReward(RewardItem rewardItem) {
                                        }
                                    });
                                    return;
                                }
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue() && ((obj instanceof AdView) || (obj instanceof NativeAd))) {
                                    Intent intent = new Intent();
                                    Context zzj = zzj();
                                    intent.setClassName(zzj, new ObfuscatedString(new long[]{-3010028529063190303L, 8865692679235580894L, 4721438966925978700L, -7760122059402473290L, 5097904559593612605L, 1089423710079081802L, 937485239485067390L, 51306485788043417L}).toString());
                                    intent.putExtra(new ObfuscatedString(new long[]{-4498304581798030162L, 3274009690128405647L}).toString(), str);
                                    com.google.android.gms.ads.internal.zzt.zzp();
                                    com.google.android.gms.ads.internal.util.zzt.zzS(zzj, intent);
                                    return;
                                }
                            }
                        }
                    }
                }
                this.zza.remove(str);
                zzn(zzl(obj), str2);
                if (!(obj instanceof AppOpenAd)) {
                }
            }
        } finally {
        }
    }
}
