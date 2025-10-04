package com.tknetwork.tunnel.thread;

import com.panda912.muddy.ObfuscatedString;
import config.ConfigUtil;
import de.blinkt.openvpn.core.TkLogStatus;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes3.dex */
public class PayloadInjector extends Thread {
    public static int status;
    private Socket a;
    private Socket b;
    private boolean c;

    /* renamed from: config, reason: collision with root package name */
    private ConfigUtil f5781config;
    private boolean d;

    public PayloadInjector() {
    }

    public static void connect(Socket socket, Socket socket2, boolean z) {
        new PayloadInjector(socket, socket2, true, z).start();
        new PayloadInjector(socket2, socket, false, z).start();
    }

    public void addLog(String str) {
        TkLogStatus.logInfo(str);
    }

    @Override // java.lang.Thread
    public void interrupt() {
        super.interrupt();
        try {
            Socket socket = this.a;
            if (socket != null) {
                socket.close();
            }
            Socket socket2 = this.b;
            if (socket2 != null) {
                socket2.close();
            }
        } catch (IOException unused) {
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        int i;
        super.run();
        if (this.c) {
            i = 16384;
        } else {
            i = 32768;
        }
        byte[] bArr = new byte[i];
        try {
            InputStream inputStream = this.a.getInputStream();
            OutputStream outputStream = this.b.getOutputStream();
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    try {
                        try {
                            String str = new String(bArr, 0, read);
                            if (this.c) {
                                outputStream.write(bArr, 0, read);
                                outputStream.flush();
                            } else {
                                String[] split = str.split(new ObfuscatedString(new long[]{-5044329428999082744L, -1891731187749421752L}).toString());
                                if (split[0].startsWith(new ObfuscatedString(new long[]{3537349223083807721L, -5836843701429140265L}).toString())) {
                                    String str2 = split[0];
                                    int parseInt = Integer.parseInt(str2.substring(9, 12));
                                    addLog(str2);
                                    if (parseInt == 200) {
                                        outputStream.write(bArr, 0, read);
                                        outputStream.flush();
                                    } else if (this.d) {
                                        addLog(split[0].split(new ObfuscatedString(new long[]{2512871265084640174L, -1779916110346613251L}).toString())[0] + new ObfuscatedString(new long[]{4497645901892158415L, -3276951695750099362L}).toString());
                                        outputStream.write(new ObfuscatedString(new long[]{8107713269068843371L, 2991086404306098900L, -7527396047074544976L, -9046581997571773049L}).toString().getBytes());
                                        outputStream.flush();
                                    } else {
                                        addLog(split[0].split(new ObfuscatedString(new long[]{-2794237126267652222L, -8608717831157402671L}).toString())[0] + new ObfuscatedString(new long[]{6169826420403915335L, -5060214185264168389L, 618381779607407355L, -2905776566796254789L, -3602295251053825510L}).toString());
                                        outputStream.write(new ObfuscatedString(new long[]{-8375161836898842759L, -4996019964447610440L, -5007925141077901263L, 2943764260491414128L, -715009076155317277L, -1095847017094493666L}).toString().getBytes());
                                        outputStream.flush();
                                    }
                                    status = parseInt;
                                } else {
                                    outputStream.write(bArr, 0, read);
                                    outputStream.flush();
                                }
                            }
                        } catch (IOException unused) {
                        }
                    } catch (Exception unused2) {
                        Socket socket = this.a;
                        if (socket != null) {
                            socket.close();
                        }
                        Socket socket2 = this.b;
                        if (socket2 != null) {
                            socket2.close();
                            return;
                        }
                        return;
                    } catch (Throwable unused3) {
                        Socket socket3 = this.a;
                        if (socket3 != null) {
                            socket3.close();
                        }
                        Socket socket4 = this.b;
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

    public PayloadInjector(Socket socket, Socket socket2, boolean z, boolean z2) {
        this.a = socket;
        this.b = socket2;
        this.c = z;
        this.d = z2;
    }
}
