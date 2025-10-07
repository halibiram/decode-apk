package defpackage;

import androidx.camera.video.internal.encoder.EncoderCallback;

/* renamed from: 뒛딻따둔땭듰뎬땜따듬들듻둣돴돵뒤땝돷들뒙듻땡뎽땅뎡땤땩도땁듬둣뎡둘땳듨딠딎뒈땹땩뒋땟땸드땦땋됐득땱땦뎬둑뒘돳둑디땫땀땐듸돴듐땭돨뒘뒐땄뎠뎨돠딝딹땸둠땝딟땃땀됫딅땮뎸땩뎠듼따뒤딎뒉뒬듽들땠땠땃돶땄땁뒬딃땸도딀땥뒘땰듰땪땭둔땵돠딤돸땄땸땳들돸듔뎡됴돝됫땥땅듔딝뎻땻, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0707xaac1168e implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4561xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ EncoderCallback f4562x3271d0aa;

    public /* synthetic */ RunnableC0707xaac1168e(EncoderCallback encoderCallback, int i) {
        this.f4561xfbe0c504 = i;
        this.f4562x3271d0aa = encoderCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4561xfbe0c504) {
            case 0:
                this.f4562x3271d0aa.onEncodeStop();
                return;
            case 1:
                this.f4562x3271d0aa.onEncodeStart();
                return;
            default:
                this.f4562x3271d0aa.onEncodePaused();
                return;
        }
    }
}
