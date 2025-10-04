package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzexb implements zzexq {
    private final zzcch zza;
    private final zzgey zzb;
    private final Context zzc;

    public zzexb(zzcch zzcchVar, zzgey zzgeyVar, Context context) {
        this.zza = zzcchVar;
        this.zzb = zzgeyVar;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 34;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzexa
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzexb.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzexc zzc() {
        String obfuscatedString;
        Long l;
        String str;
        if (!this.zza.zzp(this.zzc)) {
            return new zzexc(null, null, null, null, null);
        }
        String zzd = this.zza.zzd(this.zzc);
        if (zzd == null) {
            zzd = new ObfuscatedString(new long[]{1034202118442057605L}).toString();
        }
        String str2 = zzd;
        String zzb = this.zza.zzb(this.zzc);
        if (zzb == null) {
            zzb = new ObfuscatedString(new long[]{5773780407410001623L}).toString();
        }
        String str3 = zzb;
        String zza = this.zza.zza(this.zzc);
        if (zza == null) {
            zza = new ObfuscatedString(new long[]{-2630087294208959781L}).toString();
        }
        String str4 = zza;
        if (true != this.zza.zzp(this.zzc)) {
            obfuscatedString = null;
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{925313380188909027L, 3545037793043582679L}).toString();
        }
        if (new ObfuscatedString(new long[]{2818970267990165001L, 5664994925007540454L}).toString().equals(str3)) {
            l = (Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaf);
        } else {
            l = null;
        }
        if (obfuscatedString == null) {
            str = new ObfuscatedString(new long[]{-8141190193337180814L}).toString();
        } else {
            str = obfuscatedString;
        }
        return new zzexc(str2, str3, str4, str, l);
    }
}
