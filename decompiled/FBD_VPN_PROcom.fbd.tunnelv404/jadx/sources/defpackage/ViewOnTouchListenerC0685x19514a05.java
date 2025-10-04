package defpackage;

import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import androidx.core.view.DragStartHelper;
import com.google.android.material.search.SearchView;
import io.github.g00fy2.quickie.QRScannerActivity;

/* renamed from: 뒐듽딹딀돛딐딐딃뒵됩땯뒵땹뒐뎻땫땨듼딸뒙돼둡딨땁됩뎨뒾든뒋돤돶듰딎듻뒐둘듟땣듬드딻됐뎹뎬디땸땦뎨뎬딄땦땨땳딸땩뒐됩땮딄땀땮땠땱돤땥듐듻뒙뒉듸땱딎뎰디땋뒘뒨뒀땥뒝든둘땍돠듨땡땰땡뒾딃둠땁땃돼딎땰땲뒝땔땧뒻뒻땫땠돠딐땅뎽둔듐딁둡뒷땐땱디듼듽둑뎻땲돝딞뒾뒹땠뒤딎디듬, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewOnTouchListenerC0685x19514a05 implements View.OnTouchListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4523xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4524x3271d0aa;

    public /* synthetic */ ViewOnTouchListenerC0685x19514a05(Object obj, int i) {
        this.f4523xfbe0c504 = i;
        this.f4524x3271d0aa = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean lambda$setUpContentOnTouchListener$3;
        Object obj = this.f4524x3271d0aa;
        switch (this.f4523xfbe0c504) {
            case 0:
                return ((DragStartHelper) obj).onTouch(view, motionEvent);
            case 1:
                QRScannerActivity.Companion companion = QRScannerActivity.INSTANCE;
                ((ScaleGestureDetector) obj).onTouchEvent(motionEvent);
                return true;
            default:
                lambda$setUpContentOnTouchListener$3 = ((SearchView) obj).lambda$setUpContentOnTouchListener$3(view, motionEvent);
                return lambda$setUpContentOnTouchListener$3;
        }
    }
}
