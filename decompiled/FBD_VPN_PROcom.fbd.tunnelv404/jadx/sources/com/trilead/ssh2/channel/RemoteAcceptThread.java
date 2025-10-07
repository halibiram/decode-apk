package com.trilead.ssh2.channel;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.log.Logger;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;

/* loaded from: classes3.dex */
public class RemoteAcceptThread extends Thread {
    private static final Logger log = Logger.getLogger(RemoteAcceptThread.class);
    Channel c;
    String remoteConnectedAddress;
    int remoteConnectedPort;
    String remoteOriginatorAddress;
    int remoteOriginatorPort;
    Socket s;
    String targetAddress;
    int targetPort;

    public RemoteAcceptThread(Channel channel, String str, int i, String str2, int i2, String str3, int i3) {
        this.c = channel;
        this.remoteConnectedAddress = str;
        this.remoteConnectedPort = i;
        this.remoteOriginatorAddress = str2;
        this.remoteOriginatorPort = i2;
        this.targetAddress = str3;
        this.targetPort = i3;
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(30, new ObfuscatedString(new long[]{8903538841614525958L, -2332529779018885615L, 1278767559234124192L, 7264992990151596439L}).toString() + str + new ObfuscatedString(new long[]{-5174273258308246635L, -1253287080212099020L}).toString() + i + new ObfuscatedString(new long[]{-4590136931822467498L, -4305492655706127498L}).toString() + str2 + new ObfuscatedString(new long[]{2267124594662483909L, -9032670353307601966L}).toString() + i2);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            Channel channel = this.c;
            channel.cm.sendOpenConfirmation(channel);
            this.s = new Socket(this.targetAddress, this.targetPort);
            Channel channel2 = this.c;
            StreamForwarder streamForwarder = new StreamForwarder(channel2, null, null, channel2.getStdoutStream(), this.s.getOutputStream(), new ObfuscatedString(new long[]{2660923444953396006L, -2899316140744530737L, 2409376126416016801L}).toString());
            StreamForwarder streamForwarder2 = new StreamForwarder(this.c, null, null, this.s.getInputStream(), this.c.getStdinStream(), new ObfuscatedString(new long[]{931492237929618492L, 2831334520488762111L, -5033874277688813000L}).toString());
            streamForwarder.setDaemon(true);
            streamForwarder.start();
            streamForwarder2.run();
            while (streamForwarder.isAlive()) {
                try {
                    streamForwarder.join();
                } catch (InterruptedException unused) {
                    throw new InterruptedIOException();
                }
            }
            Channel channel3 = this.c;
            channel3.cm.closeChannel(channel3, new ObfuscatedString(new long[]{5345297045901842066L, 5903385303542077987L, -8332818857597075487L, 6198006417453724450L, -4562661215060120358L}).toString(), true);
            this.s.close();
        } catch (IOException e) {
            log.log(50, new ObfuscatedString(new long[]{6310951180989786670L, 1937459070475186689L, -416820557170216835L, -3222378821069483709L, 8600610351952177898L}).toString(), e);
            try {
                Channel channel4 = this.c;
                channel4.cm.closeChannel(channel4, new ObfuscatedString(new long[]{6453968289423374721L, 185182740773734994L, -741566144590659090L, -8126382489101763759L, 7313198806033685959L}).toString() + e.getMessage() + new ObfuscatedString(new long[]{-2916184823512079074L, 9214078423716862694L}).toString(), true);
            } catch (IOException unused2) {
            }
            try {
                Socket socket = this.s;
                if (socket != null) {
                    socket.close();
                }
            } catch (IOException unused3) {
            }
        }
    }
}
