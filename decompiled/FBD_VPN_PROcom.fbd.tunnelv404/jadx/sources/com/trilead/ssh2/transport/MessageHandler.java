package com.trilead.ssh2.transport;

/* loaded from: classes3.dex */
public interface MessageHandler {
    void handleEndMessage(Throwable th);

    void handleMessage(byte[] bArr, int i);
}
