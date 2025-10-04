package com.trilead.ssh2;

import com.trilead.ssh2.channel.ChannelManager;
import com.trilead.ssh2.channel.DynamicAcceptThread;
import java.net.InetSocketAddress;

/* loaded from: classes3.dex */
public class DynamicPortForwarder {
    ChannelManager cm;
    DynamicAcceptThread dat;

    public DynamicPortForwarder(ChannelManager channelManager, InetSocketAddress inetSocketAddress, int i) {
        this.cm = channelManager;
        DynamicAcceptThread dynamicAcceptThread = new DynamicAcceptThread(channelManager, inetSocketAddress, i);
        this.dat = dynamicAcceptThread;
        dynamicAcceptThread.setDaemon(true);
        this.dat.start();
    }

    public void close() {
        this.dat.stopWorking();
    }

    public DynamicPortForwarder(ChannelManager channelManager, int i, int i2) {
        this.cm = channelManager;
        DynamicAcceptThread dynamicAcceptThread = new DynamicAcceptThread(channelManager, i, i2);
        this.dat = dynamicAcceptThread;
        dynamicAcceptThread.setDaemon(true);
        this.dat.start();
    }
}
