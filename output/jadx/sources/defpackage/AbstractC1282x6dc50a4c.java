package defpackage;

import androidx.camera.video.internal.encoder.VideoEncoderInfo;

/* renamed from: 땰딠딻된돰뎡땩땮돰듼드땧둥듻돨든듻땄뒬뒤돷듸땹둘땹듐둔둥둑딤뒤땠뒻돛딝딄됴땄땦딃둔됩뒼됴딃뒈딸든둑딁뎹뎻돶듨됫땬듼뒻둣딸돝됫딸들뒵땁돳땐듐땝뒤듟땠뒹돰딐듔든둡두땰둣땭땥뒼뒝뒝뎡딐듼땟뒘딟둥되땫땸땥땩딜뒙뎠됨됩뎽땣뒨땦땦둣딌돤뒋둑듻됐땹뒋땥땀뎹땪땵두뒛둣됐땝땋돵, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1282x6dc50a4c {
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static boolean m4260xfbe0c504(VideoEncoderInfo videoEncoderInfo, int i, int i2) {
        if (!videoEncoderInfo.isSizeSupported(i, i2) && (!videoEncoderInfo.canSwapWidthHeight() || !videoEncoderInfo.isSizeSupported(i2, i))) {
            return false;
        }
        return true;
    }
}
