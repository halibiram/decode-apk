package defpackage;

import android.view.View;
import io.github.g00fy2.quickie.QROverlayView;
import kotlin.jvm.functions.Function1;

/* renamed from: 딻딄딃땅땣돰땝도딞뎠딹땣딐땐땔딃딤듼뎡뒵따됫듟뒐돨땦드둡득땧돴딠뒷든됫둬땥땐딽듽듌뎻땃딄돝둑뒘돸뎨땪땯돸둔도득땀뒘뒉땠땅딀땱돳뎨땀뎽땰들듨딄뎹돠땲땐돳딅뎰두딻됨뒨득딤딝땱땹듻딟땮땦땄뎰돨뒘돸땡돸듬뒙듌딌땬땃듸땻듬딃뒈돰딁딠딄둣뎻돤뒘땮땡돴둠들땁듬뎡듔딹땪뎡뒝된, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class ViewOnClickListenerC1051x76e166e5 implements View.OnClickListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5305xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Function1 f5306x3271d0aa;

    public /* synthetic */ ViewOnClickListenerC1051x76e166e5(int i, Function1 function1) {
        this.f5305xfbe0c504 = i;
        this.f5306x3271d0aa = function1;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Function1 function1 = this.f5306x3271d0aa;
        switch (this.f5305xfbe0c504) {
            case 0:
                QROverlayView.Companion companion = QROverlayView.Companion;
                function1.invoke(Boolean.valueOf(!view.isSelected()));
                return;
            default:
                QROverlayView.Companion companion2 = QROverlayView.Companion;
                function1.invoke(Boolean.valueOf(!view.isSelected()));
                return;
        }
    }
}
