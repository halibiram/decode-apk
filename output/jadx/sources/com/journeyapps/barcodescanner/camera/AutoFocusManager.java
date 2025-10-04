package com.journeyapps.barcodescanner.camera;

import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;
import com.journeyapps.barcodescanner.camera.AutoFocusManager;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes3.dex */
public final class AutoFocusManager {
    private static final long AUTO_FOCUS_INTERVAL_MS = 2000;
    private static final Collection<String> FOCUS_MODES_CALLING_AF;
    private static final String TAG = "AutoFocusManager";
    private int MESSAGE_FOCUS = 1;
    private final Camera.AutoFocusCallback autoFocusCallback;
    private final Camera camera;
    private final Handler.Callback focusHandlerCallback;
    private boolean focusing;
    private Handler handler;
    private boolean stopped;
    private final boolean useAutoFocus;

    /* renamed from: com.journeyapps.barcodescanner.camera.AutoFocusManager$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Camera.AutoFocusCallback {
        public AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAutoFocus$0() {
            AutoFocusManager.this.focusing = false;
            AutoFocusManager.this.autoFocusAgainLater();
        }

        @Override // android.hardware.Camera.AutoFocusCallback
        public void onAutoFocus(boolean z, Camera camera) {
            AutoFocusManager.this.handler.post(new Runnable() { // from class: com.journeyapps.barcodescanner.camera.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸
                @Override // java.lang.Runnable
                public final void run() {
                    AutoFocusManager.AnonymousClass2.this.lambda$onAutoFocus$0();
                }
            });
        }
    }

    static {
        ArrayList arrayList = new ArrayList(2);
        FOCUS_MODES_CALLING_AF = arrayList;
        arrayList.add(new ObfuscatedString(new long[]{9169273320422182840L, -5219464852982538018L}).toString());
        arrayList.add(new ObfuscatedString(new long[]{1583143635656453740L, -306365386881663007L}).toString());
    }

    public AutoFocusManager(Camera camera, CameraSettings cameraSettings) {
        Handler.Callback callback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.camera.AutoFocusManager.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == AutoFocusManager.this.MESSAGE_FOCUS) {
                    AutoFocusManager.this.focus();
                    return true;
                }
                return false;
            }
        };
        this.focusHandlerCallback = callback;
        this.autoFocusCallback = new AnonymousClass2();
        this.handler = new Handler(callback);
        this.camera = camera;
        this.useAutoFocus = cameraSettings.isAutoFocusEnabled() && FOCUS_MODES_CALLING_AF.contains(camera.getParameters().getFocusMode());
        new ObfuscatedString(new long[]{8366634056790617761L, 9017961981813064220L, -3046615666465207649L, -6283476202256056400L}).toString();
        new ObfuscatedString(new long[]{8267799448736296175L, -1348478152137204664L, -8464341094384485822L, -7313939088246959168L}).toString();
        start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void autoFocusAgainLater() {
        if (!this.stopped && !this.handler.hasMessages(this.MESSAGE_FOCUS)) {
            Handler handler = this.handler;
            handler.sendMessageDelayed(handler.obtainMessage(this.MESSAGE_FOCUS), AUTO_FOCUS_INTERVAL_MS);
        }
    }

    private void cancelOutstandingTask() {
        this.handler.removeMessages(this.MESSAGE_FOCUS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void focus() {
        if (this.useAutoFocus && !this.stopped && !this.focusing) {
            try {
                this.camera.autoFocus(this.autoFocusCallback);
                this.focusing = true;
            } catch (RuntimeException unused) {
                new ObfuscatedString(new long[]{7116649578554812383L, -3219140117601870836L, -5656356400067506218L, -6693103877599378740L, 8059452263895016348L, -6037904923911454141L}).toString();
                autoFocusAgainLater();
            }
        }
    }

    public void start() {
        this.stopped = false;
        focus();
    }

    public void stop() {
        this.stopped = true;
        this.focusing = false;
        cancelOutstandingTask();
        if (this.useAutoFocus) {
            try {
                this.camera.cancelAutoFocus();
            } catch (RuntimeException unused) {
                new ObfuscatedString(new long[]{-6042824894014916916L, -773430116876771008L, 9647247114626137L, -8819950092222519480L, 7892099750572749136L, -8303740024932648534L, 630892408390049516L}).toString();
            }
        }
    }
}
