package com.google.zxing.oned;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class OneDReader implements Reader {
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
    
        r3 = r22.getBlackRow(r11, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
    
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00e0, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0078 A[Catch: ReaderException -> 0x00c6, TryCatch #2 {ReaderException -> 0x00c6, blocks: (B:35:0x0072, B:37:0x0078, B:39:0x0089), top: B:34:0x0072 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Result doDecode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        OneDReader oneDReader;
        Map<DecodeHintType, ?> map2;
        int i6;
        Map<DecodeHintType, ?> map3 = map;
        int width = binaryBitmap.getWidth();
        int height = binaryBitmap.getHeight();
        BitArray bitArray = new BitArray(width);
        char c = 0;
        int i7 = 1;
        if (map3 != null && map3.containsKey(DecodeHintType.TRY_HARDER)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i = 8;
        } else {
            i = 5;
        }
        int max = Math.max(1, height >> i);
        if (z) {
            i2 = height;
        } else {
            i2 = 15;
        }
        int i8 = height / 2;
        int i9 = 0;
        while (i9 < i2) {
            i3 = i9 + 1;
            int i10 = i3 / 2;
            if ((i9 & 1) != 0) {
                i10 = -i10;
            }
            i4 = (i10 * max) + i8;
            if (i4 < 0 || i4 >= height) {
                break;
            }
            i9 = i3;
            width = width;
            c = 0;
            i7 = 1;
        }
        throw NotFoundException.getNotFoundInstance();
        while (i5 < 2) {
            try {
                if (i5 == i7) {
                    bitArray.reverse();
                    if (map3 != null) {
                        DecodeHintType decodeHintType = DecodeHintType.NEED_RESULT_POINT_CALLBACK;
                        if (map3.containsKey(decodeHintType)) {
                            EnumMap enumMap = new EnumMap(DecodeHintType.class);
                            enumMap.putAll(map3);
                            enumMap.remove(decodeHintType);
                            oneDReader = this;
                            map3 = enumMap;
                            Result decodeRow = oneDReader.decodeRow(i4, bitArray, map3);
                            if (i5 != i7) {
                                decodeRow.putMetadata(ResultMetadataType.ORIENTATION, 180);
                                ResultPoint[] resultPoints = decodeRow.getResultPoints();
                                if (resultPoints != null) {
                                    map2 = map3;
                                    float f = width;
                                    try {
                                        i6 = width;
                                    } catch (ReaderException unused) {
                                        i6 = width;
                                        i5++;
                                        map3 = map2;
                                        width = i6;
                                        c = 0;
                                        i7 = 1;
                                    }
                                    try {
                                        resultPoints[0] = new ResultPoint((f - resultPoints[c].getX()) - 1.0f, resultPoints[c].getY());
                                    } catch (ReaderException unused2) {
                                        i5++;
                                        map3 = map2;
                                        width = i6;
                                        c = 0;
                                        i7 = 1;
                                    }
                                    try {
                                        resultPoints[1] = new ResultPoint((f - resultPoints[1].getX()) - 1.0f, resultPoints[1].getY());
                                    } catch (ReaderException unused3) {
                                        continue;
                                        i5++;
                                        map3 = map2;
                                        width = i6;
                                        c = 0;
                                        i7 = 1;
                                    }
                                }
                            }
                            return decodeRow;
                        }
                    }
                }
                Result decodeRow2 = oneDReader.decodeRow(i4, bitArray, map3);
                if (i5 != i7) {
                }
                return decodeRow2;
            } catch (ReaderException unused4) {
                map2 = map3;
            }
            oneDReader = this;
        }
        continue;
        i9 = i3;
        width = width;
        c = 0;
        i7 = 1;
    }

    public static float patternMatchVariance(int[] iArr, int[] iArr2, float f) {
        float f2;
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f3 = i;
        float f4 = f3 / i2;
        float f5 = f * f4;
        float f6 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f7 = iArr2[i4] * f4;
            float f8 = iArr[i4];
            if (f8 > f7) {
                f2 = f8 - f7;
            } else {
                f2 = f7 - f8;
            }
            if (f2 > f5) {
                return Float.POSITIVE_INFINITY;
            }
            f6 += f2;
        }
        return f6 / f3;
    }

    public static void recordPattern(BitArray bitArray, int i, int[] iArr) {
        int length = iArr.length;
        int i2 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int size = bitArray.getSize();
        if (i < size) {
            boolean z = !bitArray.get(i);
            while (i < size) {
                if (bitArray.get(i) != z) {
                    iArr[i2] = iArr[i2] + 1;
                } else {
                    i2++;
                    if (i2 == length) {
                        break;
                    }
                    iArr[i2] = 1;
                    z = !z;
                }
                i++;
            }
            if (i2 != length) {
                if (i2 != length - 1 || i != size) {
                    throw NotFoundException.getNotFoundInstance();
                }
                return;
            }
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static void recordPatternInReverse(BitArray bitArray, int i, int[] iArr) {
        int length = iArr.length;
        boolean z = bitArray.get(i);
        while (i > 0 && length >= 0) {
            i--;
            if (bitArray.get(i) != z) {
                length--;
                z = !z;
            }
        }
        if (length < 0) {
            recordPattern(bitArray, i + 1, iArr);
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) {
        return decode(binaryBitmap, null);
    }

    public abstract Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map);

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) {
        try {
            return doDecode(binaryBitmap, map);
        } catch (NotFoundException e) {
            if (map != null && map.containsKey(DecodeHintType.TRY_HARDER) && binaryBitmap.isRotateSupported()) {
                BinaryBitmap rotateCounterClockwise = binaryBitmap.rotateCounterClockwise();
                Result doDecode = doDecode(rotateCounterClockwise, map);
                Map<ResultMetadataType, Object> resultMetadata = doDecode.getResultMetadata();
                int i = 270;
                if (resultMetadata != null) {
                    ResultMetadataType resultMetadataType = ResultMetadataType.ORIENTATION;
                    if (resultMetadata.containsKey(resultMetadataType)) {
                        i = (((Integer) resultMetadata.get(resultMetadataType)).intValue() + 270) % 360;
                    }
                }
                doDecode.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(i));
                ResultPoint[] resultPoints = doDecode.getResultPoints();
                if (resultPoints != null) {
                    int height = rotateCounterClockwise.getHeight();
                    for (int i2 = 0; i2 < resultPoints.length; i2++) {
                        resultPoints[i2] = new ResultPoint((height - resultPoints[i2].getY()) - 1.0f, resultPoints[i2].getX());
                    }
                }
                return doDecode;
            }
            throw e;
        }
    }
}
