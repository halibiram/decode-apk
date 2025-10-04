package io.github.g00fy2.quickie;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.core.content.IntentCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import defpackage.C0370x5ac5058d;
import defpackage.C0419x35cc9f53;
import defpackage.C1052x3eba90a4;
import io.github.g00fy2.quickie.QRScannerActivity;
import io.github.g00fy2.quickie.config.BarcodeFormat;
import io.github.g00fy2.quickie.config.ParcelableScannerConfig;
import io.github.g00fy2.quickie.databinding.QuickieScannerActivityBinding;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\u0003R.\u0010\u0012\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0000@@X\u0080\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lio/github/g00fy2/quickie/QRScannerActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Landroid/app/Dialog;", "value", "뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷", "Landroid/app/Dialog;", "getErrorDialog$quickie_foss_release", "()Landroid/app/Dialog;", "setErrorDialog$quickie_foss_release", "(Landroid/app/Dialog;)V", "errorDialog", "Companion", "quickie-foss_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nQRScannerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QRScannerActivity.kt\nio/github/g00fy2/quickie/QRScannerActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 IntentExtensions.kt\nio/github/g00fy2/quickie/extensions/IntentExtensionsKt\n+ 4 singletonImageLoaders.android.kt\ncoil3/SingletonImageLoaders_androidKt\n+ 5 ImageRequest.kt\ncoil3/request/ImageRequest$Builder\n*L\n1#1,306:1\n1#2:307\n35#3,6:308\n26#3,6:314\n17#4:320\n410#5,9:321\n*S KotlinDebug\n*F\n+ 1 QRScannerActivity.kt\nio/github/g00fy2/quickie/QRScannerActivity\n*L\n66#1:308,6\n69#1:314,6\n74#1:320\n79#1:321,9\n*E\n"})
/* loaded from: classes3.dex */
public final class QRScannerActivity extends AppCompatActivity {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String EXTRA_CONFIG = "quickie-config";

    @NotNull
    public static final String EXTRA_RESULT_BYTES = "quickie-bytes";

    @NotNull
    public static final String EXTRA_RESULT_EXCEPTION = "quickie-exception";

    @NotNull
    public static final String EXTRA_RESULT_PARCELABLE = "quickie-parcelable";

    @NotNull
    public static final String EXTRA_RESULT_TYPE = "quickie-type";

