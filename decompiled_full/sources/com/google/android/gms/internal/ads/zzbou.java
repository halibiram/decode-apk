package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbou extends zzayh implements zzbov {
    public zzbou() {
        super(new ObfuscatedString(new long[]{-3589652923515189248L, -8115959713268540413L, -7826963853548673515L, 4353526249378106291L, -414236406205058993L, -842565975093824800L, -8504051677635398332L, -4772974554129298173L, 7158683153475275970L, -6392771824360333011L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzayi.zza(parcel, ParcelFileDescriptor.CREATOR);
            zzayi.zzc(parcel);
            zzb(parcelFileDescriptor);
            return true;
        }
        return false;
    }
}
