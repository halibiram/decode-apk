package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbsu extends zzayh implements zzbsv {
    public zzbsu() {
        super(new ObfuscatedString(new long[]{-1312362479991913501L, 1926329518822776740L, 1778356288890640995L, 6649085931022149024L, 659833972023278545L, -3369600654549111136L, 8919624680602955687L, 2152531109420408345L, -1804189920008735069L, -3927988763116569566L}).toString());
    }

    public static zzbsv zzf(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-2107868502991255297L, 6334360575065982821L, 3727710008468277520L, 8379032895787109477L, -7600410306034436257L, 6778533335951325023L, -8196309463947937049L, -2839049171138384541L, 5763198081366422727L, -7328027518594421841L}).toString());
        if (queryLocalInterface instanceof zzbsv) {
            return (zzbsv) queryLocalInterface;
        }
        return new zzbst(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return false;
                    }
                    String readString = parcel.readString();
                    zzayi.zzc(parcel);
                    boolean zzd = zzd(readString);
                    parcel2.writeNoException();
                    parcel2.writeInt(zzd ? 1 : 0);
                } else {
                    String readString2 = parcel.readString();
                    zzayi.zzc(parcel);
                    zzbus zzc = zzc(readString2);
                    parcel2.writeNoException();
                    zzayi.zzf(parcel2, zzc);
                }
            } else {
                String readString3 = parcel.readString();
                zzayi.zzc(parcel);
                boolean zze = zze(readString3);
                parcel2.writeNoException();
                parcel2.writeInt(zze ? 1 : 0);
            }
        } else {
            String readString4 = parcel.readString();
            zzayi.zzc(parcel);
            zzbsy zzb = zzb(readString4);
            parcel2.writeNoException();
            zzayi.zzf(parcel2, zzb);
        }
        return true;
    }
}
