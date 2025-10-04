package com.trilead.ssh2;

/* loaded from: classes3.dex */
public interface InteractiveCallback {
    void connectionLost(Throwable th);

    void log(int i, String str, String str2);

    void onReceiveInfo(int i, String str);

    String[] replyToChallenge(String str, String str2, int i, String[] strArr, boolean[] zArr);
}
