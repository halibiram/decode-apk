package com.tknetwork.tunnel.activities;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class OpenVPNDisconnect extends MainBaseActivity {
    private static final String TAG = new ObfuscatedString(new long[]{-7040867677579628431L, -1073419187888226077L, 4547487744868049944L, -9183176082204429378L}).toString();

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new ObfuscatedString(new long[]{-516448908869681867L, -6389680144211478437L, -7279534123262282459L, -3423392737057733534L}).toString();
        new ObfuscatedString(new long[]{8208082088446479111L, -6661631648890150628L, -3314159035810859324L}).toString();
        submitDisconnectIntent(false);
        finish();
    }
}
