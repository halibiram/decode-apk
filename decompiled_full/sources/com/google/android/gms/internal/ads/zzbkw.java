package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbkw extends zzayh implements zzbkx {
    public zzbkw() {
        super(new ObfuscatedString(new long[]{-7721713587586075812L, -1248959091808193546L, -3797376019110229282L, -2461100873669009846L, 6048555901249917899L, 5817244551884734831L, 2484086657046133688L, -5531326436536926646L, -5158420126159826950L, -3218000582447422222L, 4162840674507097917L, 8420993128259221215L}).toString());
    }

    public static zzbkx zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-9083858560903715470L, 3939278675114310628L, 4280758491101808731L, 3229802073103903893L, -3542393220442469968L, -5291971495448271560L, 3798272345836680763L, 237290795661731415L, 5018446320063927411L, 4011892412710612251L, -519876561618216193L, -5786661839795226331L}).toString());
        if (queryLocalInterface instanceof zzbkx) {
            return (zzbkx) queryLocalInterface;
        }
        return new zzbkv(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            com.google.android.gms.ads.internal.client.zzbu zzac = com.google.android.gms.ads.internal.client.zzbt.zzac(parcel.readStrongBinder());
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzayi.zzc(parcel);
            zze(zzac, asInterface);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
