package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbuc extends zzayh implements zzbud {
    public zzbuc() {
        super(new ObfuscatedString(new long[]{493573362121713276L, 924553608934003822L, 6653241696501249119L, -792514018875490658L, 6646490419517145031L, 5250972375463044548L, -9145729435264772196L, 4563340433851293875L, 5030998784973535672L, 2885806324972047169L, 8008616209725156545L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    return false;
                }
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzayi.zzc(parcel);
                zzf(zzeVar);
            } else {
                String readString = parcel.readString();
                zzayi.zzc(parcel);
                zze(readString);
            }
        } else {
            zzg();
        }
        parcel2.writeNoException();
        return true;
    }
}
