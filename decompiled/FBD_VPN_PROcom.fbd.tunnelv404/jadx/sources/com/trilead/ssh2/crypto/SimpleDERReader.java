package com.trilead.ssh2.crypto;

import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public class SimpleDERReader {
    byte[] buffer;
    int count;
    int pos;

    public SimpleDERReader(byte[] bArr) {
        resetInput(bArr);
    }

    private byte readByte() {
        int i = this.count;
        if (i > 0) {
            this.count = i - 1;
            byte[] bArr = this.buffer;
            int i2 = this.pos;
            this.pos = i2 + 1;
            return bArr[i2];
        }
        throw new IOException(new ObfuscatedString(new long[]{2014925196556225035L, 6082903903614621643L, 3999340353310252276L, -6369460377336510643L, -4714717675052876595L}).toString());
    }

    private byte[] readBytes(int i) {
        if (i <= this.count) {
            byte[] bArr = new byte[i];
            System.arraycopy(this.buffer, this.pos, bArr, 0, i);
            this.pos += i;
            this.count -= i;
            return bArr;
        }
        throw new IOException(new ObfuscatedString(new long[]{-3345748880098617060L, -1850021885029566573L, -8036370877498860361L, -8907804437214740379L, 5175283670874774539L}).toString());
    }

    private int readLength() {
        byte readByte = readByte();
        int i = readByte & 255;
        if ((readByte & 128) == 0) {
            return i;
        }
        int i2 = readByte & Byte.MAX_VALUE;
        if (i2 == 0 || i2 > 4) {
            return -1;
        }
        int i3 = 0;
        while (i2 > 0) {
            i3 = (i3 << 8) | (readByte() & 255);
            i2--;
        }
        if (i3 < 0) {
            return -1;
        }
        return i3;
    }

    public int available() {
        return this.count;
    }

    public int ignoreNextObject() {
        int readByte = readByte() & 255;
        int readLength = readLength();
        if (readLength >= 0 && readLength <= available()) {
            readBytes(readLength);
            return readByte;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{2950026025994596642L, 7331649442987391871L, 2181506176745102188L, -1445335536084626799L, 4127966790436090163L}).toString());
        sb.append(readLength);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2323260505521641077L, -8827777849929593388L}), sb));
    }

    public SimpleDERReader readConstructed() {
        int readLength = readLength();
        if (readLength >= 0 && readLength <= available()) {
            SimpleDERReader simpleDERReader = new SimpleDERReader(this.buffer, this.pos, readLength);
            this.pos += readLength;
            this.count -= readLength;
            return simpleDERReader;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-3412014354733878758L, -7448989654141004465L, 6807885846946953323L, 7827563621789555829L, -6499625902047746907L}).toString());
        sb.append(readLength);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5820541518110025562L, -652748229718706410L}), sb));
    }

    public int readConstructedType() {
        byte readByte = readByte();
        int i = readByte & 255;
        if ((readByte & 32) == 32) {
            return readByte & Ascii.US;
        }
        throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{5200517007907480959L, 5553967128112971329L, -4977963047150029713L, 1665533616891107479L, -125410773889096391L, -5075847496458609926L}), new StringBuilder(), i));
    }

    public BigInteger readInt() {
        int readByte = readByte() & 255;
        if (readByte == 2) {
            int readLength = readLength();
            if (readLength >= 0 && readLength <= available()) {
                return new BigInteger(1, readBytes(readLength));
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-7139256528231603730L, 1592615673590598780L, 1017592785410705855L, -9122803513007186788L, 2471633108783656562L}).toString());
            sb.append(readLength);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1285747319132198568L, -5124292229976753089L}), sb));
        }
        throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3408807653889513038L, -7307193174642274130L, -223326600963329206L, -3029042809180825204L, -2395085239373955309L, 886681558457035418L}), new StringBuilder(), readByte));
    }

    public byte[] readOctetString() {
        int readByte = readByte() & 255;
        if (readByte != 4 && readByte != 3) {
            throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-8723430355555509038L, 4475147624965275312L, -891955855102568173L, -5773770282632340785L, -1359563600354192269L, -4843158518947356972L, -2333413340091214702L}), new StringBuilder(), readByte));
        }
        int readLength = readLength();
        if (readLength >= 0 && readLength <= available()) {
            return readBytes(readLength);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-4027822340063452294L, 2029417533499206738L, 6449729269903447906L, -7482245480596966417L, 4708375303361410330L}).toString());
        sb.append(readLength);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7704453338550610768L, -419668977800267857L}), sb));
    }

    public String readOid() {
        int readByte = readByte() & 255;
        if (readByte == 6) {
            int readLength = readLength();
            if (readLength >= 1 && readLength <= available()) {
                byte[] readBytes = readBytes(readLength);
                StringBuilder sb = new StringBuilder(64);
                int i = readBytes[0] / 40;
                if (i != 0) {
                    if (i != 1) {
                        sb.append('2');
                        readBytes[0] = (byte) (readBytes[0] - 80);
                    } else {
                        sb.append('1');
                        readBytes[0] = (byte) (readBytes[0] - 40);
                    }
                } else {
                    sb.append('0');
                }
                long j = 0;
                for (int i2 = 0; i2 < readLength; i2++) {
                    j = (j << 7) + (r9 & Byte.MAX_VALUE);
                    if ((readBytes[i2] & 128) == 0) {
                        sb.append('.');
                        sb.append(j);
                        j = 0;
                    }
                }
                return sb.toString();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(new ObfuscatedString(new long[]{-5578806767438815458L, -7822591264005069748L, 2426066567247005997L, -9207763317777488033L, 7466196681200749618L}).toString());
            sb2.append(readLength);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8110927124619028813L, -7821306241202252061L}), sb2));
        }
        throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2800746417575131494L, -6149150799585607415L, -4916802366644090569L, 996774588751687921L, 60029048115295528L, 5229854929363087552L}), new StringBuilder(), readByte));
    }

    public byte[] readSequenceAsByteArray() {
        int readByte = readByte() & 255;
        if (readByte == 48) {
            int readLength = readLength();
            if (readLength >= 0 && readLength <= available()) {
                return readBytes(readLength);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{5925816575482574511L, -8457615543947197859L, -8274122844849295292L, 6615220069416932144L, 1730408350117717937L}).toString());
            sb.append(readLength);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2794482607727654140L, -4545190710701384563L}), sb));
        }
        throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4794491319505578576L, 6900997914695183972L, 8788810845299286785L, 8669624826639688797L, 3273330458191227511L, -7349901403436237002L}), new StringBuilder(), readByte));
    }

    public void resetInput(byte[] bArr) {
        resetInput(bArr, 0, bArr.length);
    }

    public void resetInput(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.pos = i;
        this.count = i2;
    }

    public SimpleDERReader(byte[] bArr, int i, int i2) {
        resetInput(bArr, i, i2);
    }
}
