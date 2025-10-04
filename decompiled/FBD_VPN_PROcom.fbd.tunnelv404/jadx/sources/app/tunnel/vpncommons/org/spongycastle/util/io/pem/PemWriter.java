package app.tunnel.vpncommons.org.spongycastle.util.io.pem;

import app.tunnel.vpncommons.org.spongycastle.util.encoders.Base64;
import java.io.BufferedWriter;
import java.io.Writer;

/* loaded from: classes.dex */
public class PemWriter extends BufferedWriter {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final int f425xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final char[] f426x3271d0aa;

    public PemWriter(Writer writer) {
        super(writer);
        this.f426x3271d0aa = new char[64];
        String property = System.getProperty("line.separator");
        if (property != null) {
            this.f425xfbe0c504 = property.length();
        } else {
            this.f425xfbe0c504 = 2;
        }
    }

    public int getOutputSize(PemObject pemObject) {
        int length = pemObject.getType().length() + 10;
        int i = this.f425xfbe0c504;
        int i2 = ((length + i) * 2) + 10;
        if (!pemObject.getHeaders().isEmpty()) {
            for (PemHeader pemHeader : pemObject.getHeaders()) {
                i2 += pemHeader.getValue().length() + pemHeader.getName().length() + 2 + i;
            }
            i2 += i;
        }
        int length2 = ((pemObject.getContent().length + 2) / 3) * 4;
        return (((length2 + 63) / 64) * i) + length2 + i2;
    }

    public void writeObject(PemObjectGenerator pemObjectGenerator) {
        char[] cArr;
        int i;
        PemObject generate = pemObjectGenerator.generate();
        write("-----BEGIN " + generate.getType() + "-----");
        newLine();
        if (!generate.getHeaders().isEmpty()) {
            for (PemHeader pemHeader : generate.getHeaders()) {
                write(pemHeader.getName());
                write(": ");
                write(pemHeader.getValue());
                newLine();
            }
            newLine();
        }
        byte[] encode = Base64.encode(generate.getContent());
        int i2 = 0;
        while (i2 < encode.length) {
            int i3 = 0;
            while (true) {
                cArr = this.f426x3271d0aa;
                if (i3 != cArr.length && (i = i2 + i3) < encode.length) {
                    cArr[i3] = (char) encode[i];
                    i3++;
                }
            }
            write(cArr, 0, i3);
            newLine();
            i2 += cArr.length;
        }
        write("-----END " + generate.getType() + "-----");
        newLine();
    }
}
