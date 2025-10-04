package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
final class zzaim extends zzaio {
    public final long zza;
    public final List zzb;
    public final List zzc;

    public zzaim(int i, long j) {
        super(i);
        this.zza = j;
        this.zzb = new ArrayList();
        this.zzc = new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzaio
    public final String toString() {
        List list = this.zzb;
        String zzf = zzaio.zzf(this.zzd);
        String arrays = Arrays.toString(list.toArray());
        String arrays2 = Arrays.toString(this.zzc.toArray());
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(zzf);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-7634040417487547392L, -2230392609699839525L, -5813449475583370807L}).toString());
        m3341xc20437a5.append(arrays);
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1617610021866877014L, -1013960842460314852L, -2776120476821680378L}), m3341xc20437a5, arrays2);
    }

    @Nullable
    public final zzaim zza(int i) {
        int size = this.zzc.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzaim zzaimVar = (zzaim) this.zzc.get(i2);
            if (zzaimVar.zzd == i) {
                return zzaimVar;
            }
        }
        return null;
    }

    @Nullable
    public final zzain zzb(int i) {
        int size = this.zzb.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzain zzainVar = (zzain) this.zzb.get(i2);
            if (zzainVar.zzd == i) {
                return zzainVar;
            }
        }
        return null;
    }

    public final void zzc(zzaim zzaimVar) {
        this.zzc.add(zzaimVar);
    }

    public final void zzd(zzain zzainVar) {
        this.zzb.add(zzainVar);
    }
}
