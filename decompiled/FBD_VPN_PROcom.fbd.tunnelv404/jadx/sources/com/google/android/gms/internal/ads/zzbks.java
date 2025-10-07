package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbks extends zzayh implements zzbkt {
    public zzbks() {
        super(new ObfuscatedString(new long[]{-3093080593860050279L, 6755194403885528971L, -3608248222068611857L, 8287793790464478565L, -5734141034011236448L, 7373741904904584987L, -2554544024045387532L, 6073684622161598856L, -57474975516011663L, -350076852919096552L, 3055420483685833779L, 7569916774490979849L}).toString());
    }

    public static zzbkt zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-2794182062070994498L, -776742481855924285L, -610540124310902658L, -1367919896642232941L, -7844426354378913963L, -5191972694765923089L, 1788695752855024291L, -2018404863765133545L, -5333438371787229247L, -3468016427486504098L, -1500766738648171434L, -6681692200524311747L}).toString());
        if (queryLocalInterface instanceof zzbkt) {
            return (zzbkt) queryLocalInterface;
        }
        return new zzbkr(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbkg zzbkeVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbkeVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-7544859170221031171L, 6730803409414081254L, 6432123331438462667L, 4236550999359415750L, 9217255164839507859L, 2551616546037177125L, 4962194108756078390L, -5461778186488065130L, 3896249133801951746L, 1873461637529014000L, 2904829316064773333L}).toString());
                if (queryLocalInterface instanceof zzbkg) {
                    zzbkeVar = (zzbkg) queryLocalInterface;
                } else {
                    zzbkeVar = new zzbke(readStrongBinder);
                }
            }
            zzayi.zzc(parcel);
            zze(zzbkeVar);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
