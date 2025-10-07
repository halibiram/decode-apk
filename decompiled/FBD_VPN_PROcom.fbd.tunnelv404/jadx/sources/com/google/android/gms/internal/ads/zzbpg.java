package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbpg extends zzayh implements zzbph {
    public zzbpg() {
        super(new ObfuscatedString(new long[]{-283377938314981362L, 724091384835941764L, 8869599607889411932L, -8446759933732094272L, 309859529670674789L, 8785014807074049561L, -4870265328957132789L, 6244119993411749913L, 7453345830788988157L, -376120984022111351L, 3065826262491854570L, -5456402891343030509L}).toString());
    }

    public static zzbph zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-2915868093744529046L, 3257198994036130209L, 9221771847738478421L, 3498887844884630176L, 4091974060976842286L, -357315482247145425L, 4156889496085566419L, -7086238269239035371L, -7096451370309727541L, -6047800894294222783L, 4320128453448448575L, 6423227348351003066L}).toString());
        if (queryLocalInterface instanceof zzbph) {
            return (zzbph) queryLocalInterface;
        }
        return new zzbpf(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            if (i != 3) {
                return false;
            }
            String readString = parcel.readString();
            zzayi.zzc(parcel);
            zze(readString);
        } else {
            zzf();
        }
        parcel2.writeNoException();
        return true;
    }
}
