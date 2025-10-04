package com.journeyapps.barcodescanner;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.client.android.BeepManager;
import com.google.zxing.client.android.InactivityTimer;
import com.google.zxing.client.android.R;
import com.journeyapps.barcodescanner.CameraPreview;
import com.journeyapps.barcodescanner.CaptureManager;
import com.panda912.muddy.ObfuscatedString;
import defpackage.DialogInterfaceOnClickListenerC0519xdc2f50a1;
import defpackage.RunnableC0518x7ff562da;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class CaptureManager {
    private static final String SAVED_ORIENTATION_LOCK = new ObfuscatedString(new long[]{-6119714266581594046L, -5841053597936894864L, -6438523297283409582L, -1643576552320283617L}).toString();
    private static final String TAG = "CaptureManager";
    private static int cameraPermissionReqCode = 250;
    private Activity activity;
    private boolean askedPermission;
    private DecoratedBarcodeView barcodeView;
    private BeepManager beepManager;
    private Handler handler;
    private InactivityTimer inactivityTimer;
    private final CameraPreview.StateListener stateListener;
    private int orientationLock = -1;
    private boolean returnBarcodeImagePath = false;
    private boolean showDialogIfMissingCameraPermission = true;
    private String missingCameraPermissionDialogMessage = new ObfuscatedString(new long[]{-4704912402602292899L}).toString();
    private boolean destroyed = false;
    private boolean finishWhenClosed = false;
    private BarcodeCallback callback = new AnonymousClass1();

    /* renamed from: com.journeyapps.barcodescanner.CaptureManager$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements BarcodeCallback {
        public AnonymousClass1() {
        }

        public /* synthetic */ void lambda$barcodeResult$0(BarcodeResult barcodeResult) {
            CaptureManager.this.returnResult(barcodeResult);
        }

        @Override // com.journeyapps.barcodescanner.BarcodeCallback
        public void barcodeResult(final BarcodeResult barcodeResult) {
            CaptureManager.this.barcodeView.pause();
            CaptureManager.this.beepManager.playBeepSoundAndVibrate();
            CaptureManager.this.handler.post(new Runnable() { // from class: com.journeyapps.barcodescanner.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫
                @Override // java.lang.Runnable
                public final void run() {
                    CaptureManager.AnonymousClass1.this.lambda$barcodeResult$0(barcodeResult);
                }
            });
        }

        @Override // com.journeyapps.barcodescanner.BarcodeCallback
        public void possibleResultPoints(List<ResultPoint> list) {
        }
    }

    /* renamed from: com.journeyapps.barcodescanner.CaptureManager$2 */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements CameraPreview.StateListener {
        public AnonymousClass2() {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
        public void cameraClosed() {
            if (CaptureManager.this.finishWhenClosed) {
                String unused = CaptureManager.TAG;
                new ObfuscatedString(new long[]{-6130839194357647948L, -174904959445566145L, 8423409608866574489L, -1299373705619907389L, 1171934117048949839L, 653003513978467119L}).toString();
                CaptureManager.this.finish();
            }
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
        public void cameraError(Exception exc) {
            CaptureManager captureManager = CaptureManager.this;
            captureManager.displayFrameworkBugMessageAndExit(captureManager.activity.getString(R.string.zxing_msg_camera_framework_bug));
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
        public void previewSized() {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
        public void previewStarted() {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
        public void previewStopped() {
        }
    }

    public CaptureManager(Activity activity, DecoratedBarcodeView decoratedBarcodeView) {
        AnonymousClass2 anonymousClass2 = new CameraPreview.StateListener() { // from class: com.journeyapps.barcodescanner.CaptureManager.2
            public AnonymousClass2() {
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraClosed() {
                if (CaptureManager.this.finishWhenClosed) {
                    String unused = CaptureManager.TAG;
                    new ObfuscatedString(new long[]{-6130839194357647948L, -174904959445566145L, 8423409608866574489L, -1299373705619907389L, 1171934117048949839L, 653003513978467119L}).toString();
                    CaptureManager.this.finish();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraError(Exception exc) {
                CaptureManager captureManager = CaptureManager.this;
                captureManager.displayFrameworkBugMessageAndExit(captureManager.activity.getString(R.string.zxing_msg_camera_framework_bug));
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewSized() {
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStarted() {
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStopped() {
            }
        };
        this.stateListener = anonymousClass2;
        this.askedPermission = false;
        this.activity = activity;
        this.barcodeView = decoratedBarcodeView;
        decoratedBarcodeView.getBarcodeView().addStateListener(anonymousClass2);
        this.handler = new Handler();
        this.inactivityTimer = new InactivityTimer(activity, new RunnableC0518x7ff562da(this, 0));
        this.beepManager = new BeepManager(activity);
    }

    public void finish() {
        this.activity.finish();
    }

    private String getBarcodeImagePath(BarcodeResult barcodeResult) {
        if (this.returnBarcodeImagePath) {
            Bitmap bitmap = barcodeResult.getBitmap();
            try {
                File createTempFile = File.createTempFile(new ObfuscatedString(new long[]{-632384809785074929L, -5482549336580621657L, 2537817949053155289L}).toString(), new ObfuscatedString(new long[]{-3096621966260198497L, -2607918504240481469L}).toString(), this.activity.getCacheDir());
                FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.close();
                return createTempFile.getAbsolutePath();
            } catch (IOException e) {
                new ObfuscatedString(new long[]{4078680290643199204L, 8141156056963427296L, 1144591141082936716L, 8886236397773353154L, -564922737379645203L, -4189147048666384067L, -2708950775988643115L, 2287811875739087810L}).toString();
                e.toString();
            }
        }
        return null;
    }

    public static int getCameraPermissionReqCode() {
        return cameraPermissionReqCode;
    }

    public /* synthetic */ void lambda$displayFrameworkBugMessageAndExit$1(DialogInterface dialogInterface, int i) {
        finish();
    }

    public /* synthetic */ void lambda$displayFrameworkBugMessageAndExit$2(DialogInterface dialogInterface) {
        finish();
    }

    public /* synthetic */ void lambda$new$0() {
        new ObfuscatedString(new long[]{147409380092818155L, -5045218989714648782L, -1758825022236948339L, 8928024002679435186L, -3699547841272167412L}).toString();
        finish();
    }

    @TargetApi(23)
    private void openCameraWithPermission() {
        if (ContextCompat.checkSelfPermission(this.activity, new ObfuscatedString(new long[]{6540894009157534869L, -1026936945160546092L, 8518241629396441005L, -7033133113535316862L, 3223484470006570L}).toString()) == 0) {
            this.barcodeView.resume();
        } else if (!this.askedPermission) {
            ActivityCompat.requestPermissions(this.activity, new String[]{new ObfuscatedString(new long[]{-5328627478590278082L, 1762742144056523818L, 6985759635067991245L, -609295712143053953L, 4417839102825072953L}).toString()}, cameraPermissionReqCode);
            this.askedPermission = true;
        }
    }

    public static Intent resultIntent(BarcodeResult barcodeResult, String str) {
        Intent intent = new Intent(new ObfuscatedString(new long[]{-4864438211893696558L, 8203593410568909230L, -6650999423022441020L, 494895450281590887L, -1955635012961203028L, 7748760537680323285L}).toString());
        intent.addFlags(524288);
        intent.putExtra(new ObfuscatedString(new long[]{-7331018469575782430L, 6912967560372974900L, 5241978458679477927L}).toString(), barcodeResult.toString());
        intent.putExtra(new ObfuscatedString(new long[]{-4563933871919136165L, -1421689652405502065L, -7037804439675981665L, -689115460455815325L}).toString(), barcodeResult.getBarcodeFormat().toString());
        byte[] rawBytes = barcodeResult.getRawBytes();
        if (rawBytes != null && rawBytes.length > 0) {
            intent.putExtra(new ObfuscatedString(new long[]{-2417396339929710127L, 388585665405147828L, -4240635215681320606L, -2142125184836151299L}).toString(), rawBytes);
        }
        Map<ResultMetadataType, Object> resultMetadata = barcodeResult.getResultMetadata();
        if (resultMetadata != null) {
            ResultMetadataType resultMetadataType = ResultMetadataType.UPC_EAN_EXTENSION;
            if (resultMetadata.containsKey(resultMetadataType)) {
                intent.putExtra(new ObfuscatedString(new long[]{-4820356490508282160L, 9137887099310683553L, 7395183111978725706L, -3907620943024550900L, -4235540675646177125L}).toString(), resultMetadata.get(resultMetadataType).toString());
            }
            Number number = (Number) resultMetadata.get(ResultMetadataType.ORIENTATION);
            if (number != null) {
                intent.putExtra(new ObfuscatedString(new long[]{249790026194461994L, 8073912293343454636L, 9006014909448240292L, -2812933714837099042L}).toString(), number.intValue());
            }
            String str2 = (String) resultMetadata.get(ResultMetadataType.ERROR_CORRECTION_LEVEL);
            if (str2 != null) {
                intent.putExtra(new ObfuscatedString(new long[]{-3414739560216808032L, 1241786409511241388L, 3343024749196161029L, -6978336925540648288L, -4621996224186447680L, 1342511293851878978L}).toString(), str2);
            }
            Iterable iterable = (Iterable) resultMetadata.get(ResultMetadataType.BYTE_SEGMENTS);
            if (iterable != null) {
                Iterator it = iterable.iterator();
                int i = 0;
                while (it.hasNext()) {
                    intent.putExtra(new ObfuscatedString(new long[]{3082306758526330043L, 1217808346689559193L, 4357382872354916848L, -2293335421318967971L, -2056049468377856036L}).toString() + i, (byte[]) it.next());
                    i++;
                }
            }
        }
        if (str != null) {
            intent.putExtra(new ObfuscatedString(new long[]{-3238406202704151317L, 2737737815061176350L, -2807161222700451370L, -4231115404362615551L}).toString(), str);
        }
        return intent;
    }

    public static void setCameraPermissionReqCode(int i) {
        cameraPermissionReqCode = i;
    }

    private void setMissingCameraPermissionResult() {
        Intent intent = new Intent(new ObfuscatedString(new long[]{-3871247898700412278L, -8982217357143005469L, 1670584035965106542L, -5389836836794677530L, 2078957759728828590L, -7566304948007068804L}).toString());
        intent.putExtra(new ObfuscatedString(new long[]{-6320837574710671L, -4194046981349217298L, -6905176689163093006L, -3039235990938796340L, 710723066642857385L}).toString(), true);
        this.activity.setResult(0, intent);
    }

    public void closeAndFinish() {
        if (this.barcodeView.getBarcodeView().isCameraClosed()) {
            finish();
        } else {
            this.finishWhenClosed = true;
        }
        this.barcodeView.pause();
        this.inactivityTimer.cancel();
    }

    public void decode() {
        this.barcodeView.decodeSingle(this.callback);
    }

    public void displayFrameworkBugMessageAndExit(String str) {
        if (!this.activity.isFinishing() && !this.destroyed && !this.finishWhenClosed) {
            if (str.isEmpty()) {
                str = this.activity.getString(R.string.zxing_msg_camera_framework_bug);
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.activity);
            builder.setTitle(this.activity.getString(R.string.zxing_app_name));
            builder.setMessage(str);
            builder.setPositiveButton(R.string.zxing_button_ok, new DialogInterfaceOnClickListenerC0519xdc2f50a1(this, 0));
            builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: 돷땅딹뒝땳딻돵돼뒹딹땫돸딄땨땹뒬뒾돛딎된디뒻딹딸땸뒉뒀돨딃들돷돳딝됐둘땟땀듨땦돠돸뒾듌두둔뎡든땩땀돛땲듟돝뒨땪득딃땣듻돶딸뒀된땦딁땍돶땅됐뎨딻둠둑땱땧딤땃땵딹딀땧딀땦둬딟돼뒘땲뒹땪땁땋딀땦듬딄뒝땃딸땍돸돛뒝돸땀듟딁든될딸땭뒉땹둑되뒨듼듨땜듼땯됨땀땻뒬듬듨돳드될
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    CaptureManager.this.lambda$displayFrameworkBugMessageAndExit$2(dialogInterface);
                }
            });
            builder.show();
        }
    }

    public void initializeFromIntent(Intent intent, Bundle bundle) {
        this.activity.getWindow().addFlags(128);
        if (bundle != null) {
            this.orientationLock = bundle.getInt(new ObfuscatedString(new long[]{-8232449721442600375L, 9155515675068410802L, 5967243945401391635L, -3372430509714210857L}).toString(), -1);
        }
        if (intent != null) {
            if (intent.getBooleanExtra(new ObfuscatedString(new long[]{-6725708286661841772L, 1859103523610144783L, -4624747763634274113L, 6112742724458519331L}).toString(), true)) {
                lockOrientation();
            }
            if (new ObfuscatedString(new long[]{7440256336488477693L, -9195184631519698775L, -5180833511603394224L, 1028888219375452912L, 7088312779890788045L, 4197848343719218393L}).toString().equals(intent.getAction())) {
                this.barcodeView.initializeFromIntent(intent);
            }
            if (!intent.getBooleanExtra(new ObfuscatedString(new long[]{-8259176357049218782L, 4934700630627419062L, 8862578770668500726L}).toString(), true)) {
                this.beepManager.setBeepEnabled(false);
            }
            if (intent.hasExtra(new ObfuscatedString(new long[]{-1070854856315081853L, 3055439481049960494L, -5904143834763022360L, 608683319814943509L, 2717993192817415805L, -7817565894971886686L}).toString())) {
                setShowMissingCameraPermissionDialog(intent.getBooleanExtra(new ObfuscatedString(new long[]{-4612243224993065625L, 5114629801568582026L, -2519987278142062460L, -5847157026772930271L, 7172704101595445904L, 5180704214041975499L}).toString(), true), intent.getStringExtra(new ObfuscatedString(new long[]{7106821886900452436L, 1079782536062129632L, 5602285678390650009L, 6411609021031343709L, -488731123035209997L, -699491518923911987L}).toString()));
            }
            if (intent.hasExtra(new ObfuscatedString(new long[]{-4210204073665402765L, 2584074183598415570L}).toString())) {
                this.handler.postDelayed(new RunnableC0518x7ff562da(this, 1), intent.getLongExtra(new ObfuscatedString(new long[]{6221670549458443940L, -6312094448152708937L}).toString(), 0L));
            }
            if (intent.getBooleanExtra(new ObfuscatedString(new long[]{1828373232877658913L, 2294639246625533324L, 6715988023123515864L, -972812782122754354L}).toString(), false)) {
                this.returnBarcodeImagePath = true;
            }
        }
    }

    public void lockOrientation() {
        if (this.orientationLock == -1) {
            int rotation = this.activity.getWindowManager().getDefaultDisplay().getRotation();
            int i = this.activity.getResources().getConfiguration().orientation;
            int i2 = 0;
            if (i == 2) {
                if (rotation != 0 && rotation != 1) {
                    i2 = 8;
                }
            } else if (i == 1) {
                i2 = (rotation == 0 || rotation == 3) ? 1 : 9;
            }
            this.orientationLock = i2;
        }
        this.activity.setRequestedOrientation(this.orientationLock);
    }

    public void onDestroy() {
        this.destroyed = true;
        this.inactivityTimer.cancel();
        this.handler.removeCallbacksAndMessages(null);
    }

    public void onPause() {
        this.inactivityTimer.cancel();
        this.barcodeView.pauseAndWait();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == cameraPermissionReqCode) {
            if (iArr.length > 0 && iArr[0] == 0) {
                this.barcodeView.resume();
                return;
            }
            setMissingCameraPermissionResult();
            if (this.showDialogIfMissingCameraPermission) {
                displayFrameworkBugMessageAndExit(this.missingCameraPermissionDialogMessage);
            } else {
                closeAndFinish();
            }
        }
    }

    public void onResume() {
        if (Build.VERSION.SDK_INT >= 23) {
            openCameraWithPermission();
        } else {
            this.barcodeView.resume();
        }
        this.inactivityTimer.start();
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(new ObfuscatedString(new long[]{-3187468007529249713L, 7791416770088731372L, -7021174754944382081L, 230447667731588180L}).toString(), this.orientationLock);
    }

    public void returnResult(BarcodeResult barcodeResult) {
        this.activity.setResult(-1, resultIntent(barcodeResult, getBarcodeImagePath(barcodeResult)));
        closeAndFinish();
    }

    public void returnResultTimeout() {
        Intent intent = new Intent(new ObfuscatedString(new long[]{6642567904166837715L, 3515542050269028894L, -2731889545470371104L, 2918661908428303118L, 7264490680236827048L, 895793819888408392L}).toString());
        intent.putExtra(new ObfuscatedString(new long[]{534234831777251041L, 2073198877668040461L}).toString(), true);
        this.activity.setResult(0, intent);
        closeAndFinish();
    }

    public void setShowMissingCameraPermissionDialog(boolean z) {
        setShowMissingCameraPermissionDialog(z, new ObfuscatedString(new long[]{-4399029622952550919L}).toString());
    }

    public void setShowMissingCameraPermissionDialog(boolean z, String str) {
        this.showDialogIfMissingCameraPermission = z;
        if (str == null) {
            str = new ObfuscatedString(new long[]{3362243571510079294L}).toString();
        }
        this.missingCameraPermissionDialogMessage = str;
    }
}
