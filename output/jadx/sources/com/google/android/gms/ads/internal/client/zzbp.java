package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.google.android.gms.internal.ads.zzbjb;
import com.google.android.gms.internal.ads.zzbkj;
import com.google.android.gms.internal.ads.zzbkk;
import com.google.android.gms.internal.ads.zzbkm;
import com.google.android.gms.internal.ads.zzbkn;
import com.google.android.gms.internal.ads.zzbkp;
import com.google.android.gms.internal.ads.zzbkq;
import com.google.android.gms.internal.ads.zzbks;
import com.google.android.gms.internal.ads.zzbkt;
import com.google.android.gms.internal.ads.zzbkw;
import com.google.android.gms.internal.ads.zzbkx;
import com.google.android.gms.internal.ads.zzbkz;
import com.google.android.gms.internal.ads.zzbla;
import com.google.android.gms.internal.ads.zzbpp;
import com.google.android.gms.internal.ads.zzbpx;
import com.google.android.gms.internal.ads.zzbpy;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbp extends zzayh implements zzbq {
    public zzbp() {
        super(new ObfuscatedString(new long[]{1654881829288934149L, -5477239724987807484L, 5965549453255639555L, -7186400641505769797L, -4620377391607917603L, -3061352559201165715L, -4824765238285155291L, -8201690691670685093L, 3236655814333990774L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbh zzbhVar = null;
        zzcf zzcfVar = null;
        switch (i) {
            case 1:
                zzbn zze = zze();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zze);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{2522936108902781439L, -4141900410508075520L, 8816687697013824188L, 2956752956993676662L, -6413569713499416904L, -463896848384677084L, -6845492859030243134L, -4132399616505720072L}).toString());
                    if (queryLocalInterface instanceof zzbh) {
                        zzbhVar = (zzbh) queryLocalInterface;
                    } else {
                        zzbhVar = new zzbf(readStrongBinder);
                    }
                }
                zzayi.zzc(parcel);
                zzl(zzbhVar);
                parcel2.writeNoException();
                return true;
            case 3:
                zzbkk zzb = zzbkj.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzf(zzb);
                parcel2.writeNoException();
                return true;
            case 4:
                zzbkn zzb2 = zzbkm.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzg(zzb2);
                parcel2.writeNoException();
                return true;
            case 5:
                String readString = parcel.readString();
                zzbkt zzb3 = zzbks.zzb(parcel.readStrongBinder());
                zzbkq zzb4 = zzbkp.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzh(readString, zzb3, zzb4);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbjb zzbjbVar = (zzbjb) zzayi.zza(parcel, zzbjb.CREATOR);
                zzayi.zzc(parcel);
                zzo(zzbjbVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(new ObfuscatedString(new long[]{-3674282260713005690L, 1123843958017941514L, -8455170530493096477L, -7590191094183116158L, -6195535415590387074L, -8181395066980305166L, -2602020079171486243L, -2389877501419961230L, 910459238183524658L, -8223959039280309077L}).toString());
                    if (queryLocalInterface2 instanceof zzcf) {
                        zzcfVar = (zzcf) queryLocalInterface2;
                    } else {
                        zzcfVar = new zzcf(readStrongBinder2);
                    }
                }
                zzayi.zzc(parcel);
                zzq(zzcfVar);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbkx zzb5 = zzbkw.zzb(parcel.readStrongBinder());
                zzq zzqVar = (zzq) zzayi.zza(parcel, zzq.CREATOR);
                zzayi.zzc(parcel);
                zzj(zzb5, zzqVar);
                parcel2.writeNoException();
                return true;
            case 9:
                PublisherAdViewOptions publisherAdViewOptions = (PublisherAdViewOptions) zzayi.zza(parcel, PublisherAdViewOptions.CREATOR);
                zzayi.zzc(parcel);
                zzp(publisherAdViewOptions);
                parcel2.writeNoException();
                return true;
            case 10:
                zzbla zzb6 = zzbkz.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzk(zzb6);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zzbpp zzbppVar = (zzbpp) zzayi.zza(parcel, zzbpp.CREATOR);
                zzayi.zzc(parcel);
                zzn(zzbppVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbpy zzb7 = zzbpx.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzi(zzb7);
                parcel2.writeNoException();
                return true;
            case 15:
                AdManagerAdViewOptions adManagerAdViewOptions = (AdManagerAdViewOptions) zzayi.zza(parcel, AdManagerAdViewOptions.CREATOR);
                zzayi.zzc(parcel);
                zzm(adManagerAdViewOptions);
                parcel2.writeNoException();
                return true;
        }
    }
}
