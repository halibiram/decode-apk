package defpackage;

import android.app.Dialog;
import android.view.View;
import com.tknetwork.tunnel.activities.SshActivity;

/* renamed from: 뎻될두돳돰땐듰땪땱딜돛돼됐뒷따딽뒵땲듻땰뒈됐됐딄둔땅뎰돶뒝땐딄땄땱듐땧뒷듼뒋땳땋듔뒼땻돝뎽둬뎻뎡뎬땔땭듰돼딄땭뎬뎻될도딟듰땡땦땄뎸듔뎬둣딞땀뒀뒼땻돠됨두딐뒷딎땝됨딌딌따딜땁뒨둠뒋뒈딄돸될땻듐뒤딸뒷드듼땦딐딨땔딎둡딀뒘땯땭땻둣돶듸뎡뒐땁땄뒹뒹땭뎸땱땋돷딅딻돝뒷땄, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class ViewOnClickListenerC0386x3d250025 implements View.OnClickListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3798xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Dialog f3799x3271d0aa;

    public /* synthetic */ ViewOnClickListenerC0386x3d250025(Dialog dialog, int i) {
        this.f3798xfbe0c504 = i;
        this.f3799x3271d0aa = dialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f3798xfbe0c504) {
            case 0:
                this.f3799x3271d0aa.dismiss();
                return;
            case 1:
                SshActivity.m1547xe1f61061(this.f3799x3271d0aa, view);
                return;
            default:
                SshActivity.m1551x742e2fda(this.f3799x3271d0aa, view);
                return;
        }
    }
}
