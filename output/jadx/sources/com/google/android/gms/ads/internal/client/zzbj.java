package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbj extends zzayh implements zzbk {
    public zzbj() {
        super(new ObfuscatedString(new long[]{-4643756001328651056L, 3757411577228684276L, 2321910865137509368L, -4338876691535046285L, -2067180629316425274L, 4104483090808544943L, 2312934266179635714L, -4111573321987924732L, 5667380530579008437L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zze zzeVar = (zze) zzayi.zza(parcel, zze.CREATOR);
            zzayi.zzc(parcel);
            zzb(zzeVar);
        } else {
            zzc();
        }
        parcel2.writeNoException();
        return true;
    }
}
