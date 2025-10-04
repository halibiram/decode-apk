package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbzv extends zzayg implements IInterface {
    public zzbzv(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{1825021854562033829L, -5690523143607556973L, 5405889468717283187L, -2200511683608090486L, -6332755267075056336L, -4517280653033307063L, -4497341835178016426L, 692181869148452368L, 416653062950264118L, -4871348208881728821L}).toString());
    }

    public final void zze(zzbzu zzbzuVar, String str, String str2) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbzuVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzbm(2, zza);
    }
}
