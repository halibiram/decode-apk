package app.tunnel.vpncommons.org.spongycastle.util.encoders;

import java.io.OutputStream;
import okio.Utf8;

/* loaded from: classes.dex */
public class Base64Encoder implements Encoder {
    protected final byte[] encodingTable = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    protected byte padding = kotlin.io.encoding.Base64.padSymbol;
    protected final byte[] decodingTable = new byte[128];

    public Base64Encoder() {
        initialiseDecodingTable();
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static boolean m919x3271d0aa(char c) {
        if (c != '\n' && c != '\r' && c != '\t' && c != ' ') {
            return false;
        }
        return true;
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static int m920x1378447b(int i, int i2, String str) {
        while (i < i2 && m919x3271d0aa(str.charAt(i))) {
            i++;
        }
        return i;
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static int m921x75d576dc(byte[] bArr, int i, int i2) {
        while (i < i2 && m919x3271d0aa((char) bArr[i])) {
            i++;
        }
        return i;
    }

    @Override // app.tunnel.vpncommons.org.spongycastle.util.encoders.Encoder
    public int decode(byte[] bArr, int i, int i2, OutputStream outputStream) {
        int i3 = i2 + i;
        while (i3 > i && m919x3271d0aa((char) bArr[i3 - 1])) {
            i3--;
        }
        int i4 = i3 - 4;
        int m921x75d576dc = m921x75d576dc(bArr, i, i4);
        int i5 = 0;
        while (m921x75d576dc < i4) {
            int i6 = m921x75d576dc + 1;
            byte b = this.decodingTable[bArr[m921x75d576dc]];
            int m921x75d576dc2 = m921x75d576dc(bArr, i6, i4);
            int i7 = m921x75d576dc2 + 1;
            byte b2 = this.decodingTable[bArr[m921x75d576dc2]];
            int m921x75d576dc3 = m921x75d576dc(bArr, i7, i4);
            int i8 = m921x75d576dc3 + 1;
            byte b3 = this.decodingTable[bArr[m921x75d576dc3]];
            int m921x75d576dc4 = m921x75d576dc(bArr, i8, i4);
            int i9 = m921x75d576dc4 + 1;
            byte b4 = this.decodingTable[bArr[m921x75d576dc4]];
            outputStream.write((b << 2) | (b2 >> 4));
            outputStream.write((b2 << 4) | (b3 >> 2));
            outputStream.write((b3 << 6) | b4);
            i5 += 3;
            m921x75d576dc = m921x75d576dc(bArr, i9, i4);
        }
        return i5 + m922xfbe0c504(outputStream, (char) bArr[i4], (char) bArr[i3 - 3], (char) bArr[i3 - 2], (char) bArr[i3 - 1]);
    }

    @Override // app.tunnel.vpncommons.org.spongycastle.util.encoders.Encoder
    public int encode(byte[] bArr, int i, int i2, OutputStream outputStream) {
        int i3;
        int i4;
        int i5 = i2 % 3;
        int i6 = i2 - i5;
        int i7 = i;
        while (true) {
            i3 = i + i6;
            i4 = 4;
            if (i7 >= i3) {
                break;
            }
            int i8 = bArr[i7] & 255;
            int i9 = bArr[i7 + 1] & 255;
            byte b = bArr[i7 + 2];
            outputStream.write(this.encodingTable[(i8 >>> 2) & 63]);
            outputStream.write(this.encodingTable[((i8 << 4) | (i9 >>> 4)) & 63]);
            outputStream.write(this.encodingTable[((i9 << 2) | ((b & 255) >>> 6)) & 63]);
            outputStream.write(this.encodingTable[b & Utf8.REPLACEMENT_BYTE]);
            i7 += 3;
        }
        if (i5 != 1) {
            if (i5 == 2) {
                int i10 = bArr[i3] & 255;
                int i11 = bArr[i3 + 1] & 255;
                int i12 = (i10 >>> 2) & 63;
                outputStream.write(this.encodingTable[i12]);
                outputStream.write(this.encodingTable[((i10 << 4) | (i11 >>> 4)) & 63]);
                outputStream.write(this.encodingTable[(i11 << 2) & 63]);
                outputStream.write(this.padding);
            }
        } else {
            int i13 = bArr[i3] & 255;
            outputStream.write(this.encodingTable[(i13 >>> 2) & 63]);
            outputStream.write(this.encodingTable[(i13 << 4) & 63]);
            outputStream.write(this.padding);
            outputStream.write(this.padding);
        }
        int i14 = (i6 / 3) * 4;
        if (i5 == 0) {
            i4 = 0;
        }
        return i14 + i4;
    }

    public void initialiseDecodingTable() {
        int i = 0;
        while (true) {
            byte[] bArr = this.encodingTable;
            if (i < bArr.length) {
                this.decodingTable[bArr[i]] = (byte) i;
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final int m922xfbe0c504(OutputStream outputStream, char c, char c2, char c3, char c4) {
        byte b = this.padding;
        if (c3 == b) {
            byte[] bArr = this.decodingTable;
            outputStream.write((bArr[c] << 2) | (bArr[c2] >> 4));
            return 1;
        }
        if (c4 == b) {
            byte[] bArr2 = this.decodingTable;
            byte b2 = bArr2[c];
            byte b3 = bArr2[c2];
            byte b4 = bArr2[c3];
            outputStream.write((b2 << 2) | (b3 >> 4));
            outputStream.write((b3 << 4) | (b4 >> 2));
            return 2;
        }
        byte[] bArr3 = this.decodingTable;
        byte b5 = bArr3[c];
        byte b6 = bArr3[c2];
        byte b7 = bArr3[c3];
        byte b8 = bArr3[c4];
        outputStream.write((b5 << 2) | (b6 >> 4));
        outputStream.write((b6 << 4) | (b7 >> 2));
        outputStream.write((b7 << 6) | b8);
        return 3;
    }

    @Override // app.tunnel.vpncommons.org.spongycastle.util.encoders.Encoder
    public int decode(String str, OutputStream outputStream) {
        int length = str.length();
        while (length > 0 && m919x3271d0aa(str.charAt(length - 1))) {
            length--;
        }
        int i = length - 4;
        int i2 = 0;
        int m920x1378447b = m920x1378447b(0, i, str);
        while (m920x1378447b < i) {
            int i3 = m920x1378447b + 1;
            byte b = this.decodingTable[str.charAt(m920x1378447b)];
            int m920x1378447b2 = m920x1378447b(i3, i, str);
            int i4 = m920x1378447b2 + 1;
            byte b2 = this.decodingTable[str.charAt(m920x1378447b2)];
            int m920x1378447b3 = m920x1378447b(i4, i, str);
            int i5 = m920x1378447b3 + 1;
            byte b3 = this.decodingTable[str.charAt(m920x1378447b3)];
            int m920x1378447b4 = m920x1378447b(i5, i, str);
            int i6 = m920x1378447b4 + 1;
            byte b4 = this.decodingTable[str.charAt(m920x1378447b4)];
            outputStream.write((b << 2) | (b2 >> 4));
            outputStream.write((b2 << 4) | (b3 >> 2));
            outputStream.write((b3 << 6) | b4);
            i2 += 3;
            m920x1378447b = m920x1378447b(i6, i, str);
        }
        return i2 + m922xfbe0c504(outputStream, str.charAt(i), str.charAt(length - 3), str.charAt(length - 2), str.charAt(length - 1));
    }
}
