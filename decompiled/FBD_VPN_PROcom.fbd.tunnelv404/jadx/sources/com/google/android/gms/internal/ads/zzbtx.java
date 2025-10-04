package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbtx implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {
    private final zzbtb zza;
    private UnifiedNativeAdMapper zzb;
    private zzbkh zzc;

    public zzbtx(zzbtb zzbtbVar) {
        this.zza = zzbtbVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-7553392857245914356L, 1829597808674376744L, 8359383220263286443L, -2890508408205502434L, 4180665781480256295L, 3722942346656512666L, 8745277820772725414L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{3668117039419460932L, 2162535804038195309L, 8921839360321134196L, -6234235287503673422L, -7316731054499936982L}).toString());
        try {
            this.zza.zze();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-3715724989592698954L, 8665156430008714428L, 850933776366812298L, -154564534779257801L, 4634661433713293324L, -7021348294203145151L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-5492641226943636126L, -365474609570513824L, -1222176960959067878L, 8969940486388161282L, -1244116712516216198L, -2266955442755606908L, 2969416134358451549L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{5062956707414012336L, 1807527714951582776L, 5319333186206958507L, 6209118872663213014L, -6594607122056147880L}).toString());
        try {
            this.zza.zzf();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{5979110639542366580L, -7209741809897552153L, -5895916273705856541L, -499140484047311938L, 5136329334637269969L, -5410833555113503808L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{6967124023533650672L, -8569998991131944840L, -4185170647757157207L, -2325698922748583705L, -2841199500022483150L, -6335148333103713572L, 7734987602885660145L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-4004057900041446745L, 6738259964416984185L, 1631920671545232210L, 647857698113475769L, 3018217947441730748L, 987763839383260390L, -6353957971177000309L}).toString() + i);
        try {
            this.zza.zzg(i);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-8111383738099612819L, -1438101575221414357L, -1517020695589636773L, 5459741323515940673L, -7319742440474059940L, 7289045608986267964L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-5074876029658437266L, 4169021437427093849L, 2605476812690594388L, 5747826120797074777L, -4328489709587130365L, 6384071989231695893L, -5321199147221586832L}).toString());
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.zzb;
        if (this.zzc == null) {
            if (unifiedNativeAdMapper == null) {
                zzcec.zzl(new ObfuscatedString(new long[]{8007818188375114965L, 1128401388184999446L, -4606518183996918661L, -4675856683123928508L, 6536620051152781313L, 2938185375665727387L}).toString(), null);
                return;
            } else if (!unifiedNativeAdMapper.getOverrideImpressionRecording()) {
                zzcec.zze(new ObfuscatedString(new long[]{6457776255155583398L, 5901252538057821680L, -5814091175590578533L, -6418524997075347136L, -7814204253135487862L, -2081380798425020292L, 4329153852978369664L, -58921626001076572L, -2525490595940224497L, -2196421351680977904L, 5072729564869056013L, 2909051231438396624L}).toString());
                return;
            }
        }
        zzcec.zze(new ObfuscatedString(new long[]{833203428994052680L, 3197193428219866871L, -7416427342178657111L, 4630237666566609693L, 2872578192834372075L}).toString());
        try {
            this.zza.zzm();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{447426526744025921L, 5774109636357950092L, 5775606366063888018L, 6524331787813343817L, 7157741545127804463L, -7762244711033773927L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{74420724457799462L, -7974428726273177945L, -8082371926309303008L, 3234433045757044718L, -6103582014540812919L, 1931653509306640389L, 7975808786275943783L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-8836520095579862846L, 6624221726672725055L, 7973783416453822656L, 5264975783186903408L, -7740852717271322094L, 1969887018179488159L}).toString());
        try {
            this.zza.zzn();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{644533669823792642L, -3758173385030292317L, 5775455069231887636L, 2035771390612978270L, -8127820309446528673L, 7550365869058719675L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{4377048202471576112L, 4035388205545460898L, -7538085072511510245L, -3809846324515104238L, -8298955534889212624L, -1141912061640399779L, -5481793032416959184L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{5529944207214291032L, -4297342085728786355L, -4922433968524593320L, 4788253753703772107L, 9135128136581040724L}).toString());
        try {
            this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{1709835587770701922L, 3130599562864133944L, 974267176616536576L, -5415631094224087858L, -8006384523049195115L, -6194652689315666127L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-5430727520629738927L, 1375115095475031963L, -2004419254587784830L, 1582035372900260562L, 5771505705632726844L, -1943909635893987648L, -2514036823093224535L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{1620183396870178051L, 4282825188992381809L, -8519593506466918891L, 936089355852765465L, 7096548773819537196L}).toString());
        try {
            this.zza.zzp();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{5373861617704968358L, 7393807314130430419L, 8569434660570602044L, 4229879942931779190L, 5769193463495853276L, 4894313793426125292L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onVideoEnd(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-2379735616687376045L, 1649802777579272028L, -1986544048237031994L, 302077370812539213L, -2119892093816033536L, -8641501068403288375L, 3194578337302347363L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-6242920363085197200L, -8548419648125633211L, 7672560061388927425L, 8853354006927025152L, 3911813308326447472L}).toString());
        try {
            this.zza.zzv();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{2090846770947572557L, 8928036613055963113L, -7117446407182151552L, 6369928361464809799L, -393960694898253855L, -9210422891953046897L}).toString(), e);
        }
    }

    public final UnifiedNativeAdMapper zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void zzb(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{2847200672907631172L, -7412189904009066876L, -7471800570886227659L, 3311518560290947585L, -4316309313477736142L, 7521378014137204229L, -1582488312460805972L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-4206400542272205394L, 7557191155641270650L, 4497262990419932540L, -8118992506240993967L, -951061420499478905L}).toString());
        try {
            this.zza.zzq(str, str2);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-8387420754382802739L, 9158297650346451329L, 6103726349211986734L, 7350610750223691860L, 4987352840299206521L, 4317997940153298986L}).toString(), e);
        }
    }

    public final zzbkh zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zzd(MediationNativeAdapter mediationNativeAdapter, zzbkh zzbkhVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-4411632964628455092L, 1528848122028180589L, -4217158773547578872L, 3144805434266759992L, -8002298376383027460L, -7243370789711915043L, 7963195568513265512L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-8811088797088173041L, 5243445887178793860L, 1346737298853864065L, 3479339250572759464L, 1607294194102588908L, -1183079144827596322L, -8210773939506986839L}).toString().concat(String.valueOf(zzbkhVar.zzb())));
        this.zzc = zzbkhVar;
        try {
            this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-8668109783192738529L, 1537975344640085732L, 8974082796853256057L, -7983715514527590693L, -4282892165759234250L, -807008589998528549L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zze(MediationNativeAdapter mediationNativeAdapter, zzbkh zzbkhVar, String str) {
        try {
            this.zza.zzr(zzbkhVar.zza(), str);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{7176121695147276510L, -5415121476400892415L, 2709639578586866718L, 7245428077197227481L, -436895858735533559L, 4000146943506960604L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{5740716841855099930L, 6973193971785739649L, -6609046764694267313L, 5161023063483901175L, -7472880110336989614L, 2491062459463906031L, -2205890674776775112L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-9051713645302918783L, 6778145802489133696L, 8520888157696821069L, 4975360776875978092L, 3684993319929208251L}).toString());
        try {
            this.zza.zze();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-5065334562434904199L, 5948644064427713248L, 5500961411644087353L, -4462849750534634188L, 1246313755038572375L, -6295093081337422147L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{7223087887275510342L, 2068091832350400043L, -4872509352737377310L, -1229051913087927575L, 6216570140874579669L, 2552412113963494823L, 4023551980385147513L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-443757521802971552L, -1683367289069281400L, -2122569671399528793L, 2633273020638493907L, 5037804780924101772L}).toString());
        try {
            this.zza.zzf();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-6650321917514268170L, -365812083991325632L, -1155288850172091745L, 4457890073803052616L, 3667762612162079033L, -987628616811188074L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, AdError adError) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{6495569627054472988L, 4975052925121006052L, -3781617406494877752L, 4465542482376206335L, -2613278902005749759L, 4019347471876628016L, 4052131758215539680L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{7130861548825508110L, 8260193518692115288L, -5648933579544592982L, -3516207016272886807L, -6671659563160876376L, -2934023649414545723L, -7653016680091825002L, 8101069835515387581L}).toString() + adError.getCode() + new ObfuscatedString(new long[]{-6189238035467956847L, 8520976059075878280L, -1050388453260653945L}).toString() + adError.getMessage() + new ObfuscatedString(new long[]{8456929439651327477L, 1582296491186281417L, -102286754063233612L}).toString() + adError.getDomain());
        try {
            this.zza.zzh(adError.zza());
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{3855095670299564780L, 5068081821339549275L, 3697594262375585191L, 5313015478504948357L, 1950839625503520990L, -7039916205035578798L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-868314444718951792L, -1896896279936188578L, 90532124290151095L, 896291533972409495L, 4545095075867152202L, 5368418802762202375L, -8043176728812684081L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{8929354778544975918L, 5835349255880001973L, -7195001938149183446L, 4743813272438842983L, 5595732981542972057L, -6332350934829579440L}).toString());
        try {
            this.zza.zzn();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-1662395270586176231L, 7483968394204301223L, 5635557270643307392L, 4959734459727153967L, -934735080572565872L, -924837921885203972L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{5679559621149529678L, 7146865705502882625L, 2969915652832274266L, -444747915381849288L, 3469794336952021215L, 1881335691662694876L, -1471959912903420854L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-2551022757949362715L, -4979511771460646920L, -4448258669682291023L, -1732997073586537050L, 7188336960745842051L}).toString());
        try {
            this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{1761422951152479761L, 9017409817859627376L, 8296892877224162236L, -7613714064553912301L, -4536120993325484346L, -5020564138593981533L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-8254005868487590470L, -9022011358881916328L, -6379151582501976991L, -7616477908564732057L, 1567112639564039758L, -7091356138563354519L, -2324003733695520647L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-3365377609499792636L, 1230907069503074451L, 7394607930303200369L, 710451703306525380L, 1632575552115564404L}).toString());
        try {
            this.zza.zzp();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{2830009028144322671L, -2954698956336180212L, -1247916576965464493L, -5478743946323589308L, 6477880682080672568L, -8538208437461976859L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{1440398521164154529L, -5445661994751923536L, 2370360055588403814L, -704037197133130811L, -3295689722078204959L, 3589408982323101142L, -2877038982793082790L}).toString());
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.zzb;
        if (this.zzc == null) {
            if (unifiedNativeAdMapper == null) {
                zzcec.zzl(new ObfuscatedString(new long[]{8067166214465756639L, 1694916765620100255L, -3761827961993386617L, -6870050940719195925L, 1556958905976717235L, -3600603480788215343L}).toString(), null);
                return;
            } else if (!unifiedNativeAdMapper.getOverrideClickHandling()) {
                zzcec.zze(new ObfuscatedString(new long[]{-6953415632655049710L, 5525955741258531156L, -692229473652718240L, 4637613852911999043L, 408805007799812253L, 4375281024939576658L, -1912218577760061067L, 5164347801356173243L, -7772739223135628968L, -1814107968437073432L, 684755127342025250L}).toString());
                return;
            }
        }
        zzcec.zze(new ObfuscatedString(new long[]{-8625628599172034325L, 6717246440810465816L, 1941140273896971033L, 5139684735856236914L, -623150402482835574L}).toString());
        try {
            this.zza.zze();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-2563493951799284922L, -4965122558218522738L, -6240151357650540851L, -1452730516908926544L, 5954393579312093782L, -1239349237844986197L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6206014721769888396L, -3599320341725368512L, -9016985504896569222L, 690603364404282678L, 487153590303897432L, -3228242548275747235L, 4386153384342961978L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{4333049196506864962L, -4253945995233985590L, 429967741318277767L, -7173774422415340097L, -4409972761010300227L}).toString());
        try {
            this.zza.zzf();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-1823379078251438737L, 5369094260819763952L, -8249118936535656485L, 1991246981175464324L, -5167444857086923421L, 6868412763966136229L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-4034608212489388316L, 1555472610801493705L, -3281140198161476980L, -3343488959551135849L, 3487814534943791478L, 3223366462070802709L, -2795062589126799467L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-1494135365193704045L, -3305498630448785600L, -6753175819437374356L, -1196152237707928600L, -6369652850601468970L, 3003194226247392250L}).toString());
        try {
            this.zza.zzn();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{7844190984880932365L, -207693364288315474L, 7969304764469135697L, 3609177633250342429L, -7022416553744394943L, -3889433283998522722L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{6511303456405766162L, -7964098842531865077L, 1800191879696382922L, -3410410729735370713L, -1068296891224264395L, 2103460479857945596L, 4062303278248427383L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{9088999713678935158L, 959344574983761712L, 7619538445237644127L, 4667907144587298L, -7911066899664910326L}).toString());
        this.zzb = unifiedNativeAdMapper;
        if (!(mediationNativeAdapter instanceof AdMobAdapter)) {
            VideoController videoController = new VideoController();
            videoController.zzb(new zzbtl());
            if (unifiedNativeAdMapper != null && unifiedNativeAdMapper.hasVideoContent()) {
                unifiedNativeAdMapper.zze(videoController);
            }
        }
        try {
            this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-2860292874286016409L, 1388493795914852435L, -6749091022804548313L, 2158690624565478821L, -7796371701263973434L, -8872367026697090710L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-5099052048028785931L, -5257364342987181961L, -9077107898847481286L, -6073193142718883318L, 4604532029313624006L, 1725025488448503071L, -1940616541819568881L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-5917576074569924917L, -7987179078858148627L, -2978584863321450209L, -828660306230352734L, -1268480991827698349L}).toString());
        try {
            this.zza.zzp();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-682545563769100174L, 4939600091160293770L, 3795566607330756033L, -7456349457548034058L, -3063649564885113685L, -2963812571535666519L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{7487916343911786772L, 7260709570823185974L, -8733862267351361024L, 8265985813554366158L, 2847355785273681166L, 109399433273795579L, 8167740671673937800L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-4773070717457216906L, -2572343962593193376L, 5071554339223143026L, 7170747469978247421L, 2937374605460445904L, 2075938670698390949L, -3583297480655524962L}).toString() + i + new ObfuscatedString(new long[]{-862626568061535181L, 5548499725852774952L}).toString());
        try {
            this.zza.zzg(i);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-1221881361722443123L, -3698460465264949463L, 7331837382862550593L, 2312896210282263691L, 2093257448485873257L, 1733171482109246908L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, AdError adError) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{619035658418456829L, 1619980983464117985L, 4548017879358174481L, 3318188217752596893L, 5615077444905669350L, -3652246345877106164L, 8020068370118958506L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{1477342075313810309L, -1110971944453637191L, 1006400506923007495L, 1938270833675557231L, -2167603995076959663L, 7471306376734670739L, 7178119501411567064L, -5042384967504338984L}).toString() + adError.getCode() + new ObfuscatedString(new long[]{-5601086380682788972L, 5449106565459263439L, -42292029115623816L}).toString() + adError.getMessage() + new ObfuscatedString(new long[]{-8120630706502600899L, 2467617096403579636L, 6381852340247115952L}).toString() + adError.getDomain());
        try {
            this.zza.zzh(adError.zza());
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{342237958077558697L, 5215431935385200455L, -3547216692660560161L, -2482653485983932880L, -6581761598612518465L, 7108265270874710725L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-4634900059297638176L, 4039174298092556284L, -4710561351306173953L, 266698758266537854L, 2653832960166581657L, -5001021277376405427L, 2770502195539074773L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{-9178279072993313453L, -5438818991790659136L, 7690007575520255265L, -4834916950719096064L, -5775700902092358445L, 8119296441378062457L, -8335726177193930691L}).toString() + i + new ObfuscatedString(new long[]{-1766992142474576403L, -6842291870483110881L}).toString());
        try {
            this.zza.zzg(i);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-1507804311587376495L, 636607583334381560L, -1732154744780949444L, -2150327542924930650L, 8726208875273341114L, -3238736947449830818L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, AdError adError) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{7820963830129219757L, -6746110038657230019L, 9109114137998403289L, 9025696223928298379L, 3744712585135569871L, -909952517429871747L, -61619287635480703L}).toString());
        zzcec.zze(new ObfuscatedString(new long[]{7090597821660765444L, 1121072789480228956L, 8852025233739906500L, -5856882248929163549L, 7918723609528223189L, 3259703866352732948L, 6998616155273202421L, 3458844659357479817L}).toString() + adError.getCode() + new ObfuscatedString(new long[]{1264236210581170711L, -4063163344238218818L, -1094782518546057258L}).toString() + adError.getMessage() + new ObfuscatedString(new long[]{-4033735538229803806L, 2601260417289138842L, -7195768753220557648L}).toString() + adError.getDomain());
        try {
            this.zza.zzh(adError.zza());
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{6383122949236037091L, 9115949153692354188L, -6907367435699463727L, 4073579361398935894L, 7201212511113794431L, 2665747486149241124L}).toString(), e);
        }
    }
}
