package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbta extends zzayh implements zzbtb {
    public zzbta() {
        super(new ObfuscatedString(new long[]{-6359325365650024927L, 2916130387573758653L, 3639077553316377924L, -10624164197307637L, -8430717046878898592L, -8737547319252121287L, 1953507667849563927L, 6149421649942163520L, 7530482949385976938L, 5779013655653099723L, -2830311999911819264L}).toString());
    }

    public static zzbtb zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{3601333517059704143L, 846417921861576378L, 8511581613858950990L, 4624239903386738837L, 2648604872952690825L, 7016498761200763890L, 4882984014751435119L, -7209723762465758617L, 1930851543880787101L, 886964373885439806L, -5628061676187444065L}).toString());
        if (queryLocalInterface instanceof zzbtb) {
            return (zzbtb) queryLocalInterface;
        }
        return new zzbsz(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                zze();
                break;
            case 2:
                zzf();
                break;
            case 3:
                int readInt = parcel.readInt();
                zzayi.zzc(parcel);
                zzg(readInt);
                break;
            case 4:
                zzn();
                break;
            case 5:
                zzp();
                break;
            case 6:
                zzo();
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    boolean z = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1887404642807936306L, 1607543204077527093L, 7463213370994670466L, -2201247638893283904L, 2381740733620890171L, -8351254610215949616L, 143279729647337235L, 3225443390520066923L, -9148708352630662108L, -842111071786444963L, -5610659523312992616L}).toString()) instanceof zzbtf;
                }
                zzayi.zzc(parcel);
                break;
            case 8:
                zzm();
                break;
            case 9:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                zzayi.zzc(parcel);
                zzq(readString, readString2);
                break;
            case 10:
                zzbkf.zzb(parcel.readStrongBinder());
                parcel.readString();
                zzayi.zzc(parcel);
                break;
            case 11:
                zzv();
                break;
            case 12:
                parcel.readString();
                zzayi.zzc(parcel);
                break;
            case 13:
                zzy();
                break;
            case 14:
                zzcag zzcagVar = (zzcag) zzayi.zza(parcel, zzcag.CREATOR);
                zzayi.zzc(parcel);
                zzs(zzcagVar);
                break;
            case 15:
                zzw();
                break;
            case 16:
                zzcak zzb = zzcaj.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzt(zzb);
                break;
            case 17:
                int readInt2 = parcel.readInt();
                zzayi.zzc(parcel);
                zzj(readInt2);
                break;
            case 18:
                zzu();
                break;
            case 19:
                zzayi.zzc(parcel);
                break;
            case 20:
                zzx();
                break;
            case 21:
                String readString3 = parcel.readString();
                zzayi.zzc(parcel);
                zzl(readString3);
                break;
            case 22:
                int readInt3 = parcel.readInt();
                String readString4 = parcel.readString();
                zzayi.zzc(parcel);
                zzi(readInt3, readString4);
                break;
            case 23:
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzayi.zzc(parcel);
                zzh(zzeVar);
                break;
            case 24:
                com.google.android.gms.ads.internal.client.zze zzeVar2 = (com.google.android.gms.ads.internal.client.zze) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzayi.zzc(parcel);
                zzk(zzeVar2);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
