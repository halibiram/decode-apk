package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbtd extends zzayh implements zzbte {
    public zzbtd() {
        super(new ObfuscatedString(new long[]{-6357630075320479396L, 4681974591029377597L, -3206754629697587459L, -8462266527094010592L, -378820061178116252L, 7556261019764759384L, -4771720794776266754L, -4813900891531102125L, 4731260203572739991L, -6984316725509954578L, -8858163817173186335L}).toString());
    }

    public static zzbte zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-9072397863432936698L, 5748176876158273145L, 5834131155690165801L, -299854229305208863L, -4118887508718685183L, 5940094442000964466L, 5465604830154362149L, -3547537047383080913L, -5158664690376089581L, -3549493506428341069L, 4475854049836305306L}).toString());
        if (queryLocalInterface instanceof zzbte) {
            return (zzbte) queryLocalInterface;
        }
        return new zzbtc(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            boolean zzf = zzf();
            parcel2.writeNoException();
            int i3 = zzayi.zza;
            parcel2.writeInt(zzf ? 1 : 0);
        } else {
            IObjectWrapper zze = zze();
            parcel2.writeNoException();
            zzayi.zzf(parcel2, zze);
        }
        return true;
    }
}
