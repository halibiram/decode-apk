package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public abstract class zzbxh extends zzayh implements zzbxi {
    public zzbxh() {
        super(new ObfuscatedString(new long[]{-187520061483064505L, -1488477963655871462L, -7430220399591641023L, 8429831784018007570L, 6536982394680640236L, 5379638234362431251L, 6577016941400700466L, 8841193990157344695L, -9190754197001859562L}).toString());
    }

    public static zzbxi zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-7826148190225948701L, 2714479983147778520L, -7804116048027969747L, 5327898087735085605L, 7916116965518302796L, 12873451223653883L, 8049923954857841204L, -4685239319596731381L, -7016538324121787105L}).toString());
        if (queryLocalInterface instanceof zzbxi) {
            return (zzbxi) queryLocalInterface;
        }
        return new zzbxg(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            String readString = parcel.readString();
            zzayi.zzc(parcel);
            zze(readString);
        } else {
            ArrayList createTypedArrayList = parcel.createTypedArrayList(Uri.CREATOR);
            zzayi.zzc(parcel);
            zzf(createTypedArrayList);
        }
        parcel2.writeNoException();
        return true;
    }
}
