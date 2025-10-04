package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbvk implements MediationInterstitialAdapter {
    private Activity zza;
    private MediationInterstitialListener zzb;
    private Uri zzc;

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        zzcec.zze(new ObfuscatedString(new long[]{-6043631513475929390L, -3862322608282164630L, 9218657073990256792L, 1786234753236585296L, 5084077916166787197L, 2752927642256211566L, -739684896222977968L}).toString());
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        zzcec.zze(new ObfuscatedString(new long[]{3790806551041513746L, 8966137762450523414L, -555861185585712989L, -5538044437694739628L, 3692733919904259667L, -8094573908157630991L}).toString());
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        zzcec.zze(new ObfuscatedString(new long[]{8851612519288652604L, 8778312261975081053L, 5468349278486223217L, 7462684551925420217L, 7637781242380249302L, 2491254080785881551L}).toString());
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzb = mediationInterstitialListener;
        if (mediationInterstitialListener == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{9039116160338677624L, -6490911546809715597L, 78558589665932728L, -8759415989271891425L, 5269173482958891498L, 1901655501799706641L, 5509941576000151806L}).toString());
            return;
        }
        if (context instanceof Activity) {
            if (!zzbhd.zzg(context)) {
                zzcec.zzj(new ObfuscatedString(new long[]{-238812003638105450L, 6496245393814236328L, -7296486968592803686L, -13641119913469897L, -1476997683310880403L, 6658053443009955846L, -4625409078722420998L, 7626637333481878560L, 2906948887557708760L}).toString());
                this.zzb.onAdFailedToLoad(this, 0);
                return;
            }
            String string = bundle.getString(new ObfuscatedString(new long[]{1477140094881878036L, 5063525891625963991L}).toString());
            if (TextUtils.isEmpty(string)) {
                zzcec.zzj(new ObfuscatedString(new long[]{-6149763172178347827L, -3887637481733533507L, -994186555610706954L, -2808025439220310440L, -8874425670459560136L, 3047624808166589107L, -231418983783279312L, 4625703341080018852L, -2374793262258448701L, 618270296503914354L}).toString());
                this.zzb.onAdFailedToLoad(this, 0);
                return;
            } else {
                this.zza = (Activity) context;
                this.zzc = Uri.parse(string);
                this.zzb.onAdLoaded(this);
                return;
            }
        }
        zzcec.zzj(new ObfuscatedString(new long[]{2649698942627145326L, 3571149909934214967L, 8688811562170297541L, 505996963943557774L, -533243367524385325L, -8034734701754115175L, 5526962656341751196L, -3240721511790961268L, -3532707137095157719L, 5519190801627159078L}).toString());
        this.zzb.onAdFailedToLoad(this, 0);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        CustomTabsIntent build = new CustomTabsIntent.Builder().build();
        build.intent.setData(this.zzc);
        com.google.android.gms.ads.internal.util.zzt.zza.post(new zzbvj(this, new AdOverlayInfoParcel(new com.google.android.gms.ads.internal.overlay.zzc(build.intent, null), null, new zzbvi(this), null, new zzcei(0, 0, false, false, false), null, null)));
        com.google.android.gms.ads.internal.zzt.zzo().zzq();
    }
}
