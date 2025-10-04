package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgfl extends zzgew {
    final /* synthetic */ zzgfn zza;
    private final zzgdt zzb;

    public zzgfl(zzgfn zzgfnVar, zzgdt zzgdtVar) {
        this.zza = zzgfnVar;
        this.zzb = zzgdtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgew
    public final /* bridge */ /* synthetic */ Object zza() {
        zzgdt zzgdtVar = this.zzb;
        ListenableFuture zza = zzgdtVar.zza();
        zzfxe.zzd(zza, new ObfuscatedString(new long[]{-6488535906158096548L, -3599564204204243610L, -4184600561221420015L, -3359280578809036048L, 8217387010076555965L, -8952575927431034955L, 8400268798299372427L, -5825308888402344909L, 4566102291976467406L, 8380929241975295388L, -99087493954658827L, 5097614611262917674L, -5170819669060831410L, -360753564827030273L}).toString(), zzgdtVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgew
    public final String zzb() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgew
    public final void zzd(Throwable th) {
        this.zza.zzd(th);
    }

    @Override // com.google.android.gms.internal.ads.zzgew
    public final /* synthetic */ void zze(Object obj) {
        this.zza.zzs((ListenableFuture) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgew
    public final boolean zzg() {
        return this.zza.isDone();
    }
}
