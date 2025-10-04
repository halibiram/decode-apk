package com.google.android.play.core.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public class PlayCoreDialogWrapperActivity extends Activity {

    @Nullable
    private ResultReceiver zza;

    private final void zza() {
        ResultReceiver resultReceiver = this.zza;
        if (resultReceiver != null) {
            resultReceiver.send(3, new Bundle());
        }
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        ResultReceiver resultReceiver;
        super.onActivityResult(i, i2, intent);
        if (i == 0 && (resultReceiver = this.zza) != null) {
            if (i2 == -1) {
                resultReceiver.send(1, new Bundle());
            } else if (i2 == 0) {
                resultReceiver.send(2, new Bundle());
            }
        }
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        Intent intent;
        int intExtra = getIntent().getIntExtra(new ObfuscatedString(new long[]{2469057027098439351L, 3787140203621460171L, -5208751205180070896L}).toString(), 0);
        PendingIntent pendingIntent = null;
        if (intExtra != 0) {
            getWindow().getDecorView().setSystemUiVisibility(intExtra);
            Intent intent2 = new Intent();
            intent2.putExtra(new ObfuscatedString(new long[]{1976288152194265088L, -2612381816156780005L, -2398446072535348389L}).toString(), intExtra);
            intent = intent2;
        } else {
            intent = null;
        }
        super.onCreate(bundle);
        if (bundle == null) {
            this.zza = (ResultReceiver) getIntent().getParcelableExtra(new ObfuscatedString(new long[]{-3137698513342959046L, -9161247356268322062L, 8812560674227997400L}).toString());
            Bundle extras = getIntent().getExtras();
            if (extras != null) {
                pendingIntent = (PendingIntent) extras.get(new ObfuscatedString(new long[]{1009490479506364052L, -3180046292286452579L, 8523071521115353841L, -6406986060674940521L}).toString());
            }
            if (extras != null && pendingIntent != null) {
                try {
                    startIntentSenderForResult(pendingIntent.getIntentSender(), 0, intent, 0, 0, 0);
                    return;
                } catch (IntentSender.SendIntentException unused) {
                    zza();
                    finish();
                    return;
                }
            }
            zza();
            finish();
            return;
        }
        this.zza = (ResultReceiver) bundle.getParcelable(new ObfuscatedString(new long[]{6037085550613068098L, 5812444589401935600L, -1857436995533343155L}).toString());
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable(new ObfuscatedString(new long[]{-4008113725086319844L, 2786286551202908536L, 3917548943506215286L}).toString(), this.zza);
    }
}
