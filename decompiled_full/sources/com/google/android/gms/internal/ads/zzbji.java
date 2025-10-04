package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbji extends zzayh implements zzbjj {
    public zzbji() {
        super(new ObfuscatedString(new long[]{-1976702634095953502L, 1985961265548222123L, 3319524133715814373L, -1560107341754956840L, 7222421508252377828L, 6403039153746441123L, 3850143813013803571L, 3023210692313027357L, 4824042022430320595L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbku zzbkuVar;
        switch (i) {
            case 2:
                float zze = zze();
                parcel2.writeNoException();
                parcel2.writeFloat(zze);
                return true;
            case 3:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzj(asInterface);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper zzi = zzi();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzi);
                return true;
            case 5:
                float zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeFloat(zzg);
                return true;
            case 6:
                float zzf = zzf();
                parcel2.writeNoException();
                parcel2.writeFloat(zzf);
                return true;
            case 7:
                com.google.android.gms.ads.internal.client.zzdq zzh = zzh();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzh);
                return true;
            case 8:
                boolean zzl = zzl();
                parcel2.writeNoException();
                int i3 = zzayi.zza;
                parcel2.writeInt(zzl ? 1 : 0);
                return true;
            case 9:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbkuVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{4496825079263767864L, -6940285852362734116L, -1325700543817704177L, -8206193294038168150L, 458463816372088628L, -5718108825105165954L, -628087258793299834L, 7818103642737708596L, -7320334460553215860L, 6534824212281037663L, -113417780108494108L, 5785446647776669958L}).toString());
                    if (queryLocalInterface instanceof zzbku) {
                        zzbkuVar = (zzbku) queryLocalInterface;
                    } else {
                        zzbkuVar = new zzbku(readStrongBinder);
                    }
                }
                zzayi.zzc(parcel);
                zzm(zzbkuVar);
                parcel2.writeNoException();
                return true;
            case 10:
                boolean zzk = zzk();
                parcel2.writeNoException();
                int i4 = zzayi.zza;
                parcel2.writeInt(zzk ? 1 : 0);
                return true;
            default:
                return false;
        }
    }
}
