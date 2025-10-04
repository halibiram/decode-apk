package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class zzbkc extends zzayh implements zzbkd {
    public zzbkc() {
        super(new ObfuscatedString(new long[]{-2260218370625765502L, 5456639043471028139L, 7760219016378711747L, 8633219344201948217L, -6997963264864702291L, -1476754033007397325L, 344967077184168311L, -8079159603802201036L, 276802966870637018L, -6859418464258598079L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                IObjectWrapper zzg = zzg();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzg);
                return true;
            case 3:
                String zzk = zzk();
                parcel2.writeNoException();
                parcel2.writeString(zzk);
                return true;
            case 4:
                List zzm = zzm();
                parcel2.writeNoException();
                parcel2.writeList(zzm);
                return true;
            case 5:
                String zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeString(zzi);
                return true;
            case 6:
                zzbjm zze = zze();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zze);
                return true;
            case 7:
                String zzj = zzj();
                parcel2.writeNoException();
                parcel2.writeString(zzj);
                return true;
            case 8:
                String zzh = zzh();
                parcel2.writeNoException();
                parcel2.writeString(zzh);
                return true;
            case 9:
                Bundle zzb = zzb();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zzb);
                return true;
            case 10:
                zzn();
                parcel2.writeNoException();
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzdq zzc = zzc();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzc);
                return true;
            case 12:
                Bundle bundle = (Bundle) zzayi.zza(parcel, Bundle.CREATOR);
                zzayi.zzc(parcel);
                zzo(bundle);
                parcel2.writeNoException();
                return true;
            case 13:
                Bundle bundle2 = (Bundle) zzayi.zza(parcel, Bundle.CREATOR);
                zzayi.zzc(parcel);
                boolean zzq = zzq(bundle2);
                parcel2.writeNoException();
                parcel2.writeInt(zzq ? 1 : 0);
                return true;
            case 14:
                Bundle bundle3 = (Bundle) zzayi.zza(parcel, Bundle.CREATOR);
                zzayi.zzc(parcel);
                zzp(bundle3);
                parcel2.writeNoException();
                return true;
            case 15:
                zzbjf zzd = zzd();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzd);
                return true;
            case 16:
                IObjectWrapper zzf = zzf();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzf);
                return true;
            case 17:
                String zzl = zzl();
                parcel2.writeNoException();
                parcel2.writeString(zzl);
                return true;
            default:
                return false;
        }
    }
}
