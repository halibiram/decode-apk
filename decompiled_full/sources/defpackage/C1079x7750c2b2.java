package defpackage;

import androidx.camera.video.AudioSpec;
import androidx.camera.video.Recorder;
import androidx.camera.video.VideoSpec;
import androidx.core.util.Consumer;

/* renamed from: 땄뒤딝돴딸뎬땻둔땜딝뒉딤듟뒋뒻땣딜땩땐돷두딄땅땸땬따따땸땳땀따두뒈땣돴된됩딄뒤딄됴뒝땸득뒈땱땮따땭딝돵뎽됐둘땡될돼뒛딜들땯뎹딝뎹듸둑될둬들딝딄땬돴땱땱딄둠뒷돳돠땦뒤돴뒼땰뒀딸뒘딹땄뒵뒻들뎹땀땡땻돸돶돤땲딝되땍뎬딐딌돠뎻들땧도뒹뒙돝땝땡뒾돵돸땫뒀딁땠돰땪땭딻땭돸, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1079x7750c2b2 implements Consumer {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5367xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ int f5368x3271d0aa;

    public /* synthetic */ C1079x7750c2b2(int i, int i2) {
        this.f5367xfbe0c504 = i2;
        this.f5368x3271d0aa = i;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        switch (this.f5367xfbe0c504) {
            case 0:
                Recorder.Builder.lambda$setTargetVideoEncodingBitRate$1(this.f5368x3271d0aa, (VideoSpec.Builder) obj);
                return;
            case 1:
                ((AudioSpec.Builder) obj).setSource(this.f5368x3271d0aa);
                return;
            default:
                ((VideoSpec.Builder) obj).setAspectRatio(this.f5368x3271d0aa);
                return;
        }
    }
}
