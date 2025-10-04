package com.google.android.gms.dynamic;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zae implements View.OnClickListener {
    final /* synthetic */ Context zaa;
    final /* synthetic */ Intent zab;

    public zae(Context context, Intent intent) {
        this.zaa = context;
        this.zab = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.zaa.startActivity(this.zab);
        } catch (ActivityNotFoundException unused) {
            new ObfuscatedString(new long[]{-8269317323156239545L, 3242844536666524213L, 680105313830041339L, 2405793777647709668L}).toString();
            new ObfuscatedString(new long[]{-6169607403785094577L, -7315656865527854020L, -6365676553616009256L, -8270420864119804923L, -114943134122908858L, -932318364780043771L}).toString();
        }
    }
}
