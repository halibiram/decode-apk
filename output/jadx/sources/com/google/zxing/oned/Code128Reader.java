package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes3.dex */
public final class Code128Reader extends OneDReader {
    private static final int CODE_CODE_A = 101;
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_A = 101;
    private static final int CODE_FNC_4_B = 100;
    static final int[][] CODE_PATTERNS = {new int[]{2, 1, 2, 2, 2, 2}, new int[]{2, 2, 2, 1, 2, 2}, new int[]{2, 2, 2, 2, 2, 1}, new int[]{1, 2, 1, 2, 2, 3}, new int[]{1, 2, 1, 3, 2, 2}, new int[]{1, 3, 1, 2, 2, 2}, new int[]{1, 2, 2, 2, 1, 3}, new int[]{1, 2, 2, 3, 1, 2}, new int[]{1, 3, 2, 2, 1, 2}, new int[]{2, 2, 1, 2, 1, 3}, new int[]{2, 2, 1, 3, 1, 2}, new int[]{2, 3, 1, 2, 1, 2}, new int[]{1, 1, 2, 2, 3, 2}, new int[]{1, 2, 2, 1, 3, 2}, new int[]{1, 2, 2, 2, 3, 1}, new int[]{1, 1, 3, 2, 2, 2}, new int[]{1, 2, 3, 1, 2, 2}, new int[]{1, 2, 3, 2, 2, 1}, new int[]{2, 2, 3, 2, 1, 1}, new int[]{2, 2, 1, 1, 3, 2}, new int[]{2, 2, 1, 2, 3, 1}, new int[]{2, 1, 3, 2, 1, 2}, new int[]{2, 2, 3, 1, 1, 2}, new int[]{3, 1, 2, 1, 3, 1}, new int[]{3, 1, 1, 2, 2, 2}, new int[]{3, 2, 1, 1, 2, 2}, new int[]{3, 2, 1, 2, 2, 1}, new int[]{3, 1, 2, 2, 1, 2}, new int[]{3, 2, 2, 1, 1, 2}, new int[]{3, 2, 2, 2, 1, 1}, new int[]{2, 1, 2, 1, 2, 3}, new int[]{2, 1, 2, 3, 2, 1}, new int[]{2, 3, 2, 1, 2, 1}, new int[]{1, 1, 1, 3, 2, 3}, new int[]{1, 3, 1, 1, 2, 3}, new int[]{1, 3, 1, 3, 2, 1}, new int[]{1, 1, 2, 3, 1, 3}, new int[]{1, 3, 2, 1, 1, 3}, new int[]{1, 3, 2, 3, 1, 1}, new int[]{2, 1, 1, 3, 1, 3}, new int[]{2, 3, 1, 1, 1, 3}, new int[]{2, 3, 1, 3, 1, 1}, new int[]{1, 1, 2, 1, 3, 3}, new int[]{1, 1, 2, 3, 3, 1}, new int[]{1, 3, 2, 1, 3, 1}, new int[]{1, 1, 3, 1, 2, 3}, new int[]{1, 1, 3, 3, 2, 1}, new int[]{1, 3, 3, 1, 2, 1}, new int[]{3, 1, 3, 1, 2, 1}, new int[]{2, 1, 1, 3, 3, 1}, new int[]{2, 3, 1, 1, 3, 1}, new int[]{2, 1, 3, 1, 1, 3}, new int[]{2, 1, 3, 3, 1, 1}, new int[]{2, 1, 3, 1, 3, 1}, new int[]{3, 1, 1, 1, 2, 3}, new int[]{3, 1, 1, 3, 2, 1}, new int[]{3, 3, 1, 1, 2, 1}, new int[]{3, 1, 2, 1, 1, 3}, new int[]{3, 1, 2, 3, 1, 1}, new int[]{3, 3, 2, 1, 1, 1}, new int[]{3, 1, 4, 1, 1, 1}, new int[]{2, 2, 1, 4, 1, 1}, new int[]{4, 3, 1, 1, 1, 1}, new int[]{1, 1, 1, 2, 2, 4}, new int[]{1, 1, 1, 4, 2, 2}, new int[]{1, 2, 1, 1, 2, 4}, new int[]{1, 2, 1, 4, 2, 1}, new int[]{1, 4, 1, 1, 2, 2}, new int[]{1, 4, 1, 2, 2, 1}, new int[]{1, 1, 2, 2, 1, 4}, new int[]{1, 1, 2, 4, 1, 2}, new int[]{1, 2, 2, 1, 1, 4}, new int[]{1, 2, 2, 4, 1, 1}, new int[]{1, 4, 2, 1, 1, 2}, new int[]{1, 4, 2, 2, 1, 1}, new int[]{2, 4, 1, 2, 1, 1}, new int[]{2, 2, 1, 1, 1, 4}, new int[]{4, 1, 3, 1, 1, 1}, new int[]{2, 4, 1, 1, 1, 2}, new int[]{1, 3, 4, 1, 1, 1}, new int[]{1, 1, 1, 2, 4, 2}, new int[]{1, 2, 1, 1, 4, 2}, new int[]{1, 2, 1, 2, 4, 1}, new int[]{1, 1, 4, 2, 1, 2}, new int[]{1, 2, 4, 1, 1, 2}, new int[]{1, 2, 4, 2, 1, 1}, new int[]{4, 1, 1, 2, 1, 2}, new int[]{4, 2, 1, 1, 1, 2}, new int[]{4, 2, 1, 2, 1, 1}, new int[]{2, 1, 2, 1, 4, 1}, new int[]{2, 1, 4, 1, 2, 1}, new int[]{4, 1, 2, 1, 2, 1}, new int[]{1, 1, 1, 1, 4, 3}, new int[]{1, 1, 1, 3, 4, 1}, new int[]{1, 3, 1, 1, 4, 1}, new int[]{1, 1, 4, 1, 1, 3}, new int[]{1, 1, 4, 3, 1, 1}, new int[]{4, 1, 1, 1, 1, 3}, new int[]{4, 1, 1, 3, 1, 1}, new int[]{1, 1, 3, 1, 4, 1}, new int[]{1, 1, 4, 1, 3, 1}, new int[]{3, 1, 1, 1, 4, 1}, new int[]{4, 1, 1, 1, 3, 1}, new int[]{2, 1, 1, 4, 1, 2}, new int[]{2, 1, 1, 2, 1, 4}, new int[]{2, 1, 1, 2, 3, 2}, new int[]{2, 3, 3, 1, 1, 1, 2}};
    private static final int CODE_SHIFT = 98;
    private static final int CODE_START_A = 103;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final float MAX_AVG_VARIANCE = 0.25f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.7f;

