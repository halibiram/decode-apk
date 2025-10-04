package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbal extends zzayh implements zzbam {
    public zzbal() {
        super(new ObfuscatedString(new long[]{-7718503913682946748L, 1817507822508127700L, 8767551701155120618L, -6174974535868705280L, 7916880122828378784L, -6759077445001984152L, -7010144078374722481L, -9107064628430626586L, 5793770654343561660L, -2408881383177087792L, 5191293701125646762L}).toString());
    }

    public static zzbam zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{525059175800312151L, -5490662254035062783L, -7801170194251150426L, -3748634273192290199L, 8579576925244173500L, -1467667503269958230L, -929055417072996688L, 1258545363115434677L, -2080316918527462155L, -6778423268980032097L, -5882582719269973532L}).toString());
        if (queryLocalInterface instanceof zzbam) {
            return (zzbam) queryLocalInterface;
        }
        return new zzbak(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbaj zzbahVar;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzayi.zzc(parcel);
                zzc(zzeVar);
            } else {
                parcel.readInt();
                zzayi.zzc(parcel);
            }
        } else {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbahVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-7386210895394438833L, -2634859417364060570L, -3945519452626882714L, -1883801935403346710L, 8809023838057828413L, -2359276084740957042L, 1346884206748892531L, -6088269192143334437L, -2287552880096079413L}).toString());
                if (queryLocalInterface instanceof zzbaj) {
                    zzbahVar = (zzbaj) queryLocalInterface;
                } else {
                    zzbahVar = new zzbah(readStrongBinder);
                }
            }
            zzayi.zzc(parcel);
            zzd(zzbahVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
