package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbkp extends zzayh implements zzbkq {
    public zzbkp() {
        super(new ObfuscatedString(new long[]{-6239090454176758793L, 9118192243501292981L, -2865512634199224070L, -88601840479009446L, -8109257986352934665L, -489294809742416511L, 9121547435631345363L, -324135438631734016L, 1251877713947967086L, -1501946610454033776L, -755420423866343757L}).toString());
    }

    public static zzbkq zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-80123640068197938L, 6113034497323391082L, 1578046849846533019L, -5891239362244096169L, 714999032346311698L, -3858089647402523308L, -300258700776661070L, -1144539792544472071L, -7214119758499510106L, 2182420696263210274L, -8602864568962581999L}).toString());
        if (queryLocalInterface instanceof zzbkq) {
            return (zzbkq) queryLocalInterface;
        }
        return new zzbko(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbkg zzbkeVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbkeVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-5423542133462669549L, -220143422549179245L, 2743247667429277769L, -137940559628832358L, -2716393217807920899L, -8706367208141646660L, 2633543525435118165L, -8274398947297978302L, 236803387886870817L, -6300999757686459560L, -1618124417347044344L}).toString());
                if (queryLocalInterface instanceof zzbkg) {
                    zzbkeVar = (zzbkg) queryLocalInterface;
                } else {
                    zzbkeVar = new zzbke(readStrongBinder);
                }
            }
            String readString = parcel.readString();
            zzayi.zzc(parcel);
            zze(zzbkeVar, readString);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
