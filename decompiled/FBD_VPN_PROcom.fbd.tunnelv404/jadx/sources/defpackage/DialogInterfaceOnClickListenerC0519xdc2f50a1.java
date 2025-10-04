package defpackage;

import android.app.Activity;
import android.content.DialogInterface;
import androidx.core.app.ActivityCompat;
import com.journeyapps.barcodescanner.CaptureManager;
import com.tknetwork.tunnel.activities.ExportActivity;
import com.tknetwork.tunnel.activities.MainBaseActivity;
import com.tknetwork.tunnel.activities.NetworkActivity;
import com.tknetwork.tunnel.activities.ServerActivity;

/* renamed from: 돷땀땃듟딁둬땅듰땯듬뒙땬뒐땜뒘땝딄땡땟딜뎰듬돠땋뒛딄땻땟돳땦됨뎹듻뒬땯딀득뎻딌뒘딀뎻뒐듌돰땃둔듬듌둑땲땍딜돛딐땄땤뒤땩돠땦돼듐드땀둔딃둘뒈뎡땧땲둠땦됫딽뒘딟뒤듰뒘땍땭딨땀둠뎸땡딌뒹둘땬딌땹둡둔돵땪뒹땍땧딐뒛딎땵땵땧뒹뎽땫딽땄듨딻딨둔땅둑딄뒹둑돠뒘든딨땠뎽뒬뒤둡, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0519xdc2f50a1 implements DialogInterface.OnClickListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4026xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4027x3271d0aa;

    public /* synthetic */ DialogInterfaceOnClickListenerC0519xdc2f50a1(Object obj, int i) {
        this.f4026xfbe0c504 = i;
        this.f4027x3271d0aa = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f4026xfbe0c504) {
            case 0:
                ((CaptureManager) this.f4027x3271d0aa).lambda$displayFrameworkBugMessageAndExit$1(dialogInterface, i);
                return;
            case 1:
                ExportActivity.m1471x4440ab85((ExportActivity) this.f4027x3271d0aa, dialogInterface, i);
                return;
            case 2:
                ActivityCompat.requestPermissions((Activity) this.f4027x3271d0aa, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 100);
                return;
            case 3:
                MainBaseActivity.m1482x8c6fc18a((Runnable) this.f4027x3271d0aa, dialogInterface, i);
                return;
            case 4:
                ((NetworkActivity) this.f4027x3271d0aa).lambda$showLINK$14(dialogInterface, i);
                return;
            default:
                ((ServerActivity) this.f4027x3271d0aa).lambda$showLINK$13(dialogInterface, i);
                return;
        }
    }
}
