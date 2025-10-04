package com.google.android.gms.internal.common;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzv implements Iterable {
    final /* synthetic */ CharSequence zza;
    final /* synthetic */ zzx zzb;

    public zzv(zzx zzxVar, CharSequence charSequence) {
        this.zzb = zzxVar;
        this.zza = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Iterator zzh;
        zzh = this.zzb.zzh(this.zza);
        return zzh;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        Iterator it = iterator();
        try {
            String obfuscatedString = new ObfuscatedString(new long[]{-7372548096961273467L, 2120465310607754874L}).toString();
            if (it.hasNext()) {
                sb.append(zzq.zza(it.next(), obfuscatedString));
                while (it.hasNext()) {
                    sb.append((CharSequence) obfuscatedString);
                    sb.append(zzq.zza(it.next(), obfuscatedString));
                }
            }
            sb.append(']');
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
