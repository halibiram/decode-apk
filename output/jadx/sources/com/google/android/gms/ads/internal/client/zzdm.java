package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class zzdm extends zzayh implements zzdn {
    public zzdm() {
        super(new ObfuscatedString(new long[]{-90787504119874206L, -8345856239970367379L, 3386673000351233544L, 7774311689352850286L, 7833133067972310498L, -222279902285847431L, 6841352634035904101L, -3995401886248259389L}).toString());
    }

    public static zzdn zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-3091813870199090106L, -2878458695140764781L, -3640842434006178502L, 3245780946811903327L, 7499708136965112241L, 1282108890290229709L, -5509193548891860259L, -5099958650385053831L}).toString());
        if (queryLocalInterface instanceof zzdn) {
            return (zzdn) queryLocalInterface;
        }
        return new zzdl(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                String zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeString(zzg);
                return true;
            case 2:
                String zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeString(zzi);
                return true;
            case 3:
                List zzj = zzj();
                parcel2.writeNoException();
                parcel2.writeTypedList(zzj);
                return true;
            case 4:
                zzu zzf = zzf();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zzf);
                return true;
            case 5:
                Bundle zze = zze();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zze);
                return true;
            case 6:
                String zzh = zzh();
                parcel2.writeNoException();
                parcel2.writeString(zzh);
                return true;
            default:
                return false;
        }
    }
}
