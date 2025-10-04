package defpackage;

import androidx.camera.core.ForwardingImageProxy;
import androidx.camera.core.ImageProcessingUtil;
import androidx.camera.core.ImageProxy;

/* renamed from: 듽뒉돶둡땩뒾땔땬뎠돨딎뒉땵딁뎡돛땜땨딐듸딹뒻땍듸뒐뒷땲딻뎻뒷딜듟딄됨땰듰땩땻땔딃땳땯듬뎹뎨뒻딽땧땳땝돴딀둥땝뒙듰뒹딤뒋땍딻듟되땭듔된듟돳뎽땲땄땳땨땡두딀땠땭돷땲땪돵땥딻둘됩땭도땧딄됴딨땝둠돤땲됫뒙듌땻돛듸뒀땤딐뎨뒙돸돼뒈돴뒤땍땸뒈땜땃땠땵뎨땧따땃도돛뒬뎰둬딜딤, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0879xeed4762e implements ForwardingImageProxy.OnImageCloseListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4999xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ ImageProxy f5000x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ ImageProxy f5001x1378447b;

    public /* synthetic */ C0879xeed4762e(ImageProxy imageProxy, ImageProxy imageProxy2, int i) {
        this.f4999xfbe0c504 = i;
        this.f5000x3271d0aa = imageProxy;
        this.f5001x1378447b = imageProxy2;
    }

    @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
    public final void onImageClose(ImageProxy imageProxy) {
        switch (this.f4999xfbe0c504) {
            case 0:
                ImageProcessingUtil.m209x3271d0aa(this.f5000x3271d0aa, this.f5001x1378447b, imageProxy);
                return;
            default:
                ImageProcessingUtil.m208xfbe0c504(this.f5000x3271d0aa, this.f5001x1378447b, imageProxy);
                return;
        }
    }
}
