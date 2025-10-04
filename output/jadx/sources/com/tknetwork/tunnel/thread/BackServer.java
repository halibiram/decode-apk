package com.tknetwork.tunnel.thread;

import com.panda912.muddy.ObfuscatedString;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;

/* loaded from: classes3.dex */
public class BackServer extends Thread {
    private Socket client;
    private boolean isAlive = true;
    private ServerSocket ss;

    private void log(String str, String str2) {
    }

    public void Stop() {
        ServerSocket serverSocket = this.ss;
        if (serverSocket != null) {
            serverSocket.close();
        }
        Socket socket = this.client;
        if (socket != null) {
            socket.close();
        }
        this.isAlive = false;
        interrupt();
    }

    public SocketAddress getLocalSocketAddr() {
        return this.ss.getLocalSocketAddress();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            ServerSocket serverSocket = new ServerSocket();
            this.ss = serverSocket;
            serverSocket.setReuseAddress(true);
            this.ss.bind(new InetSocketAddress(0));
            log(new ObfuscatedString(new long[]{5493038430775281238L, -4362861612776653979L, -4155366637352808643L}).toString(), new ObfuscatedString(new long[]{6420549358748717508L, -2882975837130577426L, -3714320494871085293L}).toString() + this.ss.getLocalPort());
            while (this.isAlive) {
                try {
                    try {
                        this.client = this.ss.accept();
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.client.getInputStream()));
                        while (bufferedReader.readLine() != null) {
                            OutputStream outputStream = this.client.getOutputStream();
                            outputStream.write(new ObfuscatedString(new long[]{-106609881140272547L, -4475701159821469345L, 1246112408920826005L, -8306428314978042704L, 885306207977270498L}).toString().getBytes());
                            outputStream.flush();
                            if (!this.client.isClosed()) {
                                this.client.close();
                            }
                        }
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    OutputStream outputStream2 = this.client.getOutputStream();
                    outputStream2.write(new ObfuscatedString(new long[]{2657405088830190694L, 768154895802023614L, -1964560500842265679L, -3985983395685703088L, 1266855346153612515L}).toString().getBytes());
                    outputStream2.flush();
                    if (!this.client.isClosed()) {
                        this.client.close();
                    }
                }
            }
        } catch (Exception e) {
            log(new ObfuscatedString(new long[]{-2448477522266617180L, 7838380506518983588L, -687130672582011254L}).toString(), e.getMessage());
        }
        super.run();
    }
}
