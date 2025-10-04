package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbwl extends zzayh implements zzbwm {
    public zzbwl() {
        super(new ObfuscatedString(new long[]{889661630011047678L, -5039193799091893237L, -867372442228885653L, -184681967690023204L, -2797162749749508350L, 7185816152303863875L, -2035152923812998052L, 7093316110814968109L, -882033510572806888L}).toString());
    }

    public static zzbwm zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{2692170828085602030L, 7412424958417959272L, 1247949632333194156L, 285331476475359220L, 1702469810045039274L, 5921084450773175283L, -8320712124208566723L, -1017472750711458264L, -5692041388722823782L}).toString());
        if (queryLocalInterface instanceof zzbwm) {
            return (zzbwm) queryLocalInterface;
        }
        return new zzbwk(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                Intent intent = (Intent) zzayi.zza(parcel, Intent.CREATOR);
                zzayi.zzc(parcel);
                zze(intent);
                break;
            case 2:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                zzayi.zzc(parcel);
                zzi(asInterface, readString, readString2);
                break;
            case 3:
                zzh();
                break;
            case 4:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzg(asInterface2);
                break;
            case 5:
                String[] createStringArray = parcel.createStringArray();
                int[] createIntArray = parcel.createIntArray();
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzf(createStringArray, createIntArray, asInterface3);
                break;
            case 6:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.offline.buffering.zza zzaVar = (com.google.android.gms.ads.internal.offline.buffering.zza) zzayi.zza(parcel, com.google.android.gms.ads.internal.offline.buffering.zza.CREATOR);
                zzayi.zzc(parcel);
                zzj(asInterface4, zzaVar);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
