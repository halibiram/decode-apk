package com.trilead.ssh2;

import java.net.Socket;

/* loaded from: classes3.dex */
public interface ProxyData {
    void close();

    Socket openConnection(String str, int i, int i2, int i3);
}
