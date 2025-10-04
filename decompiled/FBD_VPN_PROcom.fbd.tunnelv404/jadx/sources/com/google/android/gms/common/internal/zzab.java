package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzab extends com.google.android.gms.internal.common.zza implements IGmsCallbacks {
    public zzab(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-9092451138738313396L, -2203696644180538769L, -5323515619101953536L, -4451043166703662076L, 7594324958087660959L, 1078957302398643313L, -177714074697975639L, -5877928596377284432L}).toString());
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void onPostInitComplete(int i, IBinder iBinder, Bundle bundle) {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeStrongBinder(iBinder);
        com.google.android.gms.internal.common.zzc.zzc(zza, bundle);
        zzC(1, zza);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzb(int i, Bundle bundle) {
        throw null;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzc(int i, IBinder iBinder, zzk zzkVar) {
        throw null;
    }
}
