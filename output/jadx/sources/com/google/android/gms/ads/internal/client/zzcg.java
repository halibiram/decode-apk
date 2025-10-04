package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcg extends zzayg implements zzci {
    public zzcg(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{4964292176060725649L, -5080885419450824527L, 8434039847253892050L, 3391080297675484962L, 2282379010009985121L, -522249264065190527L, -4843182907169414440L, -4944323029546553633L, 3586540420509389200L, -5054852720119864608L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void zzb() {
        zzbm(5, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void zzc() {
        zzbm(3, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void zzd(zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void zze() {
        zzbm(4, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void zzf() {
        zzbm(2, zza());
    }
}
