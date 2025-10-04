package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.ResultPoint;
import com.google.zxing.client.android.DecodeFormatManager;
import com.google.zxing.client.android.DecodeHintManager;
import com.google.zxing.client.android.R;
import com.journeyapps.barcodescanner.camera.CameraParametersCallback;
import com.journeyapps.barcodescanner.camera.CameraSettings;
import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public class DecoratedBarcodeView extends FrameLayout {
    private BarcodeView barcodeView;
    private TextView statusView;
    private TorchListener torchListener;
    private ViewfinderView viewFinder;

    /* loaded from: classes3.dex */
    public interface TorchListener {
        void onTorchOff();

        void onTorchOn();
    }

    /* loaded from: classes3.dex */
    public class WrappedCallback implements BarcodeCallback {
        private BarcodeCallback delegate;

        public WrappedCallback(BarcodeCallback barcodeCallback) {
            this.delegate = barcodeCallback;
        }

        @Override // com.journeyapps.barcodescanner.BarcodeCallback
        public void barcodeResult(BarcodeResult barcodeResult) {
            this.delegate.barcodeResult(barcodeResult);
        }

        @Override // com.journeyapps.barcodescanner.BarcodeCallback
        public void possibleResultPoints(List<ResultPoint> list) {
            Iterator<ResultPoint> it = list.iterator();
            while (it.hasNext()) {
                DecoratedBarcodeView.this.viewFinder.addPossibleResultPoint(it.next());
            }
            this.delegate.possibleResultPoints(list);
        }
    }

    public DecoratedBarcodeView(Context context) {
        super(context);
        initialize();
    }

    private void initialize(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.zxing_view);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.zxing_view_zxing_scanner_layout, R.layout.zxing_barcode_scanner);
        obtainStyledAttributes.recycle();
        View.inflate(getContext(), resourceId, this);
        BarcodeView barcodeView = (BarcodeView) findViewById(R.id.zxing_barcode_surface);
        this.barcodeView = barcodeView;
        if (barcodeView != null) {
            barcodeView.initializeAttributes(attributeSet);
            ViewfinderView viewfinderView = (ViewfinderView) findViewById(R.id.zxing_viewfinder_view);
            this.viewFinder = viewfinderView;
            if (viewfinderView != null) {
                viewfinderView.setCameraPreview(this.barcodeView);
                this.statusView = (TextView) findViewById(R.id.zxing_status_view);
                return;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6407250930753248412L, -4043937734895119849L, -5854198167667373460L, -3337187456863889907L, -4057892198105977337L, -512994148838146925L, -6391633397546518994L, 6456778898484257819L, -4304718826925990737L, 6408757736849786410L, -4742456526229159985L, 2716147089703398709L, 6590649842042980810L, 4599753519120630510L, -5966927971566916682L, -1443359324813316339L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6585017382124470871L, 5921841172048856995L, 2237614531138856422L, -5403780879508782179L, -444023292238334354L, -1027126466747909988L, -8749968448093664497L, 7340483728946460696L, -532930806672947106L, -6927647989104638040L, -143966224351633091L, 3684226028830772560L, -7053606011746128015L, 6830953430990848645L, -8493474587251489474L}).toString());
    }

    public void changeCameraParameters(CameraParametersCallback cameraParametersCallback) {
        this.barcodeView.changeCameraParameters(cameraParametersCallback);
    }

    public void decodeContinuous(BarcodeCallback barcodeCallback) {
        this.barcodeView.decodeContinuous(new WrappedCallback(barcodeCallback));
    }

    public void decodeSingle(BarcodeCallback barcodeCallback) {
        this.barcodeView.decodeSingle(new WrappedCallback(barcodeCallback));
    }

    public BarcodeView getBarcodeView() {
        return (BarcodeView) findViewById(R.id.zxing_barcode_surface);
    }

    public CameraSettings getCameraSettings() {
        return this.barcodeView.getCameraSettings();
    }

    public DecoderFactory getDecoderFactory() {
        return this.barcodeView.getDecoderFactory();
    }

    public TextView getStatusView() {
        return this.statusView;
    }

    public ViewfinderView getViewFinder() {
        return this.viewFinder;
    }

    public void initializeFromIntent(Intent intent) {
        int intExtra;
        Set<BarcodeFormat> parseDecodeFormats = DecodeFormatManager.parseDecodeFormats(intent);
        Map<DecodeHintType, ?> parseDecodeHints = DecodeHintManager.parseDecodeHints(intent);
        CameraSettings cameraSettings = new CameraSettings();
        if (intent.hasExtra(new ObfuscatedString(new long[]{1117175798195356041L, 2277525523079370187L, 3473867218162791187L}).toString()) && (intExtra = intent.getIntExtra(new ObfuscatedString(new long[]{-385177502216910608L, 8621437738880173799L, 7188713951468354710L}).toString(), -1)) >= 0) {
            cameraSettings.setRequestedCameraId(intExtra);
        }
        if (intent.hasExtra(new ObfuscatedString(new long[]{4894312488220445031L, -1096906130221936473L, -607432002522566787L}).toString()) && intent.getBooleanExtra(new ObfuscatedString(new long[]{4172935405589364240L, 5109648352243411649L, -4825978559823518008L}).toString(), false)) {
            setTorchOn();
        }
        String stringExtra = intent.getStringExtra(new ObfuscatedString(new long[]{4179723593297691261L, -5853476037398188228L, -853327100333714776L}).toString());
        if (stringExtra != null) {
            setStatusText(stringExtra);
        }
        int intExtra2 = intent.getIntExtra(new ObfuscatedString(new long[]{-6043376567987754693L, -4615459316654003947L, -8319599512082526340L}).toString(), 0);
        String stringExtra2 = intent.getStringExtra(new ObfuscatedString(new long[]{818338286074622525L, -293494741711025618L, -2157633891907819838L}).toString());
        new MultiFormatReader().setHints(parseDecodeHints);
        this.barcodeView.setCameraSettings(cameraSettings);
        this.barcodeView.setDecoderFactory(new DefaultDecoderFactory(parseDecodeFormats, parseDecodeHints, stringExtra2, intExtra2));
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 24) {
            if (i != 25) {
                if (i == 27 || i == 80) {
                    return true;
                }
                return super.onKeyDown(i, keyEvent);
            }
            setTorchOff();
            return true;
        }
        setTorchOn();
        return true;
    }

    public void pause() {
        this.barcodeView.pause();
    }

    public void pauseAndWait() {
        this.barcodeView.pauseAndWait();
    }

    public void resume() {
        this.barcodeView.resume();
    }

    public void setCameraSettings(CameraSettings cameraSettings) {
        this.barcodeView.setCameraSettings(cameraSettings);
    }

    public void setDecoderFactory(DecoderFactory decoderFactory) {
        this.barcodeView.setDecoderFactory(decoderFactory);
    }

    public void setStatusText(String str) {
        TextView textView = this.statusView;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setTorchListener(TorchListener torchListener) {
        this.torchListener = torchListener;
    }

    public void setTorchOff() {
        this.barcodeView.setTorch(false);
        TorchListener torchListener = this.torchListener;
        if (torchListener != null) {
            torchListener.onTorchOff();
        }
    }

    public void setTorchOn() {
        this.barcodeView.setTorch(true);
        TorchListener torchListener = this.torchListener;
        if (torchListener != null) {
            torchListener.onTorchOn();
        }
    }

    public DecoratedBarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(attributeSet);
    }

    public DecoratedBarcodeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet);
    }

    private void initialize() {
        initialize(null);
    }
}
