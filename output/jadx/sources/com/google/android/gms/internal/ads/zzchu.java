package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzchu implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzchw zzd;

    public zzchu(zzchw zzchwVar, String str, String str2, long j) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
        this.zzd = zzchwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{7685088119709513558L, 4061746946745858277L}).toString(), new ObfuscatedString(new long[]{3323623683713343499L, 107297913771649194L, -3222846604189779185L}).toString());
        hashMap.put(new ObfuscatedString(new long[]{-8801005747661983449L, -4644888452059482298L}).toString(), this.zza);
        hashMap.put(new ObfuscatedString(new long[]{-7936732038617238200L, -7207870352110774231L, 2536526352777067610L}).toString(), this.zzb);
        hashMap.put(new ObfuscatedString(new long[]{-1253845166567607975L, 1373852619083984158L, -3459651417190756786L}).toString(), Long.toString(this.zzc));
        zzchw.zze(this.zzd, new ObfuscatedString(new long[]{-461578140721515130L, -3677974935785244867L, 8818769299728909335L}).toString(), hashMap);
    }
}
