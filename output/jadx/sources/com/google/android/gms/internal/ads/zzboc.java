package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzboc extends zzayg implements zzboe {
    public zzboc(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{5214588608912302730L, 355665150637254804L, 6496365248629687187L, -1607367332758034104L, -5574839981524615634L, 4604644142014235759L, -1804327196370971752L, -4971640173087676320L, 4594071462793243941L, 3622980736286812773L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzb(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(1, zza);
    }
}
