package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbpu extends zzayh implements zzbpv {
    public zzbpu() {
        super(new ObfuscatedString(new long[]{-5627684342057275143L, 7049819730898898666L, 2773030319185559324L, 8293581672574196484L, -5631516085506706412L, 6168975236350057042L, 239050472064801514L, 4238723717036247014L, 3760411136852165817L, -1076334117650209885L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            parcel.readInt();
            zzayi.zzc(parcel);
        }
        parcel2.writeNoException();
        return true;
    }
}
