package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzer implements Runnable {
    final /* synthetic */ zzet zza;

    public zzer(zzet zzetVar) {
        this.zza = zzetVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeu zzeuVar = this.zza.zza;
        if (zzeu.zzb(zzeuVar) != null) {
            try {
                zzeu.zzb(zzeuVar).zze(1);
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-2524747358666486105L, -1989814521766925474L, 1075691931815112723L, 5960131929353484504L, 6176214819024930836L, 4857342143840392351L}).toString(), e);
            }
        }
    }
}
