package com.google.android.gms.common.internal.service;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.TelemetryData;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zai extends com.google.android.gms.internal.base.zaa implements IInterface {
    public zai(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{4585914506559842821L, -2791007735016818851L, -7109860472329502345L, -6820895190971103918L, 7812920299966586371L, 2250823047636184784L, -6160972139921178912L, 908737493318054504L, -2600096019363008212L, 5883791424784545024L}).toString());
    }

    public final void zae(TelemetryData telemetryData) {
        Parcel zaa = zaa();
        com.google.android.gms.internal.base.zac.zac(zaa, telemetryData);
        zad(1, zaa);
    }
}
