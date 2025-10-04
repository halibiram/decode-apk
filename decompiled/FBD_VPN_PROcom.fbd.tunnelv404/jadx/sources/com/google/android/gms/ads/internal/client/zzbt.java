package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.google.android.gms.internal.ads.zzbal;
import com.google.android.gms.internal.ads.zzbam;
import com.google.android.gms.internal.ads.zzbgz;
import com.google.android.gms.internal.ads.zzbha;
import com.google.android.gms.internal.ads.zzbxb;
import com.google.android.gms.internal.ads.zzbxc;
import com.google.android.gms.internal.ads.zzbxe;
import com.google.android.gms.internal.ads.zzbxf;
import com.google.android.gms.internal.ads.zzbzz;
import com.google.android.gms.internal.ads.zzcaa;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbt extends zzayh implements zzbu {
    public zzbt() {
        super(new ObfuscatedString(new long[]{-8602308461477973620L, -374937400791243925L, -4057038442539180713L, -5436857511115335733L, -4727754023536334589L, 3495543060069295745L, 3214823323694720468L, -174747473464993385L}).toString());
    }

    public static zzbu zzac(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{5368173491732277406L, 8430385725551506056L, -817201778700381301L, -9169349980823386163L, 1698429621175404178L, -4936561339741310618L, -3549619323500906965L, -2944956280245879249L}).toString());
        if (queryLocalInterface instanceof zzbu) {
            return (zzbu) queryLocalInterface;
        }
        return new zzbs(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbh zzbhVar = null;
        zzci zzciVar = null;
        zzbk zzbkVar = null;
        zzdg zzdgVar = null;
        zzby zzbyVar = null;
        zzcf zzcfVar = null;
        zzbe zzbeVar = null;
        zzcb zzcbVar = null;
        switch (i) {
            case 1:
                IObjectWrapper zzn = zzn();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzn);
                return true;
            case 2:
                zzx();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzZ = zzZ();
                parcel2.writeNoException();
                int i3 = zzayi.zza;
                parcel2.writeInt(zzZ ? 1 : 0);
                return true;
            case 4:
                zzl zzlVar = (zzl) zzayi.zza(parcel, zzl.CREATOR);
                zzayi.zzc(parcel);
                boolean zzaa = zzaa(zzlVar);
                parcel2.writeNoException();
                parcel2.writeInt(zzaa ? 1 : 0);
                return true;
            case 5:
                zzz();
                parcel2.writeNoException();
                return true;
            case 6:
                zzB();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-2162760894607575171L, -7726399372816115606L, 2888804343653581334L, 3185184021894439750L, 5400078712000922629L, 3537208920016068424L, 814259045597059700L, -6569800821326897274L}).toString());
                    if (queryLocalInterface instanceof zzbh) {
                        zzbhVar = (zzbh) queryLocalInterface;
                    } else {
                        zzbhVar = new zzbf(readStrongBinder);
                    }
                }
                zzayi.zzc(parcel);
                zzD(zzbhVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(new ObfuscatedString(new long[]{-7236110522266932675L, -7675204315829706117L, 5766424698239623692L, 2590499257527627466L, 904129621752392578L, -979019033561708468L, -5266252876494361752L, 1232679737976047813L, -6347213120594890964L}).toString());
                    if (queryLocalInterface2 instanceof zzcb) {
                        zzcbVar = (zzcb) queryLocalInterface2;
                    } else {
                        zzcbVar = new zzbz(readStrongBinder2);
                    }
                }
                zzayi.zzc(parcel);
                zzG(zzcbVar);
                parcel2.writeNoException();
                return true;
            case 9:
                zzX();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                zzA();
                parcel2.writeNoException();
                return true;
            case 12:
                zzq zzg = zzg();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zzg);
                return true;
            case 13:
                zzq zzqVar = (zzq) zzayi.zza(parcel, zzq.CREATOR);
                zzayi.zzc(parcel);
                zzF(zzqVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbxc zzb = zzbxb.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzM(zzb);
                parcel2.writeNoException();
                return true;
            case 15:
                zzbxf zzb2 = zzbxe.zzb(parcel.readStrongBinder());
                String readString = parcel.readString();
                zzayi.zzc(parcel);
                zzQ(zzb2, readString);
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String zzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(zzs);
                return true;
            case 19:
                zzbha zzb3 = zzbgz.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzO(zzb3);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface(new ObfuscatedString(new long[]{-1330946775140331254L, -2392499992451837861L, -3372876976704871737L, -1589851386370982321L, 4102654645806006189L, -5302868650552395940L, -520048083908872642L, 8928835872887447145L, -2914006105952146733L}).toString());
                    if (queryLocalInterface3 instanceof zzbe) {
                        zzbeVar = (zzbe) queryLocalInterface3;
                    } else {
                        zzbeVar = new zzbc(readStrongBinder3);
                    }
                }
                zzayi.zzc(parcel);
                zzC(zzbeVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface(new ObfuscatedString(new long[]{3197358612109132307L, 8599578649930614690L, 5149268927450449051L, 3860834206121982130L, 5246864739245938173L, 7447297836489356002L, 6782608748554207867L, 6330036222352912967L, 1937034818071670681L, -7754013906490530520L}).toString());
                    if (queryLocalInterface4 instanceof zzcf) {
                        zzcfVar = (zzcf) queryLocalInterface4;
                    } else {
                        zzcfVar = new zzcf(readStrongBinder4);
                    }
                }
                zzayi.zzc(parcel);
                zzab(zzcfVar);
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zzg2 = zzayi.zzg(parcel);
                zzayi.zzc(parcel);
                zzN(zzg2);
                parcel2.writeNoException();
                return true;
            case 23:
                boolean zzY = zzY();
                parcel2.writeNoException();
                int i4 = zzayi.zza;
                parcel2.writeInt(zzY ? 1 : 0);
                return true;
            case 24:
                zzcaa zzb4 = zzbzz.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzS(zzb4);
                parcel2.writeNoException();
                return true;
            case 25:
                String readString2 = parcel.readString();
                zzayi.zzc(parcel);
                zzT(readString2);
                parcel2.writeNoException();
                return true;
            case 26:
                zzdq zzl = zzl();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzl);
                return true;
            case 29:
                zzfk zzfkVar = (zzfk) zzayi.zza(parcel, zzfk.CREATOR);
                zzayi.zzc(parcel);
                zzU(zzfkVar);
                parcel2.writeNoException();
                return true;
            case 30:
                zzdu zzduVar = (zzdu) zzayi.zza(parcel, zzdu.CREATOR);
                zzayi.zzc(parcel);
                zzK(zzduVar);
                parcel2.writeNoException();
                return true;
            case 31:
                String zzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(zzr);
                return true;
            case 32:
                zzcb zzj = zzj();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzj);
                return true;
            case 33:
                zzbh zzi = zzi();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzi);
                return true;
            case 34:
                boolean zzg3 = zzayi.zzg(parcel);
                zzayi.zzc(parcel);
                zzL(zzg3);
                parcel2.writeNoException();
                return true;
            case 35:
                String zzt = zzt();
                parcel2.writeNoException();
                parcel2.writeString(zzt);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface(new ObfuscatedString(new long[]{-1692474192556274694L, 3725535637577945533L, -1767507460643576672L, -2651897140622862945L, 1306185451670798382L, -3158336589007054226L, 835675889280692362L, -7471281074138882466L, 6329914490043149417L}).toString());
                    if (queryLocalInterface5 instanceof zzby) {
                        zzbyVar = (zzby) queryLocalInterface5;
                    } else {
                        zzbyVar = new zzbw(readStrongBinder5);
                    }
                }
                zzayi.zzc(parcel);
                zzE(zzbyVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle zzd = zzd();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zzd);
                return true;
            case 38:
                String readString3 = parcel.readString();
                zzayi.zzc(parcel);
                zzR(readString3);
                parcel2.writeNoException();
                return true;
            case 39:
                zzw zzwVar = (zzw) zzayi.zza(parcel, zzw.CREATOR);
                zzayi.zzc(parcel);
                zzI(zzwVar);
                parcel2.writeNoException();
                return true;
            case 40:
                zzbam zze = zzbal.zze(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzH(zze);
                parcel2.writeNoException();
                return true;
            case 41:
                zzdn zzk = zzk();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzk);
                return true;
            case 42:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface(new ObfuscatedString(new long[]{-878763179419518668L, 4912847339286845632L, 1538585044778794586L, -1382521373150874700L, 8570964999678213165L, 3730646974332204339L, -1870503241232403668L, -7495562276144972180L, -3932236749649199312L}).toString());
                    if (queryLocalInterface6 instanceof zzdg) {
                        zzdgVar = (zzdg) queryLocalInterface6;
                    } else {
                        zzdgVar = new zzde(readStrongBinder6);
                    }
                }
                zzayi.zzc(parcel);
                zzP(zzdgVar);
                parcel2.writeNoException();
                return true;
            case 43:
                zzl zzlVar2 = (zzl) zzayi.zza(parcel, zzl.CREATOR);
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface(new ObfuscatedString(new long[]{-7147817981073352921L, -7942850837284441287L, -1975537484212421360L, -1233134474493128920L, -3789656896580718951L, -8806795553853578542L, -1037855090323370436L, 8530266278657043763L, 9123945048290595741L}).toString());
                    if (queryLocalInterface7 instanceof zzbk) {
                        zzbkVar = (zzbk) queryLocalInterface7;
                    } else {
                        zzbkVar = new zzbi(readStrongBinder7);
                    }
                }
                zzayi.zzc(parcel);
                zzy(zzlVar2, zzbkVar);
                parcel2.writeNoException();
                return true;
            case 44:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzW(asInterface);
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface(new ObfuscatedString(new long[]{-1955081809398329253L, 1610824477692928355L, -7120695105352313369L, -7997019060495676797L, 1697359665636423648L, 2370453024678970886L, -1482678685694078573L, -498774745408115846L, 7345085237715913178L, 8811826186866064851L}).toString());
                    if (queryLocalInterface8 instanceof zzci) {
                        zzciVar = (zzci) queryLocalInterface8;
                    } else {
                        zzciVar = new zzcg(readStrongBinder8);
                    }
                }
                zzayi.zzc(parcel);
                zzJ(zzciVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
