package com.google.zxing.datamatrix.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.WhiteRectangleDetector;

/* loaded from: classes3.dex */
public final class Detector {
    private final BitMatrix image;
    private final WhiteRectangleDetector rectangleDetector;

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
        this.rectangleDetector = new WhiteRectangleDetector(bitMatrix);
    }

    private ResultPoint correctTopRight(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint = resultPointArr[0];
        ResultPoint resultPoint2 = resultPointArr[1];
        ResultPoint resultPoint3 = resultPointArr[2];
        ResultPoint resultPoint4 = resultPointArr[3];
        int transitionsBetween = transitionsBetween(resultPoint, resultPoint4);
        ResultPoint shiftPoint = shiftPoint(resultPoint, resultPoint2, (transitionsBetween(resultPoint2, resultPoint4) + 1) * 4);
        ResultPoint shiftPoint2 = shiftPoint(resultPoint3, resultPoint2, (transitionsBetween + 1) * 4);
        int transitionsBetween2 = transitionsBetween(shiftPoint, resultPoint4);
        int transitionsBetween3 = transitionsBetween(shiftPoint2, resultPoint4);
        float f = transitionsBetween2 + 1;
        ResultPoint resultPoint5 = new ResultPoint(((resultPoint3.getX() - resultPoint2.getX()) / f) + resultPoint4.getX(), ((resultPoint3.getY() - resultPoint2.getY()) / f) + resultPoint4.getY());
        float f2 = transitionsBetween3 + 1;
        ResultPoint resultPoint6 = new ResultPoint(((resultPoint.getX() - resultPoint2.getX()) / f2) + resultPoint4.getX(), ((resultPoint.getY() - resultPoint2.getY()) / f2) + resultPoint4.getY());
        if (!isValid(resultPoint5)) {
            if (isValid(resultPoint6)) {
                return resultPoint6;
            }
            return null;
        }
        if (!isValid(resultPoint6)) {
            return resultPoint5;
        }
        if (transitionsBetween(shiftPoint, resultPoint5) + transitionsBetween(shiftPoint2, resultPoint5) > transitionsBetween(shiftPoint, resultPoint6) + transitionsBetween(shiftPoint2, resultPoint6)) {
            return resultPoint5;
        }
        return resultPoint6;
    }

    private ResultPoint[] detectSolid1(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint = resultPointArr[0];
        ResultPoint resultPoint2 = resultPointArr[1];
        ResultPoint resultPoint3 = resultPointArr[3];
        ResultPoint resultPoint4 = resultPointArr[2];
        int transitionsBetween = transitionsBetween(resultPoint, resultPoint2);
        int transitionsBetween2 = transitionsBetween(resultPoint2, resultPoint3);
        int transitionsBetween3 = transitionsBetween(resultPoint3, resultPoint4);
        int transitionsBetween4 = transitionsBetween(resultPoint4, resultPoint);
        ResultPoint[] resultPointArr2 = {resultPoint4, resultPoint, resultPoint2, resultPoint3};
        if (transitionsBetween > transitionsBetween2) {
            resultPointArr2[0] = resultPoint;
            resultPointArr2[1] = resultPoint2;
            resultPointArr2[2] = resultPoint3;
            resultPointArr2[3] = resultPoint4;
            transitionsBetween = transitionsBetween2;
        }
        if (transitionsBetween > transitionsBetween3) {
            resultPointArr2[0] = resultPoint2;
            resultPointArr2[1] = resultPoint3;
            resultPointArr2[2] = resultPoint4;
            resultPointArr2[3] = resultPoint;
        } else {
            transitionsBetween3 = transitionsBetween;
        }
        if (transitionsBetween3 > transitionsBetween4) {
            resultPointArr2[0] = resultPoint3;
            resultPointArr2[1] = resultPoint4;
            resultPointArr2[2] = resultPoint;
            resultPointArr2[3] = resultPoint2;
        }
        return resultPointArr2;
    }

    private ResultPoint[] detectSolid2(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint = resultPointArr[0];
        ResultPoint resultPoint2 = resultPointArr[1];
        ResultPoint resultPoint3 = resultPointArr[2];
        ResultPoint resultPoint4 = resultPointArr[3];
        int transitionsBetween = (transitionsBetween(resultPoint, resultPoint4) + 1) * 4;
        if (transitionsBetween(shiftPoint(resultPoint2, resultPoint3, transitionsBetween), resultPoint) < transitionsBetween(shiftPoint(resultPoint3, resultPoint2, transitionsBetween), resultPoint4)) {
            resultPointArr[0] = resultPoint;
            resultPointArr[1] = resultPoint2;
            resultPointArr[2] = resultPoint3;
            resultPointArr[3] = resultPoint4;
        } else {
            resultPointArr[0] = resultPoint2;
            resultPointArr[1] = resultPoint3;
            resultPointArr[2] = resultPoint4;
            resultPointArr[3] = resultPoint;
        }
        return resultPointArr;
    }

    private boolean isValid(ResultPoint resultPoint) {
        if (resultPoint.getX() >= 0.0f && resultPoint.getX() <= this.image.getWidth() - 1 && resultPoint.getY() > 0.0f && resultPoint.getY() <= this.image.getHeight() - 1) {
            return true;
        }
        return false;
    }

    private static ResultPoint moveAway(ResultPoint resultPoint, float f, float f2) {
        float f3;
        float f4;
        float x = resultPoint.getX();
        float y = resultPoint.getY();
        if (x < f) {
            f3 = x - 1.0f;
        } else {
            f3 = x + 1.0f;
        }
        if (y < f2) {
            f4 = y - 1.0f;
        } else {
            f4 = y + 1.0f;
        }
        return new ResultPoint(f3, f4);
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) {
        float f = i - 0.5f;
        float f2 = i2 - 0.5f;
        return GridSampler.getInstance().sampleGrid(bitMatrix, i, i2, 0.5f, 0.5f, f, 0.5f, f, f2, 0.5f, f2, resultPoint.getX(), resultPoint.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private static ResultPoint shiftPoint(ResultPoint resultPoint, ResultPoint resultPoint2, int i) {
        float f = i + 1;
        return new ResultPoint(resultPoint.getX() + ((resultPoint2.getX() - resultPoint.getX()) / f), resultPoint.getY() + ((resultPoint2.getY() - resultPoint.getY()) / f));
    }

    private ResultPoint[] shiftToModuleCenter(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint = resultPointArr[0];
        ResultPoint resultPoint2 = resultPointArr[1];
        ResultPoint resultPoint3 = resultPointArr[2];
        ResultPoint resultPoint4 = resultPointArr[3];
        int transitionsBetween = transitionsBetween(resultPoint, resultPoint4) + 1;
        ResultPoint shiftPoint = shiftPoint(resultPoint, resultPoint2, (transitionsBetween(resultPoint3, resultPoint4) + 1) * 4);
        ResultPoint shiftPoint2 = shiftPoint(resultPoint3, resultPoint2, transitionsBetween * 4);
        int transitionsBetween2 = transitionsBetween(shiftPoint, resultPoint4);
        int i = transitionsBetween2 + 1;
        int transitionsBetween3 = transitionsBetween(shiftPoint2, resultPoint4);
        int i2 = transitionsBetween3 + 1;
        if ((i & 1) == 1) {
            i = transitionsBetween2 + 2;
        }
        if ((i2 & 1) == 1) {
            i2 = transitionsBetween3 + 2;
        }
        float x = (resultPoint4.getX() + (resultPoint3.getX() + (resultPoint2.getX() + resultPoint.getX()))) / 4.0f;
        float y = (resultPoint4.getY() + (resultPoint3.getY() + (resultPoint2.getY() + resultPoint.getY()))) / 4.0f;
        ResultPoint moveAway = moveAway(resultPoint, x, y);
        ResultPoint moveAway2 = moveAway(resultPoint2, x, y);
        ResultPoint moveAway3 = moveAway(resultPoint3, x, y);
        ResultPoint moveAway4 = moveAway(resultPoint4, x, y);
        int i3 = i2 * 4;
        int i4 = i * 4;
        return new ResultPoint[]{shiftPoint(shiftPoint(moveAway, moveAway2, i3), moveAway4, i4), shiftPoint(shiftPoint(moveAway2, moveAway, i3), moveAway3, i4), shiftPoint(shiftPoint(moveAway3, moveAway4, i3), moveAway2, i4), shiftPoint(shiftPoint(moveAway4, moveAway3, i3), moveAway, i4)};
    }

    private int transitionsBetween(ResultPoint resultPoint, ResultPoint resultPoint2) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int x = (int) resultPoint.getX();
        int y = (int) resultPoint.getY();
        int x2 = (int) resultPoint2.getX();
        int i6 = 1;
        int min = Math.min(this.image.getHeight() - 1, (int) resultPoint2.getY());
        int i7 = 0;
        if (Math.abs(min - y) > Math.abs(x2 - x)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            y = x;
            x = y;
            min = x2;
            x2 = min;
        }
        int abs = Math.abs(x2 - x);
        int abs2 = Math.abs(min - y);
        int i8 = (-abs) / 2;
        if (y < min) {
            i = 1;
        } else {
            i = -1;
        }
        if (x >= x2) {
            i6 = -1;
        }
        BitMatrix bitMatrix = this.image;
        if (z) {
            i2 = y;
        } else {
            i2 = x;
        }
        if (z) {
            i3 = x;
        } else {
            i3 = y;
        }
        boolean z2 = bitMatrix.get(i2, i3);
        while (x != x2) {
            BitMatrix bitMatrix2 = this.image;
            if (z) {
                i4 = y;
            } else {
                i4 = x;
            }
            if (z) {
                i5 = x;
            } else {
                i5 = y;
            }
            boolean z3 = bitMatrix2.get(i4, i5);
            if (z3 != z2) {
                i7++;
                z2 = z3;
            }
            i8 += abs2;
            if (i8 > 0) {
                if (y == min) {
                    break;
                }
                y += i;
                i8 -= abs;
            }
            x += i6;
        }
        return i7;
    }

    public DetectorResult detect() {
        int i;
        int i2;
        ResultPoint[] detectSolid2 = detectSolid2(detectSolid1(this.rectangleDetector.detect()));
        ResultPoint correctTopRight = correctTopRight(detectSolid2);
        detectSolid2[3] = correctTopRight;
        if (correctTopRight != null) {
            ResultPoint[] shiftToModuleCenter = shiftToModuleCenter(detectSolid2);
            ResultPoint resultPoint = shiftToModuleCenter[0];
            ResultPoint resultPoint2 = shiftToModuleCenter[1];
            ResultPoint resultPoint3 = shiftToModuleCenter[2];
            ResultPoint resultPoint4 = shiftToModuleCenter[3];
            int transitionsBetween = transitionsBetween(resultPoint, resultPoint4);
            int i3 = transitionsBetween + 1;
            int transitionsBetween2 = transitionsBetween(resultPoint3, resultPoint4);
            int i4 = transitionsBetween2 + 1;
            if ((i3 & 1) == 1) {
                i3 = transitionsBetween + 2;
            }
            if ((i4 & 1) == 1) {
                i4 = transitionsBetween2 + 2;
            }
            if (i3 * 4 < i4 * 6 && i4 * 4 < i3 * 6) {
                i = Math.max(i3, i4);
                i2 = i;
            } else {
                i = i3;
                i2 = i4;
            }
            return new DetectorResult(sampleGrid(this.image, resultPoint, resultPoint2, resultPoint3, resultPoint4, i, i2), new ResultPoint[]{resultPoint, resultPoint2, resultPoint3, resultPoint4});
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
