package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcht implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ int zzc;
    final /* synthetic */ zzchw zzd;

    public zzcht(zzchw zzchwVar, String str, String str2, int i) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = zzchwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{977586289895957432L, -6959519151935954640L}).toString(), new ObfuscatedString(new long[]{5475749749172078241L, 3669979557898551404L, -8235573060911073302L}).toString());
        hashMap.put(new ObfuscatedString(new long[]{4471509606436791036L, 3664980801728531725L}).toString(), this.zza);
        hashMap.put(new ObfuscatedString(new long[]{-4189547480654924060L, 8792160876977863353L, -6523834259263823744L}).toString(), this.zzb);
        hashMap.put(new ObfuscatedString(new long[]{3200373677935415823L, -5850260154655348040L, 3113177954413708528L}).toString(), Integer.toString(this.zzc));
        zzchw.zze(this.zzd, new ObfuscatedString(new long[]{5728257169412008622L, -8953917943603549785L, -3399445070498265287L}).toString(), hashMap);
    }
}
