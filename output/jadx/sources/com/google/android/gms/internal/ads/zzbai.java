package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbai extends zzayh implements zzbaj {
    public zzbai() {
        super(new ObfuscatedString(new long[]{7708316834964098716L, -520496793974881755L, -8594331206667177138L, -5982066907970900091L, -8082690965198578716L, 627166387407490669L, 8880708117592887572L, -5791420814647775565L, 7610482507595301023L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbaq zzbaoVar;
        switch (i) {
            case 2:
                com.google.android.gms.ads.internal.client.zzbu zze = zze();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zze);
                return true;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-6104778910647437009L, 1929543947689502653L, -3685107263353289427L, 1179103615000468538L, 6012674888374507139L, 7338231116757254599L, -4506637688907810577L, 326857803007502087L, 8607253033573756972L, 5226352913210687391L, 2715805298223909264L, 1799693238071873355L}).toString());
                    if (queryLocalInterface instanceof zzban) {
                    }
                }
                zzayi.zzc(parcel);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbaoVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(new ObfuscatedString(new long[]{992598035090550220L, 1082156949492086508L, -7390105289207101368L, 7141353564723153367L, 8184417830395592708L, 9202497641659745741L, -2326723609533799542L, 7472842298172113100L, 9004537977362202285L, -7009634835776219066L, -23291619404180987L, -5850424395023771216L}).toString());
                    if (queryLocalInterface2 instanceof zzbaq) {
                        zzbaoVar = (zzbaq) queryLocalInterface2;
                    } else {
                        zzbaoVar = new zzbao(readStrongBinder2);
                    }
                }
                zzayi.zzc(parcel);
                zzi(asInterface, zzbaoVar);
                parcel2.writeNoException();
                return true;
            case 5:
                com.google.android.gms.ads.internal.client.zzdn zzf = zzf();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzf);
                return true;
            case 6:
                boolean zzg = zzayi.zzg(parcel);
                zzayi.zzc(parcel);
                zzg(zzg);
                parcel2.writeNoException();
                return true;
            case 7:
                com.google.android.gms.ads.internal.client.zzdg zzb = com.google.android.gms.ads.internal.client.zzdf.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzh(zzb);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
