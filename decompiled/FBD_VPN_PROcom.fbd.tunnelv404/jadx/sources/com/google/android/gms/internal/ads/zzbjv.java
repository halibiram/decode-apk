package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbjv extends zzayh implements zzbjw {
    public zzbjv() {
        super(new ObfuscatedString(new long[]{2636452193616546396L, 5911167834398664777L, 6918389521111547250L, -2736462873052380463L, 6079500838774417680L, -6248732271891101237L, -5389633245939640962L, -6685342142993985861L, -2818387170634168189L, 516640434179053325L, 558628938410380473L}).toString());
    }

    public static zzbjw zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1253965029260689743L, 3187945668978995531L, -947289127134872129L, 5950663290689406602L, 95800794530135538L, 2276294829762550481L, -6811660872918099636L, 6062752978190305602L, -8486615481737361950L, -45866359579781817L, -491026144606790138L}).toString());
        if (queryLocalInterface instanceof zzbjw) {
            return (zzbjw) queryLocalInterface;
        }
        return new zzbju(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzb(asInterface);
            } else {
                zzd();
            }
        } else {
            IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzayi.zzc(parcel);
            zzc(asInterface2);
        }
        parcel2.writeNoException();
        return true;
    }
}
