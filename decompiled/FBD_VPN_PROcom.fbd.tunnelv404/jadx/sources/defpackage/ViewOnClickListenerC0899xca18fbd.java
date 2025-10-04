package defpackage;

import android.view.View;
import com.google.android.material.datepicker.MaterialDatePicker;
import com.tknetwork.tunnel.activities.LoginActivity;
import com.tknetwork.tunnel.logger.JcLogs;
import io.github.g00fy2.quickie.QROverlayView;
import kotlin.jvm.functions.Function0;

/* renamed from: 딁득돨둠땐듟듔뎬따뎠돝둡땩땭돷땹땀돸됫된듸땡둘둑땹뎡돼뒬땦됫듼땠딨땫땨뒉둥돠뎽든땠된땥돵뒈듔뎰뒻딤땹땁땠둔듬땋됴뒀듻득뎨땡땀딻땪뒛된돵딅딝땁뒹땨딸땁뒀들뒼둠땲땣돸될뒋딄돛든땰땃듬뎹듐둘땭땫둔딞듸뒹도딻듔땣둑둘딨땸땜둬땄땋땩뒤둔딽될딠돠됐땸둡딝딄됫돼듼된딀듌됩땥, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class ViewOnClickListenerC0899xca18fbd implements View.OnClickListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5024xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f5025x3271d0aa;

    public /* synthetic */ ViewOnClickListenerC0899xca18fbd(Object obj, int i) {
        this.f5024xfbe0c504 = i;
        this.f5025x3271d0aa = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object obj = this.f5025x3271d0aa;
        switch (this.f5024xfbe0c504) {
            case 0:
                JcLogs.m1560xad53da1a((JcLogs) obj, view);
                return;
            case 1:
                ((LoginActivity) obj).lambda$onCreate$0(view);
                return;
            case 2:
                MaterialDatePicker.m1204xfbe0c504((MaterialDatePicker) obj, view);
                return;
            default:
                QROverlayView.Companion companion = QROverlayView.Companion;
                ((Function0) obj).invoke();
                return;
        }
    }
}
