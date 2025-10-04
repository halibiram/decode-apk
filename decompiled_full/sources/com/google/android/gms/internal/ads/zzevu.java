package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzevu implements zzexq {
    private final zzgey zza;
    private final Context zzb;
    private final Set zzc;

    public zzevu(zzgey zzgeyVar, Context context, Set set) {
        this.zza = zzgeyVar;
        this.zzb = context;
        this.zzc = set;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 27;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevt
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzevu.this.zzc();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0076, code lost:
    
        if (r1.contains(new com.panda912.muddy.ObfuscatedString(new long[]{-6887855834491749619L, 566659199328206302L}).toString()) == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ zzevv zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeU)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfc)).booleanValue()) {
                Set set = this.zzc;
                if (!set.contains(new ObfuscatedString(new long[]{4072640249707236819L, -8766391238560957552L}).toString())) {
                    if (!set.contains(new ObfuscatedString(new long[]{8438712541151849212L, -4057138407247667881L, -6056073765233041552L}).toString())) {
                        if (!set.contains(new ObfuscatedString(new long[]{-2387097860108440277L, -1375704751388378156L}).toString())) {
                        }
                    }
                }
            }
            return new zzevv(com.google.android.gms.ads.internal.zzt.zzA().zze(this.zzb));
        }
        return new zzevv(null);
    }
}
