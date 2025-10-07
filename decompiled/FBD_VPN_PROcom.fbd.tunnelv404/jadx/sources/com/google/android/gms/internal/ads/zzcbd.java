package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcbd implements MediationRewardedAdCallback {
    private final zzbtb zza;

    public zzcbd(zzbtb zzbtbVar) {
        this.zza = zzbtbVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdClosed() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{362905972852775466L, -2948881396254318187L, -573822927481840340L, -9059833045363124843L, -1728701695729371318L, -1449244333326967575L, 8411708833845593449L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{1066772144735151754L, 425422258448699326L, 7635055089726414344L, -6214509235114965663L, 7964664234699485461L}).toString());
        try {
            this.zza.zzf();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{587108980975388528L, -5121744755374577969L, -7584487825310497426L, -1096388949557238740L, -4896918513381484861L, -6922354840989853281L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onAdFailedToShow(AdError adError) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6921239899973140903L, 7192999058688610440L, -3283129564708623459L, 1939311766252308247L, 6351847166662690934L, 8106227778188057081L, -4122494152091007995L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-972681191219017758L, -7092974819046948889L, 3255820430903321377L, -5503359645543603663L, 1169700616164059297L}).toString());
        zzcec.zzj(new ObfuscatedString(new long[]{2719458348213495853L, 3163054689601614731L, 3341805661923980425L, -2372042705098725982L, -3072953250334898690L, 7755096184118310551L, -1904864626537197857L}).toString() + adError.getCode() + new ObfuscatedString(new long[]{-6455203690613034346L, -3866812890601367611L, 8349497546474492505L, 3299145397105091027L}).toString() + adError.getMessage() + new ObfuscatedString(new long[]{-2078043580783844278L, 8272426322366705808L, 6066465049895517752L}).toString() + adError.getDomain());
        try {
            this.zza.zzk(adError.zza());
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-7650866146159194179L, 3644411722318577054L, 5352262877313412238L, 3378423653587230950L, -6899121879698392106L, 2781074586047334229L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdOpened() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{5039576064800819465L, -4645997285702253281L, 3153712605525542469L, 3550011774363840277L, 2919395321704874867L, -399559526748418368L, 2485322308718831996L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-4643157566504830698L, 3427028673542626865L, 8151027065805686287L, -5680199414049915968L, 747980067641682834L}).toString());
        try {
            this.zza.zzp();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-6347704915843894409L, 5632093453314011437L, -5594731969573672810L, 1274129154909095778L, 6520913359629876194L, 558603999061249728L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onUserEarnedReward(RewardItem rewardItem) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-8391192239545857276L, 7104374024031397039L, -12949660961806281L, 7025197235856745926L, 2193538173877650591L, -8034206720720331355L, -1453838567847880838L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{1192331741505080709L, 3575800466371185613L, -1452556396484858073L, -4896234621330946910L, 1066784407451729721L, 2975969578235761936L}).toString());
        try {
            this.zza.zzt(new zzcbe(rewardItem));
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-5991819130676039537L, -1044283500748221117L, -4362003610724725150L, -2293905634225385585L, -7070375744281939544L, 8651531527512799837L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback, com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoComplete() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{58704343054960788L, -1528825881867244636L, 6139288126390392498L, -6810430404875072065L, -7303092607288197313L, -8362507813150930932L, -6228878900641874938L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-7521834482562783903L, -5268259506797516989L, -1138155965758619090L, -3168415184903442317L, -6681074954477562453L}).toString());
        try {
            this.zza.zzu();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{5128621358493692568L, 3277709745857093188L, 5594151526030437528L, -5731093679194746467L, 7486113596867901690L, 959980498875144060L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoStart() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{3407720743070855909L, -4236562368183635019L, -1361270321101756293L, -7902784762417097209L, -1257130448917176983L, 679577295617363435L, -5137505393166693788L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-2034323398131966605L, 2092467603578212637L, 6491969239314568134L, 234688420764462236L, -3237172329918712223L}).toString());
        try {
            this.zza.zzy();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-2837320325221151108L, 2270473905798067444L, -7170555735539983240L, -7049729688110915050L, 8735055547416401193L, 954165305476896941L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdClicked() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{1587595580870438456L, 1143920419451409241L, -1178479746591044208L, 544533766202355106L, 6501432076417451025L, -5969721761348796326L, -1657821808824290303L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-5485543632691024227L, 6857863707775082533L, 1693219245964649362L, 1123106155051439495L, -3002694634912664444L}).toString());
        try {
            this.zza.zze();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{3909752292584323478L, -3932920152227307092L, 3547600033708535594L, 4622863077527515738L, 6185872564429845115L, 3308253297712033691L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdImpression() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{5473401079561584527L, -7087395684447221101L, 5144512883586597378L, -4459856065442327114L, -3950136880926122496L, -4638644308255146360L, -5170565993220609704L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{3809872670055114169L, -1177462263900588265L, 3014633029564421849L, 243146112556111558L, -4133270257263354253L, 7331709715752662573L}).toString());
        try {
            this.zza.zzm();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{2301507861362716521L, -8227015928585454982L, -1346245805862827683L, -3439055509049154431L, 1999372911184961245L, 6268387522734794871L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onAdFailedToShow(String str) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6712994104756194893L, -3728344339664041045L, -8403303425324475563L, 8893913326776627632L, -4390904803430976014L, 6336449797838607035L, 3365620443148733711L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{201652823534018225L, 5325493598891847042L, -5393633209613472722L, 4729508917666902458L, -1060855908921302990L}).toString());
        zzcec.zzj(new ObfuscatedString(new long[]{8434448227158127516L, 6687226309555697737L, 3779604884792662358L, -8735296916071084972L, -7504250160280459907L}).toString().concat(String.valueOf(str)));
        try {
            this.zza.zzl(str);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-9142731012260551986L, 4442734944070586928L, 3702520819861771521L, 3918348147672281214L, -7576103083718942585L, -3812181107142144414L}).toString(), e);
        }
    }
}
