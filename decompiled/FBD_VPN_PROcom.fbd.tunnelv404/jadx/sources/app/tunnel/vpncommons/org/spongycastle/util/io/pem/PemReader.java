package app.tunnel.vpncommons.org.spongycastle.util.io.pem;

import app.tunnel.vpncommons.org.spongycastle.util.encoders.Base64;
import defpackage.AbstractC0362x4440ab85;
import j$.io.BufferedReaderRetargetInterface;
import j$.io.DesugarBufferedReader;
import j$.util.stream.Stream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public class PemReader extends BufferedReader implements BufferedReaderRetargetInterface {
    public PemReader(Reader reader) {
        super(reader);
    }

    @Override // java.io.BufferedReader
    public final /* synthetic */ Stream lines() {
        return Stream.Wrapper.convert(lines());
    }

    public PemObject readPemObject() {
        String readLine;
        String readLine2 = readLine();
        while (readLine2 != null && !readLine2.startsWith("-----BEGIN ")) {
            readLine2 = readLine();
        }
        if (readLine2 != null) {
            String substring = readLine2.substring(11);
            int indexOf = substring.indexOf(45);
            String substring2 = substring.substring(0, indexOf);
            if (indexOf > 0) {
                String m2952x5ac5058d = AbstractC0362x4440ab85.m2952x5ac5058d("-----END ", substring2);
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                while (true) {
                    readLine = readLine();
                    if (readLine == null) {
                        break;
                    }
                    if (readLine.indexOf(":") >= 0) {
                        int indexOf2 = readLine.indexOf(58);
                        arrayList.add(new PemHeader(readLine.substring(0, indexOf2), readLine.substring(indexOf2 + 1).trim()));
                    } else {
                        if (readLine.indexOf(m2952x5ac5058d) != -1) {
                            break;
                        }
                        sb.append(readLine.trim());
                    }
                }
                if (readLine != null) {
                    return new PemObject(substring2, arrayList, Base64.decode(sb.toString()));
                }
                throw new IOException(AbstractC0362x4440ab85.m2931x34271fae(m2952x5ac5058d, " not found"));
            }
            return null;
        }
        return null;
    }

    @Override // java.io.BufferedReader, j$.io.BufferedReaderRetargetInterface
    public final /* synthetic */ j$.util.stream.Stream lines() {
        return DesugarBufferedReader.lines(this);
    }
}
