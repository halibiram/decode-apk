package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbzw extends zzayh implements zzbzx {
    public zzbzw() {
        super(new ObfuscatedString(new long[]{-3689945801684828259L, -7001421648589087608L, 3677340640164299371L, 2551163921995420713L, 3342682753505285883L, -6742470115986238909L, -5529272161448540490L, -4325602205960561876L, -767748226877658883L, -7412224277292902830L}).toString());
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x000e. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                zzcaa zzcaaVar = null;
                zzbzv zzbzvVar = null;
                if (i != 3) {
                    if (i != 34) {
                        switch (i) {
                            case 5:
                                boolean zzs = zzs();
                                parcel2.writeNoException();
                                int i3 = zzayi.zza;
                                parcel2.writeInt(zzs ? 1 : 0);
                                break;
                            case 6:
                                zzh();
                                parcel2.writeNoException();
                                break;
                            case 7:
                                zzj();
                                parcel2.writeNoException();
                                break;
                            case 8:
                                zze();
                                parcel2.writeNoException();
                                break;
                            case 9:
                                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                zzayi.zzc(parcel);
                                zzi(asInterface);
                                parcel2.writeNoException();
                                break;
                            case 10:
                                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                zzayi.zzc(parcel);
                                zzk(asInterface2);
                                parcel2.writeNoException();
                                break;
                            case 11:
                                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                zzayi.zzc(parcel);
                                zzf(asInterface3);
                                parcel2.writeNoException();
                                break;
                            case 12:
                                String zzd = zzd();
                                parcel2.writeNoException();
                                parcel2.writeString(zzd);
                                break;
                            case 13:
                                String readString = parcel.readString();
                                zzayi.zzc(parcel);
                                zzp(readString);
                                parcel2.writeNoException();
                                break;
                            case 14:
                                com.google.android.gms.ads.internal.client.zzby zzb = com.google.android.gms.ads.internal.client.zzbx.zzb(parcel.readStrongBinder());
                                zzayi.zzc(parcel);
                                zzl(zzb);
                                parcel2.writeNoException();
                                break;
                            case 15:
                                Bundle zzb2 = zzb();
                                parcel2.writeNoException();
                                zzayi.zze(parcel2, zzb2);
                                break;
                            case 16:
                                IBinder readStrongBinder = parcel.readStrongBinder();
                                if (readStrongBinder != null) {
                                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-2208018284484166131L, 5960647471425831764L, -7213189307951574958L, -2539165180820567813L, 6400472302504003369L, -522300775194472739L, -3285920064398669741L, -700078885315308710L, -4394606832070613888L, 4762056842193933946L}).toString());
                                    if (queryLocalInterface instanceof zzbzv) {
                                        zzbzvVar = (zzbzv) queryLocalInterface;
                                    } else {
                                        zzbzvVar = new zzbzv(readStrongBinder);
                                    }
                                }
                                zzayi.zzc(parcel);
                                zzu(zzbzvVar);
                                parcel2.writeNoException();
                                break;
                            case 17:
                                parcel.readString();
                                zzayi.zzc(parcel);
                                parcel2.writeNoException();
                                break;
                            case 18:
                                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                zzayi.zzc(parcel);
                                zzr(asInterface4);
                                parcel2.writeNoException();
                                break;
                            case 19:
                                String readString2 = parcel.readString();
                                zzayi.zzc(parcel);
                                zzm(readString2);
                                parcel2.writeNoException();
                                break;
                            case 20:
                                boolean zzt = zzt();
                                parcel2.writeNoException();
                                int i4 = zzayi.zza;
                                parcel2.writeInt(zzt ? 1 : 0);
                                break;
                            case 21:
                                com.google.android.gms.ads.internal.client.zzdn zzc = zzc();
                                parcel2.writeNoException();
                                zzayi.zzf(parcel2, zzc);
                                break;
                            default:
                                return false;
                        }
                    } else {
                        boolean zzg = zzayi.zzg(parcel);
                        zzayi.zzc(parcel);
                        zzn(zzg);
                        parcel2.writeNoException();
                    }
                } else {
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 != null) {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(new ObfuscatedString(new long[]{-1913019156170507172L, -6830837456958878164L, -4729907638196331997L, -9065762922064902752L, -364553294580954560L, -193066629860754927L, 5790337776512458798L, -428157293067738548L, -6965545475419930424L, 5545846194886383756L, 8736882549574657200L}).toString());
                        if (queryLocalInterface2 instanceof zzcaa) {
                            zzcaaVar = (zzcaa) queryLocalInterface2;
                        } else {
                            zzcaaVar = new zzbzy(readStrongBinder2);
                        }
                    }
                    zzayi.zzc(parcel);
                    zzo(zzcaaVar);
                    parcel2.writeNoException();
                }
            } else {
                zzq();
                parcel2.writeNoException();
            }
        } else {
            zzcab zzcabVar = (zzcab) zzayi.zza(parcel, zzcab.CREATOR);
            zzayi.zzc(parcel);
            zzg(zzcabVar);
            parcel2.writeNoException();
        }
        return true;
    }
}
