package defpackage;

import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* renamed from: 돴듼둔뒛딟돨듼땅땻돛듐땸뒘됫딀딐돳돠뎬딟딝뒉둬듐땠땐된땫땩딅땟뎬뒝딻땹돸듌듬딽뎡둬뒾땳뒛뒝딐딄뒋뒝땰듸따딀둣딻둑딎듰돵땸땁돼땜딨돛듸뎰딄뒀뒻뒬딸뒨뎡뎽딠뒀뒤딜땅돛듔땲뒻뎡땧둣둘뎽듸땭뎡듸두땃땩둣뎨딜둠딁뒝뎬땃딟뒾디땃든땱됐따되땸땲듸딐돵디듸듼돝뎹듰딟딃딀딄땄딅, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0487xd0ecd21f implements CallbackToFutureAdapter.Resolver {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3981xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Camera2CameraControl f3982x3271d0aa;

    public /* synthetic */ C0487xd0ecd21f(Camera2CameraControl camera2CameraControl, int i) {
        this.f3981xfbe0c504 = i;
        this.f3982x3271d0aa = camera2CameraControl;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        Object lambda$addCaptureRequestOptions$3;
        Object lambda$setCaptureRequestOptions$1;
        Object lambda$clearCaptureRequestOptions$5;
        switch (this.f3981xfbe0c504) {
            case 0:
                lambda$addCaptureRequestOptions$3 = this.f3982x3271d0aa.lambda$addCaptureRequestOptions$3(completer);
                return lambda$addCaptureRequestOptions$3;
            case 1:
                lambda$setCaptureRequestOptions$1 = this.f3982x3271d0aa.lambda$setCaptureRequestOptions$1(completer);
                return lambda$setCaptureRequestOptions$1;
            default:
                lambda$clearCaptureRequestOptions$5 = this.f3982x3271d0aa.lambda$clearCaptureRequestOptions$5(completer);
                return lambda$clearCaptureRequestOptions$5;
        }
    }
}
