package com.trilead.ssh2.transport;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
public class ClientServerHello {
    String client_line = new ObfuscatedString(new long[]{2549181235898748631L, 7084952308314021245L, 5164323668337990487L, 6363024747348191964L, -7050167585249678446L}).toString();
    String server_line;
    String server_versioncomment;

    public ClientServerHello(InputStream inputStream, OutputStream outputStream) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.client_line);
        outputStream.write(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5987831846786585441L, 1937642217063089431L}), sb).getBytes(StandardCharsets.ISO_8859_1));
        outputStream.flush();
        byte[] bArr = new byte[512];
        for (int i = 0; i < 50; i++) {
            String str = new String(bArr, 0, readLineRN(inputStream, bArr), StandardCharsets.ISO_8859_1);
            this.server_line = str;
            if (str.startsWith(new ObfuscatedString(new long[]{-8169234759217239923L, -2001704101090940949L}).toString())) {
                break;
            }
        }
        if (this.server_line.startsWith(new ObfuscatedString(new long[]{-5078612265696627073L, 8652411539160161477L}).toString())) {
            if (this.server_line.startsWith(new ObfuscatedString(new long[]{4858111532012262039L, -6201318074471365047L, -8609890830432432805L}).toString())) {
                this.server_versioncomment = this.server_line.substring(9);
                return;
            } else {
                if (this.server_line.startsWith(new ObfuscatedString(new long[]{-3342945439462922388L, 2154071650148946539L}).toString())) {
                    this.server_versioncomment = this.server_line.substring(8);
                    return;
                }
                throw new IOException(new ObfuscatedString(new long[]{-5963831782584937632L, -8337082335880182684L, -1496677524186484328L, 3057592354823141412L, 8880251384434805577L, -3668903931886207595L, -1458045215887172241L, 5402196907887031799L, 2464548356315618940L}).toString());
            }
        }
        throw new IOException(new ObfuscatedString(new long[]{-237162762500159388L, 7631465432580428330L, 848847019215960643L, 2353949347858436976L, -4545973534149575998L, -5482361088565312195L, 8986481330485393165L, -8312734785585552284L, -645010357894900074L, 7090766522941456508L, 3759761540911482809L, 3701863080517764203L, 62670051269891293L, 6386207570531446068L, -3622750033244074838L}).toString());
    }

    public static int readLineRN(InputStream inputStream, byte[] bArr) {
        int i = 0;
        boolean z = false;
        int i2 = 0;
        while (true) {
            int read = inputStream.read();
            if (read != -1) {
                int i3 = i + 1;
                bArr[i] = (byte) read;
                if (read == 13) {
                    i = i3;
                    z = true;
                } else {
                    if (read == 10) {
                        return i2;
                    }
                    if (!z) {
                        i2++;
                        if (i3 < bArr.length) {
                            i = i3;
                        } else {
                            throw new IOException(new ObfuscatedString(new long[]{5540718525680688718L, 5925091345066384399L, 7722152940889309037L, -7667801421209095824L, 61579592531191108L, 7122545763417326834L}).toString() + new String(bArr, StandardCharsets.ISO_8859_1));
                        }
                    } else {
                        throw new IOException(new ObfuscatedString(new long[]{6965349904954832446L, 3279463664703080969L, 1667451349395697527L, -6973267057661285820L, -5969003641653218354L, -5537253626534200323L, -8780848288022163059L, 1378588344932512187L, 5779312244823853024L, 9150110484178973105L}).toString());
                    }
                }
            } else {
                throw new IOException(new ObfuscatedString(new long[]{4945384056993617433L, 6285198031042385493L, -4192962823197023638L, -2772408946231359835L, -7976186681833244266L}).toString());
            }
        }
    }

    public byte[] getClientString() {
        return this.client_line.getBytes(StandardCharsets.ISO_8859_1);
    }

    public byte[] getServerString() {
        return this.server_line.getBytes(StandardCharsets.ISO_8859_1);
    }
}
