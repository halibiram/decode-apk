package com.google.android.gms.ads.internal.util;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.ads.zzftt;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzf extends zzftt {
    public zzf(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{4830131587882972218L, -7254097224832419996L, -2451966354047634576L, -2542741030144317564L, 6752484091186322703L}).toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzftt
    public final void zza(Message message) {
        try {
            super.zza(message);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzp();
            zzt.zzL(com.google.android.gms.ads.internal.zzt.zzo().zzd(), th);
            throw th;
        }
    }
}
