package defpackage;

import androidx.camera.video.internal.audio.AudioSource;

/* renamed from: 돛땹뎹듰딻듻뒾딹둣둠땋두뎡뒻둬땔딽땮됴돛되든돵뒉딅돠딎딐돛돛땧뒛땩돤돶돤듌들됴땻듔딅뎡땃딻듐돠돨딌돛땜듼딅땵됴뎬땁땄땵득땸됨뎹뎬땩뒉딽뎰땮딤뒀땋뎠뎬딝딽됐뎡둘뎨뒝뒙듟둑뒻뒨땣둘돶뒨딄뒐둔땵뒵뎰뒋돴딠땰딟디뎹땹둥딐딹땀땬땦두둥뒘뎻뒙됨딄땅도뎻둣딨뒋드땟돰땠땣듻돼, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0429x4d857145 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3871xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ AudioSource.AudioSourceCallback f3872x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ boolean f3873x1378447b;

    public /* synthetic */ RunnableC0429x4d857145(AudioSource.AudioSourceCallback audioSourceCallback, boolean z, int i) {
        this.f3871xfbe0c504 = i;
        this.f3872x3271d0aa = audioSourceCallback;
        this.f3873x1378447b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3871xfbe0c504) {
            case 0:
                this.f3872x3271d0aa.onSilenceStateChanged(this.f3873x1378447b);
                return;
            default:
                this.f3872x3271d0aa.onSuspendStateChanged(this.f3873x1378447b);
                return;
        }
    }
}
