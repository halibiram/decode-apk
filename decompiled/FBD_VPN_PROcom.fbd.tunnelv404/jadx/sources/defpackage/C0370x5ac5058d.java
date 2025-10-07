package defpackage;

import android.text.Editable;
import android.view.View;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderConfig;
import androidx.camera.video.internal.encoder.EncoderFactory;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.test.core.app.ActivityScenario;
import androidx.test.internal.platform.ServiceLoaderWrapper;
import androidx.test.internal.platform.util.TestOutputEmitter;
import androidx.test.internal.platform.util.TestOutputHandler;
import androidx.test.platform.io.FileTestStorage;
import androidx.work.ListenableWorker;
import app.tunnel.ssh2.tunnel.vpn.Pdnsd;
import app.tunnel.vpncommons.utils.StreamGobbler;
import coil3.EventListener;
import coil3.request.ImageRequest;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.carousel.MaskableFrameLayout;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.FormError;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;
import com.tknetwork.tunnel.activities.ActivityUi;
import com.tknetwork.tunnel.activities.MainBaseActivity;
import com.tknetwork.tunnel.view.GraphHelper;
import com.trilead.ssh2.Connection;
import com.trilead.ssh2.DebugLogger;
import io.github.g00fy2.quickie.QRScannerActivity;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0370x5ac5058d implements ServiceLoaderWrapper.Factory, Response.ErrorListener, OnCompleteListener, DebugLogger, ObjectConstructor, EventListener.Factory, IAxisValueFormatter, CallbackToFutureAdapter.Resolver, ConsentInformation.OnConsentInfoUpdateFailureListener, ShapeAppearanceModel.CornerSizeUnaryOperator, StreamGobbler.OnLineListener, OnApplyWindowInsetsListener, EncoderFactory, TextInputLayout.LengthCounter, Interpolator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3757xfbe0c504;

    public /* synthetic */ C0370x5ac5058d(int i) {
        this.f3757xfbe0c504 = i;
    }

    @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
    public CornerSize apply(CornerSize cornerSize) {
        return MaskableFrameLayout.m1033xfbe0c504(cornerSize);
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ListenableWorker.m857xfbe0c504(completer);
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object construct() {
        switch (this.f3757xfbe0c504) {
            case 5:
                return ConstructorConstructor.m1301x1378447b();
            case 6:
                return ConstructorConstructor.m1307x3db60231();
            case 7:
                return ConstructorConstructor.m1313xab142723();
            case 8:
                return ConstructorConstructor.m1317xc20437a5();
            case 9:
                return ConstructorConstructor.m1300x3271d0aa();
            case 10:
                return ConstructorConstructor.m1316x952a0a9e();
            case 11:
                return ConstructorConstructor.m1306x95f25580();
            case 12:
                return ConstructorConstructor.m1304x9e171bf9();
            default:
                return ConstructorConstructor.m1299xfbe0c504();
        }
    }

    @Override // com.google.android.material.textfield.TextInputLayout.LengthCounter
    public int countLength(Editable editable) {
        return TextInputLayout.m1255x3271d0aa(editable);
    }

    @Override // androidx.test.internal.platform.ServiceLoaderWrapper.Factory
    public Object create() {
        TestOutputHandler lambda$static$0;
        switch (this.f3757xfbe0c504) {
            case 0:
                return ActivityScenario.m821x3271d0aa();
            case 1:
                return ActivityScenario.m820xfbe0c504();
            case 20:
                return new FileTestStorage();
            default:
                lambda$static$0 = TestOutputEmitter.lambda$static$0();
                return lambda$static$0;
        }
    }

    @Override // androidx.camera.video.internal.encoder.EncoderFactory
    public Encoder createEncoder(Executor executor, EncoderConfig encoderConfig) {
        return new EncoderImpl(executor, encoderConfig);
    }

    @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
    public String getFormattedValue(float f, AxisBase axisBase) {
        return GraphHelper.m1649xfbe0c504(f, axisBase);
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        switch (this.f3757xfbe0c504) {
            case 25:
                return Transition.m513xfbe0c504(f);
            case 26:
                return Transition.m520x95f25580(f);
            case 27:
                return Transition.m518x9e171bf9(f);
            case 28:
                return Transition.m517x9738a56c(f);
            default:
                return Transition.m515x1378447b(f);
        }
    }

    @Override // com.trilead.ssh2.DebugLogger
    public void log(int i, String str, String str2) {
        Connection.m1677x3271d0aa(i, str, str2);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View v, WindowInsetsCompat insets) {
        QRScannerActivity.Companion companion = QRScannerActivity.INSTANCE;
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        v.setPadding(insets2.left, insets2.top, insets2.right, insets2.bottom);
        return WindowInsetsCompat.CONSUMED;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        task.isSuccessful();
    }

    @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateFailureListener
    public void onConsentInfoUpdateFailure(FormError formError) {
        MainBaseActivity.m1480x1db10c9d(formError);
    }

    @Override // com.android.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        ActivityUi.lambda$CheckingApi$79(volleyError);
    }

    @Override // app.tunnel.vpncommons.utils.StreamGobbler.OnLineListener
    public void onLine(String str) {
        Pdnsd.m907xfbe0c504(str);
    }

    @Override // coil3.EventListener.Factory
    public EventListener create(ImageRequest imageRequest) {
        int i = AbstractC0715x83c11998.f4604xfbe0c504;
        return EventListener.NONE;
    }
}
