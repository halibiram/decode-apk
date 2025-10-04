package com.trilead.ssh2.channel;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes3.dex */
public class StreamForwarder extends Thread {
    byte[] buffer = new byte[8192];
    Channel c;
    InputStream is;
    String mode;
    OutputStream os;
    Socket s;
    StreamForwarder sibling;

    public StreamForwarder(Channel channel, StreamForwarder streamForwarder, Socket socket, InputStream inputStream, OutputStream outputStream, String str) {
        this.is = inputStream;
        this.os = outputStream;
        this.mode = str;
        this.c = channel;
        this.sibling = streamForwarder;
        this.s = socket;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Socket socket;
        while (true) {
            try {
                try {
                    try {
                        int read = this.is.read(this.buffer);
                        if (read <= 0) {
                            try {
                                break;
                            } catch (IOException unused) {
                            }
                        } else {
                            this.os.write(this.buffer, 0, read);
                            this.os.flush();
                        }
                    } catch (Throwable th) {
                        try {
                            this.os.close();
                        } catch (IOException unused2) {
                        }
                        try {
                            this.is.close();
                        } catch (IOException unused3) {
                        }
                        if (this.sibling != null) {
                            while (this.sibling.isAlive()) {
                                try {
                                    this.sibling.join();
                                } catch (InterruptedException unused4) {
                                }
                            }
                            try {
                                Channel channel = this.c;
                                channel.cm.closeChannel(channel, new ObfuscatedString(new long[]{-7408885073257386086L, 7406539606951091388L, -3941939344696196190L, 7096955127332824407L}).toString() + this.mode + new ObfuscatedString(new long[]{3977741751235871477L, 1543080706913329697L, -751048943551256741L, -6617027223287598956L, 3099765723875513003L}).toString(), true);
                            } catch (IOException unused5) {
                            }
                            try {
                                Socket socket2 = this.s;
                                if (socket2 != null) {
                                    socket2.close();
                                    throw th;
                                }
                                throw th;
                            } catch (IOException unused6) {
                                throw th;
                            }
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    try {
                        Channel channel2 = this.c;
                        channel2.cm.closeChannel(channel2, new ObfuscatedString(new long[]{-7544295541835314033L, -7455820325439050980L, 3871510334373736065L, 6066348877009840003L, 4298440703530654062L, 4120654832919446143L, -4090842196754740840L}).toString() + this.mode + new ObfuscatedString(new long[]{5371757989880945844L, -8351414792889920974L}).toString() + e.getMessage(), true);
                    } catch (IOException unused7) {
                    }
                    try {
                        this.os.close();
                    } catch (IOException unused8) {
                    }
                    try {
                        this.is.close();
                    } catch (IOException unused9) {
                    }
                    if (this.sibling != null) {
                        while (this.sibling.isAlive()) {
                            try {
                                this.sibling.join();
                            } catch (InterruptedException unused10) {
                            }
                        }
                        try {
                            Channel channel3 = this.c;
                            channel3.cm.closeChannel(channel3, new ObfuscatedString(new long[]{3470418950470202247L, -7767775123490920718L, -5637128193059566519L, 3366613828064436450L}).toString() + this.mode + new ObfuscatedString(new long[]{5251097418563174724L, -966311464368219097L, 6440167614902245773L, 1005031219514931555L, 6712217947738035694L}).toString(), true);
                        } catch (IOException unused11) {
                        }
                        socket = this.s;
                        if (socket == null) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            } catch (IOException unused12) {
                return;
            }
        }
        this.os.close();
        try {
            this.is.close();
        } catch (IOException unused13) {
        }
        if (this.sibling != null) {
            while (this.sibling.isAlive()) {
                try {
                    this.sibling.join();
                } catch (InterruptedException unused14) {
                }
            }
            try {
                Channel channel4 = this.c;
                channel4.cm.closeChannel(channel4, new ObfuscatedString(new long[]{5555506466854288835L, 9147375795700837887L, 7637037969986261602L, 615237713632292946L}).toString() + this.mode + new ObfuscatedString(new long[]{7262351643564606651L, -6170615635097075757L, 7212892912130277481L, 5203365187260989295L, -2026799980879307474L}).toString(), true);
            } catch (IOException unused15) {
            }
            socket = this.s;
            if (socket == null) {
                return;
            }
            socket.close();
        }
    }
}
