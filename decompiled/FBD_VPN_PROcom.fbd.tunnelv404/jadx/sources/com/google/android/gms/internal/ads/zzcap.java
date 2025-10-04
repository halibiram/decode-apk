package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzcap extends zzayh implements zzcaq {
    public zzcap() {
        super(new ObfuscatedString(new long[]{3514095657292603141L, -8097086267096916462L, 3440707624258810261L, -8316528493999219027L, -6391907858307656267L, -5421993055261076489L, -2015426444647688580L, -1895682169714190955L, 1112632765621398075L, 1379288954231929550L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzcak zzcaiVar;
        switch (i) {
            case 1:
                zzj();
                break;
            case 2:
                zzg();
                break;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzcaiVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-8334501018676060069L, -956188692079120839L, -8212660914316040211L, 7614381668340205688L, -3103177823180558613L, 6841914203561803586L, -1067315458650741220L, 3445191401210985279L, -2680946429866132296L}).toString());
                    if (queryLocalInterface instanceof zzcak) {
                        zzcaiVar = (zzcak) queryLocalInterface;
                    } else {
                        zzcaiVar = new zzcai(readStrongBinder);
                    }
                }
                zzayi.zzc(parcel);
                zzk(zzcaiVar);
                break;
            case 4:
                int readInt = parcel.readInt();
                zzayi.zzc(parcel);
                zzh(readInt);
                break;
            case 5:
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzayi.zzc(parcel);
                zzi(zzeVar);
                break;
            case 6:
                zzf();
                break;
            case 7:
                zze();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
