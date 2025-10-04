package defpackage;

import android.view.View;
import android.widget.AdapterView;
import com.tknetwork.tunnel.activities.MainBaseActivity;
import com.tknetwork.tunnel.activities.NetworkActivity;
import com.tknetwork.tunnel.activities.ServerActivity;

/* renamed from: 딠땄따딀딜땬딹땩땍됩뎽돤딻딻두뒐땵도드따됴땤땨듌돵뎸딞땨땡땁땦뒤땦뎸돼땸든됩돰뒉땥뒾디뒝땟딌들둣땍둑돠뎸딄디듽둡뒐땧돸돛뒝뎬땵듟뎹땻땀땧돤뒙땋뎠둣땭됫땹듟될들딜땥뒙땫뒵듬딜땝딽돵땫뒉뎹들땫딽땅도땪될딄땋뒬따뒙득딃땠땯땥딻딄됩딨뒈돝뎠땝딁땋땮딌땤뎰듽됐땧돛돰땬뎨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C1001x2241e83c implements AdapterView.OnItemClickListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5190xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ MainBaseActivity f5191x3271d0aa;

    public /* synthetic */ C1001x2241e83c(MainBaseActivity mainBaseActivity, int i) {
        this.f5190xfbe0c504 = i;
        this.f5191x3271d0aa = mainBaseActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        switch (this.f5190xfbe0c504) {
            case 0:
                ((NetworkActivity) this.f5191x3271d0aa).lambda$onCreate$1(adapterView, view, i, j);
                return;
            default:
                ((ServerActivity) this.f5191x3271d0aa).lambda$onCreate$1(adapterView, view, i, j);
                return;
        }
    }
}
