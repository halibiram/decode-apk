package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class zzbli extends zzayh implements zzblj {
    public zzbli() {
        super(new ObfuscatedString(new long[]{-7389910486567432709L, -7106454589138719490L, -856231880275733158L, -6721332912416531528L, -2077630000215938274L, -2549444619898757633L, -1407897652514571330L, -4677721753559748131L, -4503133774969677604L, 4725162098097254443L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzblg zzbleVar;
        switch (i) {
            case 2:
                String zzq = zzq();
                parcel2.writeNoException();
                parcel2.writeString(zzq);
                return true;
            case 3:
                List zzu = zzu();
                parcel2.writeNoException();
                parcel2.writeList(zzu);
                return true;
            case 4:
                String zzo = zzo();
                parcel2.writeNoException();
                parcel2.writeString(zzo);
                return true;
            case 5:
                zzbjm zzk = zzk();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzk);
                return true;
            case 6:
                String zzp = zzp();
                parcel2.writeNoException();
                parcel2.writeString(zzp);
                return true;
            case 7:
                String zzn = zzn();
                parcel2.writeNoException();
                parcel2.writeString(zzn);
                return true;
            case 8:
                double zze = zze();
                parcel2.writeNoException();
                parcel2.writeDouble(zze);
                return true;
            case 9:
                String zzt = zzt();
                parcel2.writeNoException();
                parcel2.writeString(zzt);
                return true;
            case 10:
                String zzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(zzs);
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzdq zzh = zzh();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzh);
                return true;
            case 12:
                String zzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(zzr);
                return true;
            case 13:
                zzx();
                parcel2.writeNoException();
                return true;
            case 14:
                zzbjf zzi = zzi();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzi);
                return true;
            case 15:
                Bundle bundle = (Bundle) zzayi.zza(parcel, Bundle.CREATOR);
                zzayi.zzc(parcel);
                zzz(bundle);
                parcel2.writeNoException();
                return true;
            case 16:
                Bundle bundle2 = (Bundle) zzayi.zza(parcel, Bundle.CREATOR);
                zzayi.zzc(parcel);
                boolean zzI = zzI(bundle2);
                parcel2.writeNoException();
                parcel2.writeInt(zzI ? 1 : 0);
                return true;
            case 17:
                Bundle bundle3 = (Bundle) zzayi.zza(parcel, Bundle.CREATOR);
                zzayi.zzc(parcel);
                zzB(bundle3);
                parcel2.writeNoException();
                return true;
            case 18:
                IObjectWrapper zzm = zzm();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzm);
                return true;
            case 19:
                IObjectWrapper zzl = zzl();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzl);
                return true;
            case 20:
                Bundle zzf = zzf();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zzf);
                return true;
            case 21:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbleVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{7159387155634689030L, 6507094082810102033L, -1667554732774189433L, 5192662883710542370L, 6611082971580073122L, 1733609095448663539L, 752006285196074077L, -3426723648014021054L, -5332537736163946278L, -6603986038731474575L, 2023854908149919376L}).toString());
                    if (queryLocalInterface instanceof zzblg) {
                        zzbleVar = (zzblg) queryLocalInterface;
                    } else {
                        zzbleVar = new zzble(readStrongBinder);
                    }
                }
                zzayi.zzc(parcel);
                zzF(zzbleVar);
                parcel2.writeNoException();
                return true;
            case 22:
                zzw();
                parcel2.writeNoException();
                return true;
            case 23:
                List zzv = zzv();
                parcel2.writeNoException();
                parcel2.writeList(zzv);
                return true;
            case 24:
                boolean zzH = zzH();
                parcel2.writeNoException();
                int i3 = zzayi.zza;
                parcel2.writeInt(zzH ? 1 : 0);
                return true;
            case 25:
                com.google.android.gms.ads.internal.client.zzcw zzb = com.google.android.gms.ads.internal.client.zzcv.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzy(zzb);
                parcel2.writeNoException();
                return true;
            case 26:
                com.google.android.gms.ads.internal.client.zzcs zzb2 = com.google.android.gms.ads.internal.client.zzcr.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzD(zzb2);
                parcel2.writeNoException();
                return true;
            case 27:
                zzC();
                parcel2.writeNoException();
                return true;
            case 28:
                zzA();
                parcel2.writeNoException();
                return true;
            case 29:
                zzbjj zzj = zzj();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzj);
                return true;
            case 30:
                boolean zzG = zzG();
                parcel2.writeNoException();
                int i4 = zzayi.zza;
                parcel2.writeInt(zzG ? 1 : 0);
                return true;
            case 31:
                com.google.android.gms.ads.internal.client.zzdn zzg = zzg();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzg);
                return true;
            case 32:
                com.google.android.gms.ads.internal.client.zzdg zzb3 = com.google.android.gms.ads.internal.client.zzdf.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzE(zzb3);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
