package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbtm implements MediationBannerAdCallback, MediationInterstitialAdCallback, MediationNativeAdCallback, MediationAppOpenAdCallback {
    private final zzbtb zza;

    public zzbtm(zzbtb zzbtbVar) {
        this.zza = zzbtbVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdClosed() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-2535371835075610574L, 7699171184515369714L, 3638702411249752045L, -5423982474440147189L, 5309723739214160044L, -7146961069204991555L, 8882399873046950427L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{4858388479276760046L, -2146242050179441130L, 1503960847149130160L, 1089475810158771149L, -3922945332215647898L}).toString());
        try {
            this.zza.zzf();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-6124276555291184790L, 7365996483277619091L, -4978363012471923289L, 2111722804001385995L, -3035248096188937421L, -3233150408154793567L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback, com.google.android.gms.ads.mediation.MediationAppOpenAdCallback
    public final void onAdFailedToShow(@NonNull AdError adError) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{6705374337814967305L, 8756723885110110984L, 8349720445643065192L, 5396788481777146811L, -5314642906399653851L, -3309555992881033783L, 8500554139845728935L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-1922419176236066142L, -2833456193228503705L, -5024503047078075474L, 2211427317191756123L, 2237417845872720726L}).toString());
        zzcec.zzj(new ObfuscatedString(new long[]{-5565930449243098069L, 7809801660309086442L, 7731021597254769101L, 4474282158941857062L, -7902832512600189475L, 2498982410906643340L, -3989887539098290759L}).toString() + adError.getCode() + new ObfuscatedString(new long[]{-1432516321406834073L, -8374400079730267209L, -3935003397725712096L, 1312476190931318215L}).toString() + adError.getMessage() + new ObfuscatedString(new long[]{6622955482568778085L, -6349828449006383513L, -7372506962618324610L}).toString() + adError.getDomain());
        try {
            this.zza.zzk(adError.zza());
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{8274363316518593433L, 7832878068997081392L, -8815848251802639660L, 7220304733024621478L, -882230574936018161L, -6297809349653252787L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdCallback, com.google.android.gms.ads.mediation.MediationInterstitialAdCallback, com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onAdLeftApplication() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-9154772898584802141L, -5156380313553711470L, -8911928308806881412L, -1884936205506994354L, -2387512279728177862L, -7931206554108033917L, 2512573157219597852L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-2314814280146019024L, 148977937462505142L, 5389654365941636817L, 1132098278194286578L, 1508705432304748548L, -7386636057339671516L}).toString());
        try {
            this.zza.zzn();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-3881942147066498314L, 3131452661679993392L, 6569989468311131514L, -6843230002521182562L, 6796118822009244979L, -8032229143352093856L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdOpened() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6002765152902122765L, 5914206896336744487L, 3660465733829793312L, 5196570099249496273L, 3902023622822079849L, 5455979132849712464L, -5152683967320863597L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{4054003139275054012L, 4821795808837937986L, -1020738884565883772L, -26445407181134388L, -4917880294273224198L}).toString());
        try {
            this.zza.zzp();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-3353600850466009074L, -7233549743884573509L, -6727783575030310491L, -5165449081077366261L, -704312781973652642L, 6803185841978060844L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoComplete() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{6497526602831226181L, 6490896278763663474L, 5465304729790020735L, 8980169404968130937L, -7335400955081267924L, 7965764533409434359L, -6582465731701521494L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{6965467096152775819L, 8982952158264229309L, 1740125557045435636L, 4829112947059651150L, 3498834916071953465L}).toString());
        try {
            this.zza.zzu();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{4866642085299842836L, 3397946041984109007L, 7663017753613920336L, -4601290967223603662L, 707361550247912814L, -3780170894238434009L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoMute() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoPause() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-4163620229834018548L, -736241203931856174L, -4992276888857300101L, 8912407799766264756L, 5317774067260639344L, -5209189976443359909L, 563286916971722090L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{499594185502632159L, 6959672513491567716L, 8747825314604266253L, 1227041172173990903L, -7829766555275004331L}).toString());
        try {
            this.zza.zzw();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-3629883582187028989L, 5366280683564119437L, 4155728597286775795L, 4374701961571315485L, -3249439274540378711L, -6257505068024821708L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoPlay() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-1007048156560647854L, 7720143347468426320L, -5934234476878906098L, 9069230820070465930L, 3356284576551514391L, -6917139738490060745L, -395896804151879037L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{3053811037929377718L, -8422986373018342744L, 7090759296388787413L, -5320602499121208301L, -8526998320904817523L}).toString());
        try {
            this.zza.zzx();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{3648042301271221550L, -5550940836299145553L, -7337304307039512327L, 4433994177656001830L, 2666400801081755647L, -3670842653313274531L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoUnmute() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdClicked() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-741278688091414978L, 306781847479377485L, 575012730127114393L, -8928393730212242518L, -4459545900777588777L, 8127872684895829891L, 4763020189776934343L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-8759384453411562267L, 7355079984182447861L, 4185390297406776255L, -1545012928875895236L, 6527067135613943280L}).toString());
        try {
            this.zza.zze();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-6053180749849875002L, -8261446330762760566L, 1727157932339166713L, -8189948559831650191L, 602914142965903378L, 1478000959913540481L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdImpression() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{1879667549041874092L, 3395825123247328933L, 6705908181232709202L, -6401671663880498750L, -7634733191136584488L, 5280942738744229985L, 4391542119306204585L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{7835874238057110068L, 539148647232231896L, -921292006260659202L, 8476229525595898004L, 42411348234848955L, -8414630517308244611L}).toString());
        try {
            this.zza.zzm();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{7744876027843628959L, -3066305714348663689L, -2512159046049564002L, 6580654169830052256L, 570133398260385725L, 3166803377663688927L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
    public final void onAdFailedToShow(String str) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{4772688942093630138L, -3627230548912982055L, -5261505100687185382L, -2344922834156379697L, -772479523052177933L, 7915848495132039075L, -5303018445753962437L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{8203442814429813347L, -2816468186081585627L, -5065448122562309019L, 6019430383930064332L, 2768451525772494902L}).toString());
        zzcec.zzj(new ObfuscatedString(new long[]{-211241559568657777L, -7330831905029057035L, -4735473507028442666L, 8550197103301549205L, -1119730027301116980L}).toString().concat(String.valueOf(str)));
        try {
            this.zza.zzl(str);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-9211070086993935584L, -4903521161847393393L, -5372108587824609985L, -6964073486233751620L, 3979348985868918852L, -3599680903727545911L}).toString(), e);
        }
    }
}
