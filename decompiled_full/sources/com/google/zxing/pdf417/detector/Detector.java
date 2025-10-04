package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class Detector {
    private static final int BARCODE_MIN_HEIGHT = 10;
    private static final float MAX_AVG_VARIANCE = 0.42f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.8f;
    private static final int MAX_PATTERN_DRIFT = 5;
    private static final int MAX_PIXEL_DRIFT = 3;
    private static final float MAX_STOP_PATTERN_HEIGHT_VARIANCE = 0.5f;
    private static final int ROW_STEP = 5;
    private static final int SKIPPED_ROW_COUNT_MAX = 25;
    private static final int[] INDEXES_START_PATTERN = {0, 4, 1, 5};
    private static final int[] INDEXES_STOP_PATTERN = {6, 2, 7, 3};
    private static final int[] START_PATTERN = {8, 1, 1, 1, 1, 1, 1, 3};
    private static final int[] STOP_PATTERN = {7, 1, 1, 3, 1, 1, 1, 2, 1};
    private static final int[] ROTATIONS = {0, 180, 270, 90};

    private Detector() {
    }

    private static BitMatrix applyRotation(BitMatrix bitMatrix, int i) {
        if (i % 360 == 0) {
            return bitMatrix;
        }
        BitMatrix m1325clone = bitMatrix.m1325clone();
        m1325clone.rotate(i);
        return m1325clone;
    }

    private static void copyToResult(ResultPoint[] resultPointArr, ResultPoint[] resultPointArr2, int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            resultPointArr[iArr[i]] = resultPointArr2[i];
        }
    }

    public static PDF417DetectorResult detect(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map, boolean z) {
        BitMatrix blackMatrix = binaryBitmap.getBlackMatrix();
        for (int i : ROTATIONS) {
            BitMatrix applyRotation = applyRotation(blackMatrix, i);
            List<ResultPoint[]> detect = detect(z, applyRotation);
            if (!detect.isEmpty()) {
                return new PDF417DetectorResult(applyRotation, detect, i);
            }
        }
        return new PDF417DetectorResult(blackMatrix, new ArrayList(), 0);
    }

    private static int[] findGuardPattern(BitMatrix bitMatrix, int i, int i2, int i3, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i4 = 0;
        while (bitMatrix.get(i, i2) && i > 0) {
            int i5 = i4 + 1;
            if (i4 >= 3) {
                break;
            }
            i--;
            i4 = i5;
        }
        int length = iArr.length;
        int i6 = i;
        int i7 = 0;
        boolean z = false;
        while (i < i3) {
            if (bitMatrix.get(i, i2) != z) {
                iArr2[i7] = iArr2[i7] + 1;
            } else {
                if (i7 == length - 1) {
                    if (patternMatchVariance(iArr2, iArr) < MAX_AVG_VARIANCE) {
                        return new int[]{i6, i};
                    }
                    i6 += iArr2[0] + iArr2[1];
                    int i8 = i7 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i8);
                    iArr2[i8] = 0;
                    iArr2[i7] = 0;
                    i7--;
                } else {
                    i7++;
                }
                iArr2[i7] = 1;
                z = !z;
            }
            i++;
        }
        if (i7 == length - 1 && patternMatchVariance(iArr2, iArr) < MAX_AVG_VARIANCE) {
            return new int[]{i6, i - 1};
        }
        return null;
    }

    private static ResultPoint[] findRowsWithPattern(BitMatrix bitMatrix, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        boolean z;
        int i6;
        ResultPoint[] resultPointArr = new ResultPoint[4];
        int[] iArr2 = new int[iArr.length];
        int i7 = i3;
        while (true) {
            if (i7 < i) {
                int[] findGuardPattern = findGuardPattern(bitMatrix, i4, i7, i2, iArr, iArr2);
                if (findGuardPattern != null) {
                    int i8 = i7;
                    int[] iArr3 = findGuardPattern;
                    while (i8 > 0) {
                        int i9 = i8 - 1;
                        int[] findGuardPattern2 = findGuardPattern(bitMatrix, i4, i9, i2, iArr, iArr2);
                        if (findGuardPattern2 == null) {
                            break;
                        }
                        iArr3 = findGuardPattern2;
                        i8 = i9;
                    }
                    float f = i8;
                    resultPointArr[0] = new ResultPoint(iArr3[0], f);
                    resultPointArr[1] = new ResultPoint(iArr3[1], f);
                    i7 = i8;
                    z = true;
                } else {
                    i7 += 5;
                }
            } else {
                z = false;
                break;
            }
        }
        int i10 = i7 + 1;
        if (z) {
            int[] iArr4 = {(int) resultPointArr[0].getX(), (int) resultPointArr[1].getX()};
            int i11 = i10;
            int i12 = 0;
            while (true) {
                if (i11 < i) {
                    i6 = i12;
                    int[] findGuardPattern3 = findGuardPattern(bitMatrix, iArr4[0], i11, i2, iArr, iArr2);
                    if (findGuardPattern3 != null && Math.abs(iArr4[0] - findGuardPattern3[0]) < 5 && Math.abs(iArr4[1] - findGuardPattern3[1]) < 5) {
                        iArr4 = findGuardPattern3;
                        i12 = 0;
                    } else {
                        if (i6 > 25) {
                            break;
                        }
                        i12 = i6 + 1;
                    }
                    i11++;
                } else {
                    i6 = i12;
                    break;
                }
            }
            i10 = i11 - (i6 + 1);
            float f2 = i10;
            resultPointArr[2] = new ResultPoint(iArr4[0], f2);
            resultPointArr[3] = new ResultPoint(iArr4[1], f2);
        }
        if (i10 - i7 < i5) {
            Arrays.fill(resultPointArr, (Object) null);
        }
        return resultPointArr;
    }

    private static ResultPoint[] findVertices(BitMatrix bitMatrix, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        ResultPoint[] resultPointArr = new ResultPoint[8];
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i, i2, 10, START_PATTERN), INDEXES_START_PATTERN);
        ResultPoint resultPoint = resultPointArr[4];
        if (resultPoint != null) {
            i2 = (int) resultPoint.getX();
            i = (int) resultPointArr[4].getY();
            if (resultPointArr[5] != null) {
                i3 = i;
                i4 = i2;
                i5 = (int) Math.max((((int) r0.getY()) - i) * 0.5f, 10.0f);
                copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i3, i4, i5, STOP_PATTERN), INDEXES_STOP_PATTERN);
                return resultPointArr;
            }
        }
        i3 = i;
        i4 = i2;
        i5 = 10;
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i3, i4, i5, STOP_PATTERN), INDEXES_STOP_PATTERN);
        return resultPointArr;
    }

    private static float patternMatchVariance(int[] iArr, int[] iArr2) {
        float f;
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
        float f2 = i;
        float f3 = f2 / i2;
        float f4 = MAX_INDIVIDUAL_VARIANCE * f3;
        float f5 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f6 = iArr2[i4] * f3;
            float f7 = iArr[i4];
            if (f7 > f6) {
                f = f7 - f6;
            } else {
                f = f6 - f7;
            }
            if (f > f4) {
                return Float.POSITIVE_INFINITY;
            }
            f5 += f;
        }
        return f5 / f2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
    
        if (r4 != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
    
        r3 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0028, code lost:
    
        if (r3.hasNext() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
    
        r4 = (com.google.zxing.ResultPoint[]) r3.next();
        r7 = r4[1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
    
        if (r7 == null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0034, code lost:
    
        r2 = (int) java.lang.Math.max(r2, r7.getY());
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003e, code lost:
    
        r4 = r4[3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
    
        if (r4 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
    
        r2 = java.lang.Math.max(r2, (int) r4.getY());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static List<ResultPoint[]> detect(boolean z, BitMatrix bitMatrix) {
        int x;
        float y;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        loop0: while (true) {
            int i2 = 0;
            boolean z2 = false;
            while (true) {
                if (i >= bitMatrix.getHeight()) {
                    break loop0;
                }
                ResultPoint[] findVertices = findVertices(bitMatrix, i, i2);
                if (findVertices[0] == null && findVertices[3] == null) {
                    break;
                }
                arrayList.add(findVertices);
                if (!z) {
                    break loop0;
                }
                ResultPoint resultPoint = findVertices[2];
                if (resultPoint != null) {
                    x = (int) resultPoint.getX();
                    y = findVertices[2].getY();
                } else {
                    x = (int) findVertices[4].getX();
                    y = findVertices[4].getY();
                }
                i = (int) y;
                i2 = x;
                z2 = true;
            }
            i += 5;
        }
        return arrayList;
    }
}
