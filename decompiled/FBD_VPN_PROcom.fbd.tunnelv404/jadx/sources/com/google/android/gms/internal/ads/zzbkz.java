package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbkz extends zzayh implements zzbla {
    public zzbkz() {
        super(new ObfuscatedString(new long[]{2940629893060701172L, -4728324352985088530L, -5925634543750218967L, 1298542256760906667L, -2765296761907655317L, 1944006066380174912L, -4659851106287329368L, 4546673672111357979L, 6367420749151779174L, 7008951008100727913L, -5107955313667811061L, 9192230678780262598L}).toString());
    }

    public static zzbla zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-6742618504891708095L, 1267291317890042136L, -8322803933639987183L, -3228455485870931467L, 157191653578336017L, -8722444083117663783L, 8034358255909064750L, 2423478000726299289L, -8043540883460897566L, 7374368486569652920L, 5513057209295823864L, 8335085915049325319L}).toString());
        if (queryLocalInterface instanceof zzbla) {
            return (zzbla) queryLocalInterface;
        }
        return new zzbky(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzblj zzblhVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzblhVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{5667251530816104988L, 270058008006736028L, 4161893069611647945L, 4058707547341642911L, -6335315439290537863L, -8662700861867425903L, 6402343347834450407L, -2848336611312681841L, 7245618404758280274L, 5440035946219343320L}).toString());
                if (queryLocalInterface instanceof zzblj) {
                    zzblhVar = (zzblj) queryLocalInterface;
                } else {
                    zzblhVar = new zzblh(readStrongBinder);
                }
            }
            zzayi.zzc(parcel);
            zze(zzblhVar);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
