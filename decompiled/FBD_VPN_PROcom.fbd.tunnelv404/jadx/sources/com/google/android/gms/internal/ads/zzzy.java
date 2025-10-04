package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzzy implements zzcp {
    private final zzdm zza;

    public zzzy(zzdm zzdmVar) {
        this.zza = zzdmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final zzcq zza(Context context, zzt zztVar, zzt zztVar2, zzw zzwVar, zzdn zzdnVar, Executor executor, List list, long j) {
        try {
        } catch (Exception e) {
            e = e;
        }
        try {
            return ((zzcp) Class.forName(new ObfuscatedString(new long[]{-4531863382125702734L, -3659682532409379741L, 2643154969903501675L, -3288437833790689369L, 4344709346977278843L, 4665784597796917589L, 8043229600070938929L, -1891172594939072627L, -483252905119643846L}).toString()).getConstructor(zzdm.class).newInstance(this.zza)).zza(context, zztVar, zztVar2, zzwVar, zzdnVar, executor, list, 0L);
        } catch (Exception e2) {
            e = e2;
            if (e instanceof zzdl) {
                throw ((zzdl) e);
            }
            throw new zzdl(e, -9223372036854775807L);
        }
    }
}
