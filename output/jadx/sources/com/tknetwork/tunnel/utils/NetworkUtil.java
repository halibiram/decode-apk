package com.tknetwork.tunnel.utils;

import com.panda912.muddy.ObfuscatedString;
import de.blinkt.openvpn.core.TkLogStatus;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;

/* loaded from: classes3.dex */
public class NetworkUtil {
    public static void isInternetReachable() {
        try {
            Socket socket = new Socket();
            socket.connect(new InetSocketAddress(new ObfuscatedString(new long[]{5934921520618209795L, 6554068697683083312L}).toString(), 53), 1500);
            socket.close();
        } catch (IOException e) {
            TkLogStatus.logInfo(String.valueOf(e));
        }
    }
}
