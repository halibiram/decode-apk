package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzcae extends zzayh implements zzcaf {
    public zzcae() {
        super(new ObfuscatedString(new long[]{-6886392732994624906L, 5273315420479541538L, -2058448412934086999L, 7582747437697705992L, -436386192698714891L, 2874205244153218760L, -8532462445595428766L, -6299012924303168735L, 139212587673770244L, 4620688728823979310L, 5177713731188266447L, 1592750187019552732L, 4379980584288536357L}).toString());
    }

    public static zzcaf zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{376826960963109366L, -4287583977208341536L, -8266817059785374783L, 3539660597230739556L, -1757589050457213432L, -1017926695932109899L, 3367619934928288442L, -5131343348128123682L, -5552689448106509697L, -2391784004541911259L, -9220900701932978631L, 2339927394616747537L, -5954211915192392285L}).toString());
        if (queryLocalInterface instanceof zzcaf) {
            return (zzcaf) queryLocalInterface;
        }
        return new zzcad(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzl(asInterface);
                break;
            case 2:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int readInt = parcel.readInt();
                zzayi.zzc(parcel);
                zzk(asInterface2, readInt);
                break;
            case 3:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzi(asInterface3);
                break;
            case 4:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzj(asInterface4);
                break;
            case 5:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzo(asInterface5);
                break;
            case 6:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzf(asInterface6);
                break;
            case 7:
                IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzcag zzcagVar = (zzcag) zzayi.zza(parcel, zzcag.CREATOR);
                zzayi.zzc(parcel);
                zzm(asInterface7, zzcagVar);
                break;
            case 8:
                IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zze(asInterface8);
                break;
            case 9:
                IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int readInt2 = parcel.readInt();
                zzayi.zzc(parcel);
                zzg(asInterface9, readInt2);
                break;
            case 10:
                IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzh(asInterface10);
                break;
            case 11:
                IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzn(asInterface11);
                break;
            case 12:
                zzayi.zzc(parcel);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