    private static int decodeCode(BitArray bitArray, int[] iArr, int i) {
        OneDReader.recordPattern(bitArray, i, iArr);
        float f = MAX_AVG_VARIANCE;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            int[][] iArr2 = CODE_PATTERNS;
            if (i3 >= iArr2.length) {
                break;
            }
            float patternMatchVariance = OneDReader.patternMatchVariance(iArr, iArr2[i3], MAX_INDIVIDUAL_VARIANCE);
            if (patternMatchVariance < f) {
                i2 = i3;
                f = patternMatchVariance;
            }
            i3++;
        }
        if (i2 >= 0) {
            return i2;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int[] findStartPattern(BitArray bitArray) {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int[] iArr = new int[6];
        int i = nextSet;
        boolean z = false;
        int i2 = 0;
        while (nextSet < size) {
            if (bitArray.get(nextSet) != z) {
                iArr[i2] = iArr[i2] + 1;
            } else {
                if (i2 == 5) {
                    int i3 = -1;
                    float f = MAX_AVG_VARIANCE;
                    for (int i4 = 103; i4 <= 105; i4++) {
                        float patternMatchVariance = OneDReader.patternMatchVariance(iArr, CODE_PATTERNS[i4], MAX_INDIVIDUAL_VARIANCE);
                        if (patternMatchVariance < f) {
                            i3 = i4;
                            f = patternMatchVariance;
                        }
                    }
                    if (i3 >= 0 && bitArray.isRange(Math.max(0, i - ((nextSet - i) / 2)), i, false)) {
                        return new int[]{i, nextSet, i3};
                    }
                    i += iArr[0] + iArr[1];
                    int i5 = i2 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i5);
                    iArr[i5] = 0;
                    iArr[i2] = 0;
                    i2--;
                } else {
                    i2++;
                }
                iArr[i2] = 1;
                z = !z;
            }
            nextSet++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0105, code lost:
    
        if (r11 != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0107, code lost:
    
        r2 = false;
        r11 = false;
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0174, code lost:
    
        if (r11 != false) goto L60;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:112:0x0193. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x008d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:50:0x00c3. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:83:0x0139. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01c7 A[PHI: r21
      0x01c7: PHI (r21v5 boolean) = (r21v3 boolean), (r21v7 boolean) binds: [B:112:0x0193, B:83:0x0139] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0189 A[FALL_THROUGH, PHI: r21 r22
      0x0189: PHI (r21v20 boolean) = 
      (r21v3 boolean)
      (r21v3 boolean)
      (r21v3 boolean)
      (r21v3 boolean)
      (r21v2 boolean)
      (r21v7 boolean)
      (r21v7 boolean)
      (r21v7 boolean)
      (r21v7 boolean)
      (r21v17 boolean)
      (r21v17 boolean)
      (r21v17 boolean)
      (r21v17 boolean)
      (r21v2 boolean)
     binds: [B:112:0x0193, B:116:0x01a8, B:120:0x01c3, B:119:0x01b0, B:107:0x0186, B:83:0x0139, B:87:0x014e, B:91:0x0169, B:90:0x0156, B:50:0x00c3, B:54:0x00d9, B:58:0x00f5, B:57:0x00e1, B:26:0x0090] A[DONT_GENERATE, DONT_INLINE]
      0x0189: PHI (r22v13 int) = 
      (r22v1 int)
      (r22v3 int)
      (r22v3 int)
      (r22v3 int)
      (r22v1 int)
      (r22v1 int)
      (r22v6 int)
      (r22v6 int)
      (r22v6 int)
      (r22v1 int)
      (r22v10 int)
      (r22v10 int)
      (r22v10 int)
      (r22v1 int)
     binds: [B:112:0x0193, B:116:0x01a8, B:120:0x01c3, B:119:0x01b0, B:107:0x0186, B:83:0x0139, B:87:0x014e, B:91:0x0169, B:90:0x0156, B:50:0x00c3, B:54:0x00d9, B:58:0x00f5, B:57:0x00e1, B:26:0x0090] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0110 A[PHI: r21
      0x0110: PHI (r21v13 boolean) = (r21v7 boolean), (r21v17 boolean) binds: [B:83:0x0139, B:50:0x00c3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0118 A[PHI: r21
      0x0118: PHI (r21v11 boolean) = (r21v7 boolean), (r21v17 boolean) binds: [B:83:0x0139, B:50:0x00c3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01cb A[PHI: r21
      0x01cb: PHI (r21v10 boolean) = (r21v3 boolean), (r21v17 boolean) binds: [B:112:0x0193, B:50:0x00c3] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.zxing.oned.OneDReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) {
        boolean z;
        char c;
        boolean z2;
        char c2;
        int i2 = 64;
        if (map != null && map.containsKey(DecodeHintType.ASSUME_GS1)) {
            z = true;
        } else {
            z = false;
        }
        int[] findStartPattern = findStartPattern(bitArray);
        int i3 = findStartPattern[2];
        ArrayList arrayList = new ArrayList(20);
        arrayList.add(Byte.valueOf((byte) i3));
        switch (i3) {
            case 103:
                c = 'e';
                break;
            case 104:
                c = 'd';
                break;
            case 105:
                c = 'c';
                break;
            default:
                throw FormatException.getFormatInstance();
        }
        StringBuilder sb = new StringBuilder(20);
        int i4 = 6;
        int[] iArr = new int[6];
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        boolean z7 = true;
        int i8 = 0;
        char c3 = c;
        int i9 = findStartPattern[0];
        int i10 = findStartPattern[1];
        char c4 = c3;
        while (!z5) {
            int decodeCode = decodeCode(bitArray, iArr, i10);
            arrayList.add(Byte.valueOf((byte) decodeCode));
            if (decodeCode != 106) {
                z7 = true;
            }
            if (decodeCode != 106) {
                i6++;
                i3 = (i6 * decodeCode) + i3;
            }
            int i11 = i10;
            for (int i12 = 0; i12 < i4; i12++) {
                i11 += iArr[i12];
            }
            switch (decodeCode) {
                case 103:
                case 104:
                case 105:
                    throw FormatException.getFormatInstance();
                default:
                    switch (c4) {
                        case 'c':
                            if (decodeCode < 100) {
                                if (decodeCode < 10) {
                                    sb.append('0');
                                }
                                sb.append(decodeCode);
                            } else {
                                if (decodeCode != 106) {
                                    z7 = false;
                                }
                                if (decodeCode != 106) {
                                    switch (decodeCode) {
                                        case 100:
                                            z2 = false;
                                            c4 = 'd';
                                            break;
                                        case 101:
                                            z2 = false;
                                            c4 = 'e';
                                            break;
                                        case 102:
                                            if (sb.length() == 0) {
                                                i8 = 1;
                                            } else if (sb.length() == 1) {
                                                i8 = 2;
                                            }
                                            if (z) {
                                                if (sb.length() == 0) {
                                                    sb.append(new ObfuscatedString(new long[]{1212452091815814005L, 3009824417575676954L}).toString());
                                                } else {
                                                    sb.append((char) 29);
                                                }
                                            }
                                        default:
                                            z2 = false;
                                            break;
                                    }
                                }
                                z2 = false;
                                z5 = true;
                                break;
                            }
                            z2 = false;
                        case 'd':
                            if (decodeCode < 96) {
                                if (z3 == z4) {
                                    sb.append((char) (decodeCode + 32));
                                } else {
                                    sb.append((char) (decodeCode + 160));
                                }
                                z2 = false;
                                z3 = false;
                                break;
                            } else {
                                if (decodeCode != 106) {
                                    z7 = false;
                                }
                                if (decodeCode != 106) {
                                    switch (decodeCode) {
                                        case 97:
                                            z2 = false;
                                            i8 = 4;
                                            break;
                                        case 98:
                                            z2 = true;
                                            c4 = 'e';
                                            break;
                                        case 99:
                                            z2 = false;
                                            c4 = 'c';
                                            break;
                                        case 100:
                                            if (z4 || !z3) {
                                                if (z4) {
                                                }
                                                z2 = false;
                                                z3 = true;
                                                break;
                                            }
                                            z2 = false;
                                            z3 = false;
                                            z4 = true;
                                            break;
                                        case 102:
                                            if (sb.length() == 0) {
                                                i8 = 1;
                                            } else if (sb.length() == 1) {
                                                i8 = 2;
                                            }
                                            if (z) {
                                                if (sb.length() == 0) {
                                                    sb.append(new ObfuscatedString(new long[]{-7383547614958576408L, 355992092975169786L}).toString());
                                                } else {
                                                    sb.append((char) 29);
                                                }
                                            }
                                    }
                                }
                                z2 = false;
                                z5 = true;
                                break;
                            }
                        case 'e':
                            if (decodeCode < i2) {
                                if (z3 == z4) {
                                    sb.append((char) (decodeCode + 32));
                                } else {
                                    sb.append((char) (decodeCode + 160));
                                }
                            } else if (decodeCode < 96) {
                                if (z3 == z4) {
                                    sb.append((char) (decodeCode - 64));
                                } else {
                                    sb.append((char) (decodeCode + 64));
                                }
                            } else {
                                if (decodeCode != 106) {
                                    z7 = false;
                                }
                                if (decodeCode != 106) {
                                    switch (decodeCode) {
                                        case 98:
                                            z2 = true;
                                            c4 = 'd';
                                            break;
                                        case 101:
                                            if (z4 || !z3) {
                                                if (z4) {
                                                }
                                                z2 = false;
                                                z3 = true;
                                                break;
                                            }
                                            z2 = false;
                                            z3 = false;
                                            z4 = true;
                                            break;
                                        case 102:
                                            if (sb.length() == 0) {
                                                i8 = 1;
                                            } else if (sb.length() == 1) {
                                                i8 = 2;
                                            }
                                            if (z) {
                                                if (sb.length() == 0) {
                                                    sb.append(new ObfuscatedString(new long[]{-5130913293730096042L, 1338777893897714266L}).toString());
                                                } else {
                                                    sb.append((char) 29);
                                                }
                                            }
                                    }
                                }
                                z2 = false;
                                z5 = true;
                                break;
                            }
                            z2 = false;
                            z3 = false;
                            break;
                        default:
                            z2 = false;
                            break;
                    }
                    if (z6) {
                        if (c4 == 'e') {
                            c2 = 'd';
                        } else {
                            c2 = 'e';
                        }
                        c4 = c2;
                    }
                    z6 = z2;
                    i7 = i5;
                    i2 = 64;
                    i4 = 6;
                    i5 = decodeCode;
                    i9 = i10;
                    i10 = i11;
                    break;
            }
        }
        int i13 = i10 - i9;
        int nextUnset = bitArray.getNextUnset(i10);
        if (bitArray.isRange(nextUnset, Math.min(bitArray.getSize(), ((nextUnset - i9) / 2) + nextUnset), false)) {
            int i14 = i7;
            if ((i3 - (i6 * i14)) % 103 == i14) {
                int length = sb.length();
                if (length != 0) {
                    if (length > 0 && z7) {
                        if (c4 == 'c') {
                            sb.delete(length - 2, length);
                        } else {
                            sb.delete(length - 1, length);
                        }
                    }
                    float f = (findStartPattern[1] + findStartPattern[0]) / 2.0f;
                    float f2 = (i13 / 2.0f) + i9;
                    int size = arrayList.size();
                    byte[] bArr = new byte[size];
                    for (int i15 = 0; i15 < size; i15++) {
                        bArr[i15] = ((Byte) arrayList.get(i15)).byteValue();
                    }
                    float f3 = i;
                    Result result = new Result(sb.toString(), bArr, new ResultPoint[]{new ResultPoint(f, f3), new ResultPoint(f2, f3)}, BarcodeFormat.CODE_128);
                    result.putMetadata(ResultMetadataType.SYMBOLOGY_IDENTIFIER, new ObfuscatedString(new long[]{2974121328173178997L, 6426778350850319088L}).toString() + i8);
                    return result;
                }
                throw NotFoundException.getNotFoundInstance();
            }
            throw ChecksumException.getChecksumInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
