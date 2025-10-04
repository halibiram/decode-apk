package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfxo implements Iterable {
    final /* synthetic */ CharSequence zza;
    final /* synthetic */ zzfxr zzb;

    public zzfxo(zzfxr zzfxrVar, CharSequence charSequence) {
        this.zza = charSequence;
        this.zzb = zzfxrVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Iterator zzg;
        zzg = this.zzb.zzg(this.zza);
        return zzg;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        zzfwt.zzb(sb, this, new ObfuscatedString(new long[]{7826245140529099688L, -3811591870317640332L}).toString());
        sb.append(']');
        return sb.toString();
    }
}
