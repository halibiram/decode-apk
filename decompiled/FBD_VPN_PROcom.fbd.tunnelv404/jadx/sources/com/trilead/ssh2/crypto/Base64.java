package com.trilead.ssh2.crypto;

import com.google.common.primitives.SignedBytes;
import com.panda912.muddy.ObfuscatedString;
import java.io.CharArrayWriter;
import java.io.IOException;
import okio.Utf8;

/* loaded from: classes3.dex */
public class Base64 {
    static final char[] alphabet = new ObfuscatedString(new long[]{-1696298676913020392L, -7646303958377613777L, 8502452505773559926L, -7564987642117890083L, -4003197617806183490L, -606352749448118500L, 4002178332130106702L, -9057295575084445437L, -5320130513552360503L}).toString().toCharArray();

    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] decode(char[] cArr) {
        int i;
        int i2;
        char c = 'A';
        char c2 = '\n';
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[cArr.length];
        int length = cArr.length;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i3 >= length) {
                break;
            }
            char c3 = cArr[i3];
            if (c3 != c2) {
                if (c3 != '\r' && c3 != ' ' && c3 != '\t') {
                    if (c3 >= c && c3 <= 'Z') {
                        i2 = i4 + 1;
                        bArr[i4] = (byte) (c3 - c);
                    } else if (c3 >= 'a' && c3 <= 'z') {
                        i2 = i4 + 1;
                        bArr[i4] = (byte) (c3 - 'G');
                    } else if (c3 >= '0' && c3 <= '9') {
                        i2 = i4 + 1;
                        bArr[i4] = (byte) (c3 + 4);
                    } else {
                        if (c3 == '+') {
                            i = i4 + 1;
                            bArr[i4] = 62;
                        } else if (c3 == '/') {
                            i = i4 + 1;
                            bArr[i4] = Utf8.REPLACEMENT_BYTE;
                        } else if (c3 == '=') {
                            i = i4 + 1;
                            bArr[i4] = SignedBytes.MAX_POWER_OF_TWO;
                        } else {
                            throw new IOException(new ObfuscatedString(new long[]{-359779512077931694L, -776637275056298930L, -5519427217251580026L, 4956795211593636881L, 6490532655044225097L}).toString());
                        }
                        i4 = i;
                        if (i4 == 4) {
                            byte b = bArr[0];
                            if (b == 64) {
                                break;
                            }
                            byte b2 = bArr[1];
                            if (b2 != 64) {
                                byte b3 = bArr[2];
                                if (b3 == 64) {
                                    bArr2[i5] = (byte) ((((b & Utf8.REPLACEMENT_BYTE) << 6) | (b2 & Utf8.REPLACEMENT_BYTE)) >> 4);
                                    i5 = 1 + i5;
                                    break;
                                }
                                byte b4 = bArr[3];
                                if (b4 == 64) {
                                    int i6 = ((b & Utf8.REPLACEMENT_BYTE) << 12) | ((b2 & Utf8.REPLACEMENT_BYTE) << 6) | (b3 & Utf8.REPLACEMENT_BYTE);
                                    int i7 = 1 + i5;
                                    bArr2[i5] = (byte) (i6 >> 10);
                                    i5 += 2;
                                    bArr2[i7] = (byte) (i6 >> 2);
                                    break;
                                }
                                c2 = '\n';
                                int i8 = ((b & Utf8.REPLACEMENT_BYTE) << 18) | ((b2 & Utf8.REPLACEMENT_BYTE) << 12) | ((b3 & Utf8.REPLACEMENT_BYTE) << 6) | (b4 & Utf8.REPLACEMENT_BYTE);
                                bArr2[i5] = (byte) (i8 >> 16);
                                int i9 = i5 + 2;
                                bArr2[i5 + 1] = (byte) (i8 >> 8);
                                i5 += 3;
                                bArr2[i9] = (byte) i8;
                                i4 = 0;
                            } else {
                                throw new IOException(new ObfuscatedString(new long[]{6563243769811495156L, 2672738576337030300L, -430054807131119195L, -2274435370127406353L, -7305984416254202002L}).toString());
                            }
                        }
                    }
                    i4 = i2;
                    if (i4 == 4) {
                    }
                }
                c2 = '\n';
            }
            i3++;
            c = 'A';
        }
        byte[] bArr3 = new byte[i5];
        System.arraycopy(bArr2, 0, bArr3, 0, i5);
        return bArr3;
    }

    public static char[] encode(byte[] bArr) {
        int i;
        CharArrayWriter charArrayWriter = new CharArrayWriter((bArr.length * 4) / 3);
        int i2 = 0;
        int i3 = 0;
        for (byte b : bArr) {
            if (i2 == 0) {
                i3 = (b & 255) << 16;
            } else {
                if (i2 == 1) {
                    i = (b & 255) << 8;
                } else {
                    i = b & 255;
                }
                i3 |= i;
            }
            i2++;
            if (i2 == 3) {
                char[] cArr = alphabet;
                charArrayWriter.write(cArr[i3 >> 18]);
                charArrayWriter.write(cArr[(i3 >> 12) & 63]);
                charArrayWriter.write(cArr[(i3 >> 6) & 63]);
                charArrayWriter.write(cArr[i3 & 63]);
                i2 = 0;
            }
        }
        if (i2 == 1) {
            char[] cArr2 = alphabet;
            charArrayWriter.write(cArr2[i3 >> 18]);
            charArrayWriter.write(cArr2[(i3 >> 12) & 63]);
            charArrayWriter.write(61);
            charArrayWriter.write(61);
        }
        if (i2 == 2) {
            char[] cArr3 = alphabet;
            charArrayWriter.write(cArr3[i3 >> 18]);
            charArrayWriter.write(cArr3[(i3 >> 12) & 63]);
            charArrayWriter.write(cArr3[(i3 >> 6) & 63]);
            charArrayWriter.write(61);
        }
        return charArrayWriter.toCharArray();
    }
}
