package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public abstract class zzccs extends zzayh implements zzcct {
    public zzccs() {
        super(new ObfuscatedString(new long[]{7882996556436194188L, -7296584510779430866L, 2076289901024547154L, 1348803911135859097L, -471073739050193060L, 7602141711785233768L, -2319794737573228252L, -1420377712714848741L, 8587464796789873686L}).toString());
    }

    public static zzcct zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-2084435931917678485L, -2984885966008444908L, 714788155889732564L, -5701317862186261322L, 3618328137131956872L, -6879659979324677429L, 6472130645288884701L, -1748814593634967133L, -7372897926743856224L}).toString());
        if (queryLocalInterface instanceof zzcct) {
            return (zzcct) queryLocalInterface;
        }
        return new zzccr(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzccq zzccqVar = null;
        switch (i) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzccx zzccxVar = (zzccx) zzayi.zza(parcel, zzccx.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{6901951221573323321L, -7274890907933750865L, 4620623758185996306L, -7368884660549271554L, -554359039818027408L, 3152421831902053678L, 608921373054618155L, 5535733057064815036L, -4502471499346048635L}).toString());
                    if (queryLocalInterface instanceof zzccq) {
                        zzccqVar = (zzccq) queryLocalInterface;
                    } else {
                        zzccqVar = new zzcco(readStrongBinder);
                    }
                }
                zzayi.zzc(parcel);
                zzf(asInterface, zzccxVar, zzccqVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzk(asInterface2);
                parcel2.writeNoException();
                return true;
            case 3:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                parcel2.writeNoException();
                zzayi.zzf(parcel2, null);
                return true;
            case 4:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                parcel2.writeNoException();
                zzayi.zzf(parcel2, null);
                return true;
            case 5:
                ArrayList createTypedArrayList = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbxi zzb = zzbxh.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzm(createTypedArrayList, asInterface3, zzb);
                parcel2.writeNoException();
                return true;
            case 6:
                ArrayList createTypedArrayList2 = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbxi zzb2 = zzbxh.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzl(createTypedArrayList2, asInterface4, zzb2);
                parcel2.writeNoException();
                return true;
            case 7:
                zzbxr zzbxrVar = (zzbxr) zzayi.zza(parcel, zzbxr.CREATOR);
                zzayi.zzc(parcel);
                zzg(zzbxrVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzj(asInterface5);
                parcel2.writeNoException();
                return true;
            case 9:
                ArrayList createTypedArrayList3 = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbxi zzb3 = zzbxh.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzi(createTypedArrayList3, asInterface6, zzb3);
                parcel2.writeNoException();
                return true;
            case 10:
                ArrayList createTypedArrayList4 = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbxi zzb4 = zzbxh.zzb(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzh(createTypedArrayList4, asInterface7, zzb4);
                parcel2.writeNoException();
                return true;
            case 11:
                IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String readString = parcel.readString();
                IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                IObjectWrapper zze = zze(asInterface8, asInterface9, readString, asInterface10);
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zze);
                return true;
            default:
                return false;
        }
    }
}