    @NotNull
    public static final String EXTRA_RESULT_VALUE = "quickie-value";
    public static final int RESULT_ERROR = 3;
    public static final int RESULT_MISSING_PERMISSION = 2;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ActivityResultLauncher f1093xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public QuickieScannerActivityBinding f1094x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public ExecutorService f1095x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public int[] f1096x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public boolean f1097x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public boolean f1098x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public boolean f1099x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public boolean f1100x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters and from kotlin metadata */
    public Dialog errorDialog;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\f¨\u0006\u000e"}, d2 = {"Lio/github/g00fy2/quickie/QRScannerActivity$Companion;", "", "", "EXTRA_CONFIG", "Ljava/lang/String;", "EXTRA_RESULT_BYTES", "EXTRA_RESULT_VALUE", "EXTRA_RESULT_TYPE", "EXTRA_RESULT_PARCELABLE", "EXTRA_RESULT_EXCEPTION", "", "RESULT_MISSING_PERMISSION", "I", "RESULT_ERROR", "quickie-foss_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public QRScannerActivity() {
        ActivityResultLauncher registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new C0419x35cc9f53(this, 21));
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResult(...)");
        this.f1093xfbe0c504 = registerForActivityResult;
        this.f1096x75d576dc = new int[]{BarcodeFormat.QR_CODE.ordinal()};
        this.f1097x9738a56c = true;
    }

    @Nullable
    /* renamed from: getErrorDialog$quickie_foss_release, reason: from getter */
    public final Dialog getErrorDialog() {
        return this.errorDialog;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        LayoutInflater layoutInflater;
        ParcelableScannerConfig parcelableScannerConfig;
        super.onCreate(savedInstanceState);
        int i = getApplicationInfo().theme;
        if (i != 0) {
            layoutInflater = getLayoutInflater().cloneInContext(new ContextThemeWrapper(this, i));
        } else {
            layoutInflater = getLayoutInflater();
        }
        QuickieScannerActivityBinding inflate = QuickieScannerActivityBinding.inflate(layoutInflater);
        this.f1094x3271d0aa = inflate;
        QuickieScannerActivityBinding quickieScannerActivityBinding = null;
        if (inflate == null) {
            inflate = null;
        }
        setContentView(inflate.getRoot());
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        QuickieScannerActivityBinding quickieScannerActivityBinding2 = this.f1094x3271d0aa;
        if (quickieScannerActivityBinding2 == null) {
            quickieScannerActivityBinding2 = null;
        }
        ViewCompat.setOnApplyWindowInsetsListener(quickieScannerActivityBinding2.overlayView, new C0370x5ac5058d(21));
        Intent intent = getIntent();
        if (intent != null && (parcelableScannerConfig = (ParcelableScannerConfig) IntentCompat.getParcelableExtra(intent, EXTRA_CONFIG, ParcelableScannerConfig.class)) != null) {
            this.f1096x75d576dc = parcelableScannerConfig.getFormats();
            QuickieScannerActivityBinding quickieScannerActivityBinding3 = this.f1094x3271d0aa;
            if (quickieScannerActivityBinding3 == null) {
                quickieScannerActivityBinding3 = null;
            }
            quickieScannerActivityBinding3.overlayView.setCustomText(parcelableScannerConfig.getStringRes());
            QuickieScannerActivityBinding quickieScannerActivityBinding4 = this.f1094x3271d0aa;
            if (quickieScannerActivityBinding4 == null) {
                quickieScannerActivityBinding4 = null;
            }
            quickieScannerActivityBinding4.overlayView.setCustomIcon(parcelableScannerConfig.getDrawableRes());
            QuickieScannerActivityBinding quickieScannerActivityBinding5 = this.f1094x3271d0aa;
            if (quickieScannerActivityBinding5 != null) {
                quickieScannerActivityBinding = quickieScannerActivityBinding5;
            }
            quickieScannerActivityBinding.overlayView.setHorizontalFrameRatio(parcelableScannerConfig.getHorizontalFrameRatio());
            this.f1097x9738a56c = parcelableScannerConfig.getHapticFeedback();
            this.f1098x9e171bf9 = parcelableScannerConfig.getShowTorchToggle();
            this.f1100x95f25580 = parcelableScannerConfig.getUseFrontCamera();
            this.f1099x34271fae = parcelableScannerConfig.getShowCloseButton();
            if (parcelableScannerConfig.getKeepScreenOn()) {
                getWindow().addFlags(128);
            }
        }
        this.f1095x1378447b = Executors.newSingleThreadExecutor();
        C1052x3eba90a4 c1052x3eba90a4 = new C1052x3eba90a4(this, 3);
        if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") == 0) {
            c1052x3eba90a4.invoke(Boolean.TRUE);
        } else {
            registerForActivityResult(new ActivityResultContracts.RequestPermission(), new C0419x35cc9f53(c1052x3eba90a4, 22)).launch("android.permission.CAMERA");
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ExecutorService executorService = this.f1095x1378447b;
        if (executorService == null) {
            executorService = null;
        }
        executorService.shutdown();
    }

    public final void setErrorDialog$quickie_foss_release(@Nullable Dialog dialog) {
        this.errorDialog = dialog;
        if (dialog != null) {
            dialog.show();
        }
        if (dialog != null) {
            dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: 딻딹됴땀땥도듔땥땍뎸땀뎨돳뒈뒘듬듐뒐땦땍딅땍땃땅땤듬땥딄둠듼딞뒤되뒙땮따뒵딞땻딸땔득딠되뎬땤디돠되됐돤뒷둥딅딸딌돷땡딄땅뒷됨됐땬딟땧땍땃땨딅돝뎨됴땝돛뒝땦둘뎰뎡드딀돨뎨듻듻듬땳듨뒛땟땧뒤땍땃든듐딁딨땮딤땬돝뎨땃뎻둘돳땨됨땡들되듸둔땡땫뒷땄땰들땐딞뒼된돴둘뒐뒼듻
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                    QRScannerActivity.Companion companion = QRScannerActivity.INSTANCE;
                    if (i == 4) {
                        QRScannerActivity.this.finish();
                        dialogInterface.dismiss();
                        return true;
                    }
                    return false;
                }
            });
        }
    }

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public final void m1747x1db10c9d(Throwable th) {
        setResult(3, new Intent().putExtra(EXTRA_RESULT_EXCEPTION, new Exception(th)));
        finish();
    }

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    public final void m1748xd2bcb0cf(String str) {
        QuickieScannerActivityBinding quickieScannerActivityBinding = this.f1094x3271d0aa;
        QuickieScannerActivityBinding quickieScannerActivityBinding2 = null;
        if (quickieScannerActivityBinding == null) {
            quickieScannerActivityBinding = null;
        }
        quickieScannerActivityBinding.overlayView.setHighlighted(true);
        if (this.f1097x9738a56c) {
            QuickieScannerActivityBinding quickieScannerActivityBinding3 = this.f1094x3271d0aa;
            if (quickieScannerActivityBinding3 != null) {
                quickieScannerActivityBinding2 = quickieScannerActivityBinding3;
            }
            quickieScannerActivityBinding2.overlayView.performHapticFeedback(3, 3);
        }
        Intent intent = new Intent();
        intent.putExtra(EXTRA_RESULT_VALUE, str);
        setResult(-1, intent);
        finish();
    }
}
