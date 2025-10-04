package com.journeyapps.barcodescanner;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.google.zxing.LuminanceSource;
import com.google.zxing.Result;
import com.google.zxing.client.android.R;
import com.journeyapps.barcodescanner.camera.CameraInstance;
import com.journeyapps.barcodescanner.camera.PreviewCallback;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class DecoderThread {
    private static final String TAG = "DecoderThread";
    private CameraInstance cameraInstance;
    private Rect cropRect;
    private Decoder decoder;
    private Handler handler;
    private Handler resultHandler;
    private HandlerThread thread;
    private boolean running = false;
    private final Object LOCK = new Object();
    private final Handler.Callback callback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.DecoderThread.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == R.id.zxing_decode) {
                DecoderThread.this.decode((SourceData) message.obj);
                return true;
            }
            if (i == R.id.zxing_preview_failed) {
                DecoderThread.this.requestNextPreview();
                return true;
            }
            return true;
        }
    };
    private final PreviewCallback previewCallback = new PreviewCallback() { // from class: com.journeyapps.barcodescanner.DecoderThread.2
        @Override // com.journeyapps.barcodescanner.camera.PreviewCallback
        public void onPreview(SourceData sourceData) {
            synchronized (DecoderThread.this.LOCK) {
                try {
                    if (DecoderThread.this.running) {
                        DecoderThread.this.handler.obtainMessage(R.id.zxing_decode, sourceData).sendToTarget();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.journeyapps.barcodescanner.camera.PreviewCallback
        public void onPreviewError(Exception exc) {
            synchronized (DecoderThread.this.LOCK) {
                try {
                    if (DecoderThread.this.running) {
                        DecoderThread.this.handler.obtainMessage(R.id.zxing_preview_failed).sendToTarget();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    public DecoderThread(CameraInstance cameraInstance, Decoder decoder, Handler handler) {
        Util.validateMainThread();
        this.cameraInstance = cameraInstance;
        this.decoder = decoder;
        this.resultHandler = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void decode(SourceData sourceData) {
        Result result;
        System.currentTimeMillis();
        sourceData.setCropRect(this.cropRect);
        LuminanceSource createSource = createSource(sourceData);
        if (createSource != null) {
            result = this.decoder.decode(createSource);
        } else {
            result = null;
        }
        if (result != null) {
            System.currentTimeMillis();
            new ObfuscatedString(new long[]{3623283571589487518L, -5691717779781792084L, 8235966266607683809L, -5663531633002328188L}).toString();
            new ObfuscatedString(new long[]{5629912445177233997L, -1215913127913950201L}).toString();
            if (this.resultHandler != null) {
                Message obtain = Message.obtain(this.resultHandler, R.id.zxing_decode_succeeded, new BarcodeResult(result, sourceData));
                obtain.setData(new Bundle());
                obtain.sendToTarget();
            }
        } else {
            Handler handler = this.resultHandler;
            if (handler != null) {
                Message.obtain(handler, R.id.zxing_decode_failed).sendToTarget();
            }
        }
        if (this.resultHandler != null) {
            Message.obtain(this.resultHandler, R.id.zxing_possible_result_points, BarcodeResult.transformResultPoints(this.decoder.getPossibleResultPoints(), sourceData)).sendToTarget();
        }
        requestNextPreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestNextPreview() {
        this.cameraInstance.requestPreview(this.previewCallback);
    }

    public LuminanceSource createSource(SourceData sourceData) {
        if (this.cropRect == null) {
            return null;
        }
        return sourceData.createSource();
    }

    public Rect getCropRect() {
        return this.cropRect;
    }

    public Decoder getDecoder() {
        return this.decoder;
    }

    public void setCropRect(Rect rect) {
        this.cropRect = rect;
    }

    public void setDecoder(Decoder decoder) {
        this.decoder = decoder;
    }

    public void start() {
        Util.validateMainThread();
        HandlerThread handlerThread = new HandlerThread(TAG);
        this.thread = handlerThread;
        handlerThread.start();
        this.handler = new Handler(this.thread.getLooper(), this.callback);
        this.running = true;
        requestNextPreview();
    }

    public void stop() {
        Util.validateMainThread();
        synchronized (this.LOCK) {
            this.running = false;
            this.handler.removeCallbacksAndMessages(null);
            this.thread.quit();
        }
    }
}
