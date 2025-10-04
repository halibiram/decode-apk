package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzdp extends zzayh implements zzdq {
    public zzdp() {
        super(new ObfuscatedString(new long[]{-5524054413303178213L, 7937190618530294149L, 2191128517102861656L, 7873930502919933615L, 1640170019787458609L, -4022935429763101666L, -4730880425160815658L, -3585825583436384296L, -6505317600432241481L}).toString());
    }

    public static zzdq zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{3579750493004070100L, -4488586656773847386L, 3242709644069110102L, 4060987033404348418L, -3758187817768401811L, -3624855457185101718L, -3693407413287313811L, -229806706844094571L, -4532685140982404037L}).toString());
        if (queryLocalInterface instanceof zzdq) {
            return (zzdq) queryLocalInterface;
        }
        return new zzdo(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzdt zzdrVar;
        switch (i) {
            case 1:
                zzl();
                parcel2.writeNoException();
                return true;
            case 2:
                zzk();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzg = zzayi.zzg(parcel);
                zzayi.zzc(parcel);
                zzj(zzg);
                parcel2.writeNoException();
                return true;
            case 4:
                boolean zzq = zzq();
                parcel2.writeNoException();
                int i3 = zzayi.zza;
                parcel2.writeInt(zzq ? 1 : 0);
                return true;
            case 5:
                int zzh = zzh();
                parcel2.writeNoException();
                parcel2.writeInt(zzh);
                return true;
            case 6:
                float zzg2 = zzg();
                parcel2.writeNoException();
                parcel2.writeFloat(zzg2);
                return true;
            case 7:
                float zzf = zzf();
                parcel2.writeNoException();
                parcel2.writeFloat(zzf);
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzdrVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{7572311280892576493L, 5624895380306470982L, -8952230375394779656L, -6380182881323904197L, -2549106561505133044L, 3234823644442965717L, 1252039815497361189L, -8463541186276855222L, 9050066419601543301L, 6917206671153495926L}).toString());
                    if (queryLocalInterface instanceof zzdt) {
                        zzdrVar = (zzdt) queryLocalInterface;
                    } else {
                        zzdrVar = new zzdr(readStrongBinder);
                    }
                }
                zzayi.zzc(parcel);
                zzm(zzdrVar);
                parcel2.writeNoException();
                return true;
            case 9:
                float zze = zze();
                parcel2.writeNoException();
                parcel2.writeFloat(zze);
                return true;
            case 10:
                boolean zzp = zzp();
                parcel2.writeNoException();
                int i4 = zzayi.zza;
                parcel2.writeInt(zzp ? 1 : 0);
                return true;
            case 11:
                zzdt zzi = zzi();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzi);
                return true;
            case 12:
                boolean zzo = zzo();
                parcel2.writeNoException();
                int i5 = zzayi.zza;
                parcel2.writeInt(zzo ? 1 : 0);
                return true;
            case 13:
                zzn();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
