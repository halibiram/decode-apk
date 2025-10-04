package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzdj;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbsr;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public final class OutOfContextTestingActivity extends Activity {

    @NonNull
    @KeepForSdk
    public static final String CLASS_NAME = new ObfuscatedString(new long[]{1206636963373958229L, -3480889545368560109L, -6085074336990404021L, -1467904508984808200L, -1463869716900953982L, -474139717543508677L, 3084822345349013921L, 3661607729028321405L}).toString();

    @NonNull
    @KeepForSdk
    public static final String AD_UNIT_KEY = new ObfuscatedString(new long[]{910701648649604189L, 3548414909645107365L}).toString();

    @Override // android.app.Activity
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        zzdj zzf = zzay.zza().zzf(this, new zzbsr());
        if (zzf == null) {
            finish();
            return;
        }
        setContentView(R.layout.admob_empty_layout);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.layout);
        Intent intent = getIntent();
        if (intent == null) {
            finish();
            return;
        }
        String stringExtra = intent.getStringExtra(new ObfuscatedString(new long[]{2207137731422940872L, 2508789240999695378L}).toString());
        if (stringExtra == null) {
            finish();
            return;
        }
        try {
            zzf.zze(stringExtra, ObjectWrapper.wrap(this), ObjectWrapper.wrap(linearLayout));
        } catch (RemoteException unused) {
            finish();
        }
    }
}
