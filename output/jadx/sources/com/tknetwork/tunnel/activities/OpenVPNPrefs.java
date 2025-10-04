package com.tknetwork.tunnel.activities;

import android.os.Bundle;
import android.preference.PreferenceActivity;
import com.fbd.tunnel.R;

/* loaded from: classes3.dex */
public class OpenVPNPrefs extends PreferenceActivity {
    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.preferences);
    }
}
