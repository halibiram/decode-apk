package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzri implements zzpy {
    final /* synthetic */ zzrj zza;

    public /* synthetic */ zzri(zzrj zzrjVar, zzrh zzrhVar) {
        this.zza = zzrjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zza(Exception exc) {
        zzff.zzd(new ObfuscatedString(new long[]{829850753103000286L, 6437796258142442901L, 7408244112930604221L, 5026145043381768470L}).toString(), new ObfuscatedString(new long[]{-1130283460304074168L, 2465940051763364171L, 6289491635322327382L}).toString(), exc);
        zzrj.zzad(this.zza).zzb(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzb() {
        zzrj zzrjVar = this.zza;
        if (zzrj.zzac(zzrjVar) != null) {
            zzrj.zzac(zzrjVar).zzb();
        }
    }
}
