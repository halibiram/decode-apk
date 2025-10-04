package com.journeyapps.barcodescanner;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPoint;
import com.google.zxing.client.android.R;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class BarcodeView extends CameraPreview {
    private BarcodeCallback callback;
    private DecodeMode decodeMode;
    private DecoderFactory decoderFactory;
    private DecoderThread decoderThread;
    private final Handler.Callback resultCallback;
    private Handler resultHandler;

    /* loaded from: classes3.dex */
    public enum DecodeMode {
        NONE,
        SINGLE,
        CONTINUOUS
    }

    public BarcodeView(Context context) {
        super(context);
        this.decodeMode = DecodeMode.NONE;
        this.callback = null;
        this.resultCallback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.BarcodeView.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i = message.what;
                if (i == R.id.zxing_decode_succeeded) {
                    BarcodeResult barcodeResult = (BarcodeResult) message.obj;
                    if (barcodeResult != null && BarcodeView.this.callback != null && BarcodeView.this.decodeMode != DecodeMode.NONE) {
                        BarcodeView.this.callback.barcodeResult(barcodeResult);
                        if (BarcodeView.this.decodeMode == DecodeMode.SINGLE) {
                            BarcodeView.this.stopDecoding();
                        }
                    }
                    return true;
                }
                if (i == R.id.zxing_decode_failed) {
                    return true;
                }
                if (i == R.id.zxing_possible_result_points) {
                    List<ResultPoint> list = (List) message.obj;
                    if (BarcodeView.this.callback != null && BarcodeView.this.decodeMode != DecodeMode.NONE) {
                        BarcodeView.this.callback.possibleResultPoints(list);
                    }
                    return true;
                }
                return false;
            }
        };
        initialize();
    }

    private Decoder createDecoder() {
        if (this.decoderFactory == null) {
            this.decoderFactory = createDefaultDecoderFactory();
        }
        DecoderResultPointCallback decoderResultPointCallback = new DecoderResultPointCallback();
        HashMap hashMap = new HashMap();
        hashMap.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, decoderResultPointCallback);
        Decoder createDecoder = this.decoderFactory.createDecoder(hashMap);
        decoderResultPointCallback.setDecoder(createDecoder);
        return createDecoder;
    }

    private void initialize() {
        this.decoderFactory = new DefaultDecoderFactory();
        this.resultHandler = new Handler(this.resultCallback);
    }

    private void startDecoderThread() {
        stopDecoderThread();
        if (this.decodeMode != DecodeMode.NONE && isPreviewActive()) {
            DecoderThread decoderThread = new DecoderThread(getCameraInstance(), createDecoder(), this.resultHandler);
            this.decoderThread = decoderThread;
            decoderThread.setCropRect(getPreviewFramingRect());
            this.decoderThread.start();
        }
    }

    private void stopDecoderThread() {
        DecoderThread decoderThread = this.decoderThread;
        if (decoderThread != null) {
            decoderThread.stop();
            this.decoderThread = null;
        }
    }

    public DecoderFactory createDefaultDecoderFactory() {
        return new DefaultDecoderFactory();
    }

    public void decodeContinuous(BarcodeCallback barcodeCallback) {
        this.decodeMode = DecodeMode.CONTINUOUS;
        this.callback = barcodeCallback;
        startDecoderThread();
    }

    public void decodeSingle(BarcodeCallback barcodeCallback) {
        this.decodeMode = DecodeMode.SINGLE;
        this.callback = barcodeCallback;
        startDecoderThread();
    }

    public DecoderFactory getDecoderFactory() {
        return this.decoderFactory;
    }

    @Override // com.journeyapps.barcodescanner.CameraPreview
    public void pause() {
        stopDecoderThread();
        super.pause();
    }

    @Override // com.journeyapps.barcodescanner.CameraPreview
    public void previewStarted() {
        super.previewStarted();
        startDecoderThread();
    }

    public void setDecoderFactory(DecoderFactory decoderFactory) {
        Util.validateMainThread();
        this.decoderFactory = decoderFactory;
        DecoderThread decoderThread = this.decoderThread;
        if (decoderThread != null) {
            decoderThread.setDecoder(createDecoder());
        }
    }

    public void stopDecoding() {
        this.decodeMode = DecodeMode.NONE;
        this.callback = null;
        stopDecoderThread();
    }

    public BarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.decodeMode = DecodeMode.NONE;
        this.callback = null;
        this.resultCallback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.BarcodeView.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i = message.what;
                if (i == R.id.zxing_decode_succeeded) {
                    BarcodeResult barcodeResult = (BarcodeResult) message.obj;
                    if (barcodeResult != null && BarcodeView.this.callback != null && BarcodeView.this.decodeMode != DecodeMode.NONE) {
                        BarcodeView.this.callback.barcodeResult(barcodeResult);
                        if (BarcodeView.this.decodeMode == DecodeMode.SINGLE) {
                            BarcodeView.this.stopDecoding();
                        }
                    }
                    return true;
                }
                if (i == R.id.zxing_decode_failed) {
                    return true;
                }
                if (i == R.id.zxing_possible_result_points) {
                    List<ResultPoint> list = (List) message.obj;
                    if (BarcodeView.this.callback != null && BarcodeView.this.decodeMode != DecodeMode.NONE) {
                        BarcodeView.this.callback.possibleResultPoints(list);
                    }
                    return true;
                }
                return false;
            }
        };
        initialize();
    }

    public BarcodeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.decodeMode = DecodeMode.NONE;
        this.callback = null;
        this.resultCallback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.BarcodeView.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == R.id.zxing_decode_succeeded) {
                    BarcodeResult barcodeResult = (BarcodeResult) message.obj;
                    if (barcodeResult != null && BarcodeView.this.callback != null && BarcodeView.this.decodeMode != DecodeMode.NONE) {
                        BarcodeView.this.callback.barcodeResult(barcodeResult);
                        if (BarcodeView.this.decodeMode == DecodeMode.SINGLE) {
                            BarcodeView.this.stopDecoding();
                        }
                    }
                    return true;
                }
                if (i2 == R.id.zxing_decode_failed) {
                    return true;
                }
                if (i2 == R.id.zxing_possible_result_points) {
                    List<ResultPoint> list = (List) message.obj;
                    if (BarcodeView.this.callback != null && BarcodeView.this.decodeMode != DecodeMode.NONE) {
                        BarcodeView.this.callback.possibleResultPoints(list);
                    }
                    return true;
                }
                return false;
            }
        };
        initialize();
    }
}
