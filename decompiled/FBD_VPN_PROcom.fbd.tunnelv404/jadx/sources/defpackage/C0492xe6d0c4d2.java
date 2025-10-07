package defpackage;

import androidx.camera.camera2.internal.concurrent.Camera2CameraCoordinator;
import androidx.camera.core.CameraFilter;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.Identifier;
import java.util.List;

/* renamed from: 돵돷듌딸뒉돨땀땳땥둡딃뒹듻땩땔뒉땍디땡뒹돨땩돷뒐뎸둘뎽든딅딜뎹땩됫딟둑딄땝뒛딅땠뒛딅든되둬땰딽돷땬둬뒉땯딀듼딜땧딹딐뎹되듔둥딃땨땬뎹딸돴둠땰둥돴딸돰됩돝딹뎻됩땁돝땪도듼뒀땬뒼듨땅뒙땋듻돛딞딄듟둡땝땝돷둥듐됫듐딽땦딅땅뒈듟땡땐뒀딎돵돤땡땟땄됨땦득땝뎬땩듼땩딜딹땍, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0492xe6d0c4d2 implements CameraFilter {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3996xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f3997x3271d0aa;

    public /* synthetic */ C0492xe6d0c4d2(Object obj, int i) {
        this.f3996xfbe0c504 = i;
        this.f3997x3271d0aa = obj;
    }

    @Override // androidx.camera.core.CameraFilter
    public final List filter(List list) {
        switch (this.f3996xfbe0c504) {
            case 0:
                return Camera2CameraCoordinator.m177xfbe0c504((String) this.f3997x3271d0aa, list);
            default:
                return AbstractC0505x5ebf1b9a.m3144x9738a56c((CameraInfoInternal) this.f3997x3271d0aa, list);
        }
    }

    @Override // androidx.camera.core.CameraFilter
    public final /* synthetic */ Identifier getIdentifier() {
        switch (this.f3996xfbe0c504) {
            case 0:
                return AbstractC0502xa21a55d.m3129xfbe0c504(this);
            default:
                return AbstractC0502xa21a55d.m3129xfbe0c504(this);
        }
    }
}
