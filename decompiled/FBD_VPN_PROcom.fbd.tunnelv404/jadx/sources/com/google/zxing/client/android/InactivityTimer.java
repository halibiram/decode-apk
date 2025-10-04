package com.google.zxing.client.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import com.google.zxing.client.android.InactivityTimer;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class InactivityTimer {
    private static final long INACTIVITY_DELAY_MS = 300000;
    private static final String TAG = "InactivityTimer";
    private Runnable callback;
    private final Context context;
    private boolean onBattery;
    private boolean registered = false;
    private final BroadcastReceiver powerStatusReceiver = new PowerStatusReceiver();
    private Handler handler = new Handler();

    /* loaded from: classes3.dex */
    public final class PowerStatusReceiver extends BroadcastReceiver {
        private PowerStatusReceiver() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$0(boolean z) {
            InactivityTimer.this.onBattery(z);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            final boolean z;
            if (new ObfuscatedString(new long[]{1908466618338683704L, -9172822470017765637L, -8947377860479259735L, 2611010925838482473L, 833180986100331337L, 5985837703914106005L}).toString().equals(intent.getAction())) {
                if (intent.getIntExtra(new ObfuscatedString(new long[]{8795429508780118577L, -8931356437191360555L}).toString(), -1) <= 0) {
                    z = true;
                } else {
                    z = false;
                }
                InactivityTimer.this.handler.post(new Runnable() { // from class: com.google.zxing.client.android.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸
                    @Override // java.lang.Runnable
                    public final void run() {
                        InactivityTimer.PowerStatusReceiver.this.lambda$onReceive$0(z);
                    }
                });
            }
        }
    }

    public InactivityTimer(Context context, Runnable runnable) {
        this.context = context;
        this.callback = runnable;
    }

    private void cancelCallback() {
        this.handler.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBattery(boolean z) {
        this.onBattery = z;
        if (this.registered) {
            activity();
        }
    }

    private void registerReceiver() {
        if (!this.registered) {
            this.context.registerReceiver(this.powerStatusReceiver, new IntentFilter(new ObfuscatedString(new long[]{455489734583678655L, 4089783689183384382L, -6677722993852410997L, -3185625493129914914L, 6462918730406045507L, -8289715286195598082L}).toString()));
            this.registered = true;
        }
    }

    private void unregisterReceiver() {
        if (this.registered) {
            this.context.unregisterReceiver(this.powerStatusReceiver);
            this.registered = false;
        }
    }

    public void activity() {
        cancelCallback();
        if (this.onBattery) {
            this.handler.postDelayed(this.callback, 300000L);
        }
    }

    public void cancel() {
        cancelCallback();
        unregisterReceiver();
    }

    public void start() {
        registerReceiver();
        activity();
    }
}
