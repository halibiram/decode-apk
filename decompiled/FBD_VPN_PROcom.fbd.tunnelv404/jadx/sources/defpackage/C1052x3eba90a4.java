package defpackage;

import android.content.Intent;
import android.provider.MediaStore;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.core.content.ContextCompat;
import com.google.common.util.concurrent.ListenableFuture;
import io.github.g00fy2.quickie.QROverlayView;
import io.github.g00fy2.quickie.QRScannerActivity;
import io.github.g00fy2.quickie.R;
import io.github.g00fy2.quickie.databinding.QuickieScannerActivityBinding;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 딻딄땃땭딐딄땟딻둘들뒙돰됴듬됨땯뒝뒝뎸돛딐둑딻딜듐둠듐땥될뎠됴든딐딜땪땬둥되땁뒼뒹됩듐땥땦뒤뎡듔딃딀땃뒤듸땧뒼되땸땅뒀딄뒾땍뒘딎돷돷뒐둥땹땵딀딻딁둡땪딞디땲뎽뎽뎽뒤딀땟둠뎡땫될딐땀땻땩땋딞뎹땯둠뒼둔땝땱땄뎬둬둬뎠땫돤딤돝둔딝땄뒵딄된돤됐딞딎딄딅돼돳뎸땸됫땡둘돵, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C1052x3eba90a4 implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5307xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ QRScannerActivity f5308x3271d0aa;

    public /* synthetic */ C1052x3eba90a4(QRScannerActivity qRScannerActivity, int i) {
        this.f5307xfbe0c504 = i;
        this.f5308x3271d0aa = qRScannerActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z = false;
        QuickieScannerActivityBinding quickieScannerActivityBinding = null;
        QRScannerActivity qRScannerActivity = this.f5308x3271d0aa;
        switch (this.f5307xfbe0c504) {
            case 0:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                QRScannerActivity.Companion companion = QRScannerActivity.INSTANCE;
                if (!qRScannerActivity.isFinishing()) {
                    QuickieScannerActivityBinding quickieScannerActivityBinding2 = qRScannerActivity.f1094x3271d0aa;
                    if (quickieScannerActivityBinding2 != null) {
                        quickieScannerActivityBinding = quickieScannerActivityBinding2;
                    }
                    quickieScannerActivityBinding.overlayView.setLoading(booleanValue);
                }
                return Unit.INSTANCE;
            case 1:
                Integer num = (Integer) obj;
                QuickieScannerActivityBinding quickieScannerActivityBinding3 = qRScannerActivity.f1094x3271d0aa;
                if (quickieScannerActivityBinding3 != null) {
                    quickieScannerActivityBinding = quickieScannerActivityBinding3;
                }
                QROverlayView qROverlayView = quickieScannerActivityBinding.overlayView;
                if (num != null && num.intValue() == 1) {
                    z = true;
                }
                qROverlayView.setTorchState(z);
                return Unit.INSTANCE;
            case 2:
                ((Boolean) obj).booleanValue();
                QRScannerActivity.Companion companion2 = QRScannerActivity.INSTANCE;
                qRScannerActivity.getClass();
                Intent intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
                intent.setType("image/*");
                intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", false);
                qRScannerActivity.f1093xfbe0c504.launch(Intent.createChooser(intent, qRScannerActivity.getString(R.string.quickie_scan_qr_code)));
                return Unit.INSTANCE;
            case 3:
                boolean booleanValue2 = ((Boolean) obj).booleanValue();
                QRScannerActivity.Companion companion3 = QRScannerActivity.INSTANCE;
                if (booleanValue2) {
                    qRScannerActivity.getClass();
                    try {
                        ListenableFuture<ProcessCameraProvider> companion4 = ProcessCameraProvider.INSTANCE.getInstance(qRScannerActivity);
                        companion4.addListener(new RunnableC0938xaa9be1e3(companion4, qRScannerActivity, 7), ContextCompat.getMainExecutor(qRScannerActivity));
                    } catch (Exception e) {
                        qRScannerActivity.m1747x1db10c9d(e);
                    }
                } else {
                    qRScannerActivity.setResult(2, null);
                    qRScannerActivity.finish();
                }
                return Unit.INSTANCE;
            default:
                Throwable exception = (Throwable) obj;
                QRScannerActivity.Companion companion5 = QRScannerActivity.INSTANCE;
                Intrinsics.checkNotNullParameter(exception, "exception");
                qRScannerActivity.m1747x1db10c9d(exception);
                return Unit.INSTANCE;
        }
    }
}
