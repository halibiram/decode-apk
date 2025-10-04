package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzcr extends zzayh implements zzcs {
    public zzcr() {
        super(new ObfuscatedString(new long[]{-7679270464256330321L, -2846967620224930861L, 1948178097770100025L, -5893201649795460008L, 5997813922090818655L, 4110732471695330594L, 4071751114754317232L, 3528232029699790276L, -370919748179465713L}).toString());
    }

    public static zzcs zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{3685984176973591473L, 854759495280325756L, 8509402706592415975L, 5086800160049971655L, -6965518761259027587L, -6883589786210013907L, 431532702725064199L, 1216680277192701128L, 3336093229726416437L}).toString());
        if (queryLocalInterface instanceof zzcs) {
            return (zzcs) queryLocalInterface;
        }
        return new zzcq(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zze();
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
