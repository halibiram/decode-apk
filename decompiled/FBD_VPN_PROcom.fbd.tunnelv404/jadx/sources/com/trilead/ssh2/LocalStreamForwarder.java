package com.trilead.ssh2;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.channel.Channel;
import com.trilead.ssh2.channel.ChannelManager;
import com.trilead.ssh2.channel.LocalAcceptThread;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class LocalStreamForwarder {
    ChannelManager cm;
    Channel cn;
    String host_to_connect;
    LocalAcceptThread lat;
    int port_to_connect;

    public LocalStreamForwarder(ChannelManager channelManager, String str, int i) {
        this.cm = channelManager;
        this.host_to_connect = str;
        this.port_to_connect = i;
        this.cn = channelManager.openDirectTCPIPChannel(str, i, new ObfuscatedString(new long[]{881837454977044174L, -8119274550635823020L, 5215996512491032411L}).toString(), 0);
    }

    public void close() {
        this.cm.closeChannel(this.cn, new ObfuscatedString(new long[]{7203890050851230564L, -5393002800215860632L, -4828669137638578623L, 5979245621045845878L, 5594404417384879067L}).toString(), true);
    }

    public InputStream getInputStream() {
        return this.cn.getStdoutStream();
    }

    public OutputStream getOutputStream() {
        return this.cn.getStdinStream();
    }
}
