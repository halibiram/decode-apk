package com.trilead.ssh2.channel;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;

/* loaded from: classes3.dex */
public class LocalAcceptThread extends Thread implements IChannelWorkerThread {
    ChannelManager cm;
    String host_to_connect;
    int port_to_connect;
    final ServerSocket ss;

    public LocalAcceptThread(ChannelManager channelManager, int i, String str, int i2) {
        this.cm = channelManager;
        this.host_to_connect = str;
        this.port_to_connect = i2;
        this.ss = new ServerSocket(i);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean z;
        StreamForwarder streamForwarder;
        try {
            this.cm.registerThread(this);
            while (true) {
                try {
                    Socket accept = this.ss.accept();
                    try {
                        Channel openDirectTCPIPChannel = this.cm.openDirectTCPIPChannel(this.host_to_connect, this.port_to_connect, accept.getInetAddress().getHostAddress(), accept.getPort());
                        try {
                            streamForwarder = new StreamForwarder(openDirectTCPIPChannel, null, null, openDirectTCPIPChannel.getStdoutStream(), accept.getOutputStream(), new ObfuscatedString(new long[]{-8091936532470655357L, -5537984084050272273L, -6566713505379894440L}).toString());
                            z = true;
                        } catch (IOException e) {
                            e = e;
                            z = true;
                        }
                        try {
                            StreamForwarder streamForwarder2 = new StreamForwarder(openDirectTCPIPChannel, streamForwarder, accept, accept.getInputStream(), openDirectTCPIPChannel.stdinStream, new ObfuscatedString(new long[]{788467569625765527L, 6125912683479844363L, -8372049419918181185L}).toString());
                            streamForwarder.setDaemon(true);
                            streamForwarder2.setDaemon(true);
                            streamForwarder.start();
                            streamForwarder2.start();
                        } catch (IOException e2) {
                            e = e2;
                            try {
                                openDirectTCPIPChannel.cm.closeChannel(openDirectTCPIPChannel, new ObfuscatedString(new long[]{3742653886838394242L, 8009790521474644400L, 5435134545019255947L, -6608885380396657700L, -3390170663530541524L, 1105874490253406802L, 3040007496102429890L}).toString() + e.getMessage() + new ObfuscatedString(new long[]{-1991354241865796273L, -3897991538687047801L}).toString(), z);
                            } catch (IOException unused) {
                            }
                        }
                    } catch (IOException unused2) {
                        accept.close();
                    }
                } catch (IOException unused3) {
                    stopWorking();
                    return;
                }
            }
        } catch (IOException unused4) {
            stopWorking();
        }
    }

    @Override // com.trilead.ssh2.channel.IChannelWorkerThread
    public void stopWorking() {
        try {
            this.ss.close();
        } catch (IOException unused) {
        }
    }

    public LocalAcceptThread(ChannelManager channelManager, InetSocketAddress inetSocketAddress, String str, int i) {
        this.cm = channelManager;
        this.host_to_connect = str;
        this.port_to_connect = i;
        ServerSocket serverSocket = new ServerSocket();
        this.ss = serverSocket;
        serverSocket.bind(inetSocketAddress);
    }
}
