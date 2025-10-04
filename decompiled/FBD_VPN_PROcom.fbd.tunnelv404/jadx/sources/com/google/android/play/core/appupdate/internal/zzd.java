package com.google.android.play.core.appupdate.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzd extends zza implements zzf {
    public zzd(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-6185977429401268517L, -8720544398382993441L, 4769859958486869859L, -8016556570515154882L, 993361280159375044L, -4678069613282594599L, -3791669830836652039L, -5449809535863768294L, 2147475420057584873L, 8939178401479305760L}).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.core.appupdate.internal.zzf
    public final void zzc(String str, Bundle bundle, zzh zzhVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zzc.zzc(zza, bundle);
        zza.writeStrongBinder(zzhVar);
        zzb(3, zza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.core.appupdate.internal.zzf
    public final void zzd(String str, Bundle bundle, zzh zzhVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zzc.zzc(zza, bundle);
        zza.writeStrongBinder(zzhVar);
        zzb(2, zza);
    }
}
