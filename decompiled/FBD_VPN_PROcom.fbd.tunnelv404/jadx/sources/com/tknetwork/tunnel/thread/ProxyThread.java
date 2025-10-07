package com.tknetwork.tunnel.thread;

import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.service.c_05;
import com.tknetwork.tunnel.utils.VPNUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes3.dex */
public class ProxyThread extends Thread {
    boolean LoopingThread = true;
    boolean autoReplace;
    String buffReq;
    String buffRes;
    boolean clientToServer;
    Socket incoming;
    Socket outgoing;

    public ProxyThread(Socket socket, Socket socket2, boolean z, String str, String str2, boolean z2) {
        this.autoReplace = false;
        this.buffReq = new ObfuscatedString(new long[]{4908324350325738102L, -9181110780751192124L}).toString();
        new ObfuscatedString(new long[]{-7356134832633432572L, -251690214718963405L}).toString();
        this.incoming = socket;
        this.outgoing = socket2;
        this.clientToServer = z;
        this.buffReq = str;
        this.buffRes = str2;
        this.autoReplace = z2;
    }

    private void Log(String str) {
        if (VPNUtil.getService() != null) {
            c_05.log_message(str);
        }
    }

    public static void connect(Socket socket, Socket socket2, String str, String str2, boolean z) {
        new ProxyThread(socket, socket2, true, str, str2, z).start();
        new ProxyThread(socket2, socket, false, str, str2, z).start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        byte[] bArr;
        if (this.clientToServer) {
            bArr = new byte[Integer.parseInt(this.buffReq)];
        } else {
            bArr = new byte[Integer.parseInt(this.buffRes)];
        }
        try {
            InputStream inputStream = this.incoming.getInputStream();
            OutputStream outputStream = this.outgoing.getOutputStream();
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    try {
                        try {
                            String str = new String(bArr, 0, read);
                            if (this.clientToServer) {
                                outputStream.write(bArr, 0, read);
                                outputStream.flush();
                            } else {
                                String[] split = str.split(new ObfuscatedString(new long[]{-6695859627626034985L, -8188835884986260433L}).toString());
                                if (split[0].startsWith(new ObfuscatedString(new long[]{-3271962216074640625L, -1886360453780376604L}).toString())) {
                                    String str2 = split[0];
                                    String obfuscatedString = new ObfuscatedString(new long[]{-1288293580032900630L, 9110629680789379910L, -996014925602166803L, -7652456411249908898L, -8686647368539927665L, 1650388615878627289L, 225457009003248601L, -384792342613111651L, 420825422215070377L}).toString();
                                    int parseInt = Integer.parseInt(str2.substring(9, 12));
                                    Log(String.format(new ObfuscatedString(new long[]{-2111193564549651586L, 6762188666439613212L, 5345882106026737911L, 2523504737071080303L}).toString(), Integer.valueOf(parseInt), str2.substring(13)));
                                    if (parseInt == 200) {
                                        Log(obfuscatedString);
                                        outputStream.write(bArr, 0, read);
                                        outputStream.flush();
                                    } else {
                                        outputStream.write(new ObfuscatedString(new long[]{-6015361289660994765L, -7351769502419119245L, 5141349876569482965L, -6528546384991789005L, 7888325361418680823L, 457665248746966038L}).toString().getBytes());
                                        outputStream.flush();
                                    }
                                } else {
                                    outputStream.write(bArr, 0, read);
                                    outputStream.flush();
                                }
                            }
                        } catch (IOException unused) {
                        }
                    } catch (Exception unused2) {
                        Socket socket = this.incoming;
                        if (socket != null) {
                            socket.close();
                        }
                        Socket socket2 = this.outgoing;
                        if (socket2 != null) {
                            socket2.close();
                            return;
                        }
                        return;
                    } catch (Throwable unused3) {
                        Socket socket3 = this.incoming;
                        if (socket3 != null) {
                            socket3.close();
                        }
                        Socket socket4 = this.outgoing;
                        if (socket4 != null) {
                            socket4.close();
                        }
                    }
                } else {
                    return;
                }
            }
        } catch (IOException | Exception unused4) {
        }
    }
}
