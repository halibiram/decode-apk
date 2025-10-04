package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzcam extends zzayh implements zzcan {
    public zzcam() {
        super(new ObfuscatedString(new long[]{4444826346820073116L, 4333409192064819856L, -3276543949457513004L, 3445298426350222634L, -4756660873636659872L, 7682812246842775619L, 641172873473286476L, 132013876332323559L, -7934482139402894487L}).toString());
    }

    public static zzcan zzq(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{4838261020553936826L, -5803946001036443972L, -2931783884626474171L, 794447781358614801L, 3260510030024335098L, -8251285012260281039L, -2609186073769374940L, 4189641923563803919L, 6964458274010781049L}).toString());
        if (queryLocalInterface instanceof zzcan) {
            return (zzcan) queryLocalInterface;
        }
        return new zzcal(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzcau zzcauVar = null;
        zzcau zzcauVar2 = null;
        zzcav zzcavVar = null;
        zzcaq zzcaqVar = null;
        switch (i) {
            case 1:
                com.google.android.gms.ads.internal.client.zzl zzlVar = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-2073935212646420842L, 8051760668997307396L, 2133090066609782956L, 6720639619150726398L, 6101717964254573360L, -8721690420380787103L, -6333004223044589216L, 5828512611988548880L, 4344477418375900358L, -6175945382901266765L, -5003105381737349932L}).toString());
                    if (queryLocalInterface instanceof zzcau) {
                        zzcauVar = (zzcau) queryLocalInterface;
                    } else {
                        zzcauVar = new zzcas(readStrongBinder);
                    }
                }
                zzayi.zzc(parcel);
                zzf(zzlVar, zzcauVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(new ObfuscatedString(new long[]{4279805890375695482L, -6680445532606744471L, -7711279195261373676L, -7761509976605447489L, 5371053097019558796L, -4154381810513738198L, 1336911109971240619L, 3130770103901593199L, -6261441943890221582L, 6253285128139677617L}).toString());
                    if (queryLocalInterface2 instanceof zzcaq) {
                        zzcaqVar = (zzcaq) queryLocalInterface2;
                    } else {
                        zzcaqVar = new zzcao(readStrongBinder2);
                    }
                }
                zzayi.zzc(parcel);
                zzk(zzcaqVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzo = zzo();
                parcel2.writeNoException();
                int i3 = zzayi.zza;
                parcel2.writeInt(zzo ? 1 : 0);
                return true;
            case 4:
                String zze = zze();
                parcel2.writeNoException();
                parcel2.writeString(zze);
                return true;
            case 5:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzm(asInterface);
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface(new ObfuscatedString(new long[]{8827089145390509266L, -8483244507117950738L, 265890601603525536L, 1704251315743578654L, -3913952615899936815L, 1761329133323259037L, 1761822211862501095L, -6871695504151239254L, 2403525441436391822L, -3644272094745233723L, 8332685929226248025L}).toString());
                    if (queryLocalInterface3 instanceof zzcav) {
                        zzcavVar = (zzcav) queryLocalInterface3;
                    } else {
                        zzcavVar = new zzcav(readStrongBinder3);
                    }
                }
                zzayi.zzc(parcel);
                zzp(zzcavVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zzcbb zzcbbVar = (zzcbb) zzayi.zza(parcel, zzcbb.CREATOR);
                zzayi.zzc(parcel);
                zzl(zzcbbVar);
                parcel2.writeNoException();
                return true;
            case 8:
                com.google.android.gms.ads.internal.client.zzdd zzb = com.google.android.gms.ads.internal.client.zzdc.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzi(zzb);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle zzb2 = zzb();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zzb2);
                return true;
            case 10:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                boolean zzg = zzayi.zzg(parcel);
                zzayi.zzc(parcel);
                zzn(asInterface2, zzg);
                parcel2.writeNoException();
                return true;
            case 11:
                zzcak zzd = zzd();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzd);
                return true;
            case 12:
                com.google.android.gms.ads.internal.client.zzdn zzc = zzc();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzc);
                return true;
            case 13:
                com.google.android.gms.ads.internal.client.zzdg zzb3 = com.google.android.gms.ads.internal.client.zzdf.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzj(zzb3);
                parcel2.writeNoException();
                return true;
            case 14:
                com.google.android.gms.ads.internal.client.zzl zzlVar2 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface(new ObfuscatedString(new long[]{-3947257332729068340L, -2847955480803702975L, 2328605655381991988L, 7320815652892570524L, -2003309695038048170L, -1917253474994922592L, -4266833455936289118L, 5938261342502580891L, -1642244579271093266L, -2226151409906405747L, -3305425175653871580L}).toString());
                    if (queryLocalInterface4 instanceof zzcau) {
                        zzcauVar2 = (zzcau) queryLocalInterface4;
                    } else {
                        zzcauVar2 = new zzcas(readStrongBinder4);
                    }
                }
                zzayi.zzc(parcel);
                zzg(zzlVar2, zzcauVar2);
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zzg2 = zzayi.zzg(parcel);
                zzayi.zzc(parcel);
                zzh(zzg2);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
