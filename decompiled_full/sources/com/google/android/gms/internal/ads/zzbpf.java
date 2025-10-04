package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbpf extends zzayg implements zzbph {
    public zzbpf(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-5087241110452007034L, -8277702405679377571L, 7986922521158438044L, 4454414348634262469L, -8121146596651597922L, 4382318090501186121L, -802890495277962167L, -3001889910585810107L, 1164510676536709450L, -8513124551618139024L, 7163610350193478523L, -5054128379113816444L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zze(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzf() {
        zzbm(2, zza());
    }
}
