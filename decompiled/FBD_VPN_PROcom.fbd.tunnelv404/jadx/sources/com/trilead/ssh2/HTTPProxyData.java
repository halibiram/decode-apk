package com.trilead.ssh2;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.crypto.Base64;
import com.trilead.ssh2.transport.ClientServerHello;
import com.trilead.ssh2.transport.TransportManager;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
public class HTTPProxyData implements ProxyData {
    private final String proxyHost;
    private final String proxyPass;
    private final int proxyPort;
    private final String proxyUser;
    private final String[] requestHeaderLines;
    private Socket sock;

    public HTTPProxyData(String str, int i) {
        this(str, i, null, null);
    }

    @Override // com.trilead.ssh2.ProxyData
    public void close() {
        Socket socket = this.sock;
        if (socket != null) {
            try {
                socket.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.trilead.ssh2.ProxyData
    public Socket openConnection(String str, int i, int i2, int i3) {
        this.sock = new Socket();
        this.sock.connect(new InetSocketAddress(TransportManager.createInetAddress(this.proxyHost), this.proxyPort), i2);
        this.sock.setSoTimeout(i3);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-9136185988355843226L, -7033133133326981583L}).toString());
        sb.append(str);
        sb.append(':');
        sb.append(i);
        sb.append(new ObfuscatedString(new long[]{2918417332102321284L, -111961955105315075L, 2002414865959520194L}).toString());
        if (this.proxyUser != null && this.proxyPass != null) {
            char[] encode = Base64.encode((this.proxyUser + new ObfuscatedString(new long[]{6094351930972440730L, -433502650622818233L}).toString() + this.proxyPass).getBytes(StandardCharsets.ISO_8859_1));
            sb.append(new ObfuscatedString(new long[]{-1893175614925226964L, 7435470382418851444L, -6780887084739448200L, 2231103761518218277L, 9200687804251418816L}).toString());
            sb.append(encode);
            sb.append(new ObfuscatedString(new long[]{-5543720340098313590L, 8707934351290146985L}).toString());
        }
        String[] strArr = this.requestHeaderLines;
        if (strArr != null) {
            for (String str2 : strArr) {
                if (str2 != null) {
                    sb.append(str2);
                    sb.append(new ObfuscatedString(new long[]{666382608802229860L, -2881525784315348557L}).toString());
                }
            }
        }
        sb.append(new ObfuscatedString(new long[]{1739702094380563233L, 1773016782108324168L}).toString());
        OutputStream outputStream = this.sock.getOutputStream();
        try {
            outputStream.write(sb.toString().getBytes(StandardCharsets.ISO_8859_1));
        } catch (UnsupportedEncodingException unused) {
            outputStream.write(sb.toString().getBytes());
        }
        outputStream.flush();
        byte[] bArr = new byte[1024];
        InputStream inputStream = this.sock.getInputStream();
        String str3 = new String(bArr, 0, ClientServerHello.readLineRN(inputStream, bArr), StandardCharsets.ISO_8859_1);
        if (str3.startsWith(new ObfuscatedString(new long[]{-2371877332565931139L, -3388947594501576882L}).toString())) {
            if (str3.length() >= 14 && str3.charAt(8) == ' ' && str3.charAt(12) == ' ') {
                try {
                    int parseInt = Integer.parseInt(str3.substring(9, 12));
                    if (parseInt >= 0 && parseInt <= 999) {
                        if (parseInt != 200) {
                            throw new HTTPProxyException(str3.substring(13), parseInt);
                        }
                        do {
                        } while (ClientServerHello.readLineRN(inputStream, bArr) != 0);
                        return this.sock;
                    }
                    throw new IOException(new ObfuscatedString(new long[]{-7019321653872023079L, 1001259064520634488L, 5697346475991024827L, 2010049485197999268L, 2973155954289171719L, -1662276347391647226L, -637742412913014088L, -8522908294749170323L}).toString());
                } catch (NumberFormatException unused2) {
                    throw new IOException(new ObfuscatedString(new long[]{-1801341940598177395L, -2303979219575187763L, 9116536045424379127L, 264715310859167550L, 2074212383826972235L, -916549813440700543L, 2323684836000138563L, -6010081826030759384L}).toString());
                }
            }
            throw new IOException(new ObfuscatedString(new long[]{-436068590604018800L, -5262657162956417100L, -6521089860446271732L, 4489197699804895342L, 9140987484059773686L, 6684437503864319154L, -5541702379481403813L, -8714340343716793987L}).toString());
        }
        throw new IOException(new ObfuscatedString(new long[]{-6605690783633515578L, 6236053543270627666L, -5755439050188764185L, -5351211634153179332L, -4308410713030038201L, 5122899406078603285L, -1828143568193520448L, 685707366279994378L}).toString());
    }

    public HTTPProxyData(String str, int i, String str2, String str3) {
        this(str, i, str2, str3, null);
    }

    public HTTPProxyData(String str, int i, String str2, String str3, String[] strArr) {
        if (str == null) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{7487001148060458700L, 2728392001499112844L, 5014952090887294069L, -2681960308176136753L, -2345067472564229568L}).toString());
        }
        if (i >= 0) {
            this.proxyHost = str;
            this.proxyPort = i;
            this.proxyUser = str2;
            this.proxyPass = str3;
            this.requestHeaderLines = strArr;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-4671954585568600059L, 1496045105720937048L, 3990126003831307415L, -8135327347827107374L, 2663256113455905791L}).toString());
    }
}
