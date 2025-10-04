package com.google.android.gms.dynamite;

import android.os.Process;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zza extends Thread {
    public zza(ThreadGroup threadGroup, String str) {
        super(threadGroup, new ObfuscatedString(new long[]{-6793738899810130530L, 146495001377691456L, 408891174714671661L}).toString());
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(19);
        synchronized (this) {
            while (true) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    return;
                }
            }
        }
    }
}
