package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes2.dex */
final class zzatw implements Runnable {
    private zzatw() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            zzatx.zzc(MessageDigest.getInstance(new ObfuscatedString(new long[]{-4829707536688634896L, -1011723898565001826L}).toString()));
            countDownLatch = zzatx.zzb;
        } catch (NoSuchAlgorithmException unused) {
            countDownLatch = zzatx.zzb;
        } catch (Throwable th) {
            zzatx.zzb.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }

    public /* synthetic */ zzatw(zzatv zzatvVar) {
    }
}
