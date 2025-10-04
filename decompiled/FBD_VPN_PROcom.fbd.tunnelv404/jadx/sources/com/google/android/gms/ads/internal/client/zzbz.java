package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayg;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbz extends zzayg implements zzcb {
    public zzbz(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-4899010071458804749L, -2497356720359748835L, 646795994941732101L, -4198114682488528801L, 502190869612613943L, -3558602974348172752L, 4147434366861012385L, 2260106634133444543L, 4293517558183962842L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzcb
    public final void zzc(String str, String str2) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzbm(1, zza);
    }
}
