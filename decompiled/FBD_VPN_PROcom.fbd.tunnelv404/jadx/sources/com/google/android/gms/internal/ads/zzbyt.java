package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbyt extends zzayh implements zzbyu {
    public zzbyt() {
        super(new ObfuscatedString(new long[]{-4129438564343754074L, -771563583867637617L, 3624947158176886408L, 1407838044112034462L, 4970008570943097367L, -5986682223860715324L, -3016673231382142049L, 8291650678334875503L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbyx zzbyxVar = null;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                zzbym zzbymVar = (zzbym) zzayi.zza(parcel, zzbym.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-8242999408457916846L, 5947516214648397272L, -4951010237007183464L, -4608019068493917222L, 1836649544040571464L, -9209204446251683685L, -9189216938800009452L, 4595488540698000442L, 1626730262091457913L, -6550830908885346781L}).toString());
                    if (queryLocalInterface instanceof zzbyx) {
                        zzbyxVar = (zzbyx) queryLocalInterface;
                    } else {
                        zzbyxVar = new zzbyv(readStrongBinder);
                    }
                }
                zzayi.zzc(parcel);
                zze(zzbymVar, zzbyxVar);
            } else {
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(new ObfuscatedString(new long[]{5914920963372389996L, 5226798756613646954L, -8749069315032353718L, -3034612048110449003L, 1210458422729798328L, -6308699553192757846L, -2805551461332878102L, -7924742238632900088L, -5066911345319600438L, 8902993832146444872L}).toString());
                    if (queryLocalInterface2 instanceof zzbyx) {
                    }
                }
                zzayi.zzc(parcel);
            }
        } else {
            zzbyi zzbyiVar = (zzbyi) zzayi.zza(parcel, zzbyi.CREATOR);
            IBinder readStrongBinder3 = parcel.readStrongBinder();
            if (readStrongBinder3 != null) {
                IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface(new ObfuscatedString(new long[]{5692020794954412356L, -9196677077666719708L, 8671814904271459102L, 4838934408260389370L, -9104186774023030767L, 7054249352280393281L, 1269824649401515485L, 5587851952236032001L, -1702257179063316172L, -4632779662216234132L}).toString());
                if (queryLocalInterface3 instanceof zzbyx) {
                    zzbyxVar = (zzbyx) queryLocalInterface3;
                } else {
                    zzbyxVar = new zzbyv(readStrongBinder3);
                }
            }
            zzayi.zzc(parcel);
            zzf(zzbyiVar, zzbyxVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
