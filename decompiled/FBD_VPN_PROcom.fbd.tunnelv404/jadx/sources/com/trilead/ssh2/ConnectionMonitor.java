package com.trilead.ssh2;

/* loaded from: classes3.dex */
public interface ConnectionMonitor {
    public static final int SERVER_BANNER = 101;

    void connectionLost(Throwable th);

    void log(int i, String str, String str2);

    void onReceiveInfo(int i, String str);
}
