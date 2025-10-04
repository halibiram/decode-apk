package com.google.zxing.oned.rss;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.OneDReader;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class RSS14Reader extends AbstractRSSReader {
    private final List<Pair> possibleLeftPairs = new ArrayList();
    private final List<Pair> possibleRightPairs = new ArrayList();
    private static final int[] OUTSIDE_EVEN_TOTAL_SUBSET = {1, 10, 34, 70, 126};
    private static final int[] INSIDE_ODD_TOTAL_SUBSET = {4, 20, 48, 81};
    private static final int[] OUTSIDE_GSUM = {0, 161, 961, 2015, 2715};
    private static final int[] INSIDE_GSUM = {0, 336, 1036, 1516};
    private static final int[] OUTSIDE_ODD_WIDEST = {8, 6, 4, 3, 1};
    private static final int[] INSIDE_ODD_WIDEST = {2, 4, 6, 8};
    private static final int[][] FINDER_PATTERNS = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    private static void addOrTally(Collection<Pair> collection, Pair pair) {
        if (pair == null) {
            return;
        }
        for (Pair pair2 : collection) {
            if (pair2.getValue() == pair.getValue()) {
                pair2.incrementCount();
                return;
            }
        }
        collection.add(pair);
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0028, code lost:
    
        if (r1 < 4) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x002a, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x002b, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x002d, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0043, code lost:
    
        if (r1 < 4) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void adjustOddEvenCounts(boolean z, int i) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int sum = MathUtils.sum(getOddCounts());
        int sum2 = MathUtils.sum(getEvenCounts());
        boolean z7 = true;
        boolean z8 = false;
        if (z) {
            if (sum > 12) {
                z2 = false;
                z3 = true;
            } else {
                if (sum < 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                z3 = false;
            }
            if (sum2 <= 12) {
            }
            z4 = false;
            z5 = true;
        } else {
            if (sum > 11) {
                z2 = false;
                z3 = true;
            } else {
                if (sum < 5) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                z3 = false;
            }
            if (sum2 <= 10) {
            }
            z4 = false;
            z5 = true;
        }
        int i2 = (sum + sum2) - i;
        if ((sum & 1) == z) {
            z6 = true;
        } else {
            z6 = false;
        }
        if ((sum2 & 1) == 1) {
            z8 = true;
        }
        if (i2 != -1) {
            if (i2 != 0) {
                if (i2 == 1) {
                    if (z6) {
                        if (!z8) {
                            z7 = z2;
                            z3 = true;
                        } else {
                            throw NotFoundException.getNotFoundInstance();
                        }
                    } else if (z8) {
                        z7 = z2;
                        z5 = true;
                    } else {
                        throw NotFoundException.getNotFoundInstance();
                    }
                } else {
                    throw NotFoundException.getNotFoundInstance();
                }
            } else if (z6) {
                if (z8) {
                    if (sum >= sum2) {
                        z7 = z2;
                        z4 = true;
                        z3 = true;
                    }
                    z5 = true;
                } else {
                    throw NotFoundException.getNotFoundInstance();
                }
            } else if (!z8) {
                z7 = z2;
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        } else if (z6) {
            if (z8) {
                throw NotFoundException.getNotFoundInstance();
            }
        } else if (z8) {
            z7 = z2;
            z4 = true;
        } else {
            throw NotFoundException.getNotFoundInstance();
        }
        if (z7) {
            if (!z3) {
                AbstractRSSReader.increment(getOddCounts(), getOddRoundingErrors());
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
        if (z3) {
            AbstractRSSReader.decrement(getOddCounts(), getOddRoundingErrors());
        }
        if (z4) {
            if (!z5) {
                AbstractRSSReader.increment(getEvenCounts(), getOddRoundingErrors());
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
        if (z5) {
            AbstractRSSReader.decrement(getEvenCounts(), getEvenRoundingErrors());
        }
    }

    private static boolean checkChecksum(Pair pair, Pair pair2) {
        int checksumPortion = ((pair2.getChecksumPortion() * 16) + pair.getChecksumPortion()) % 79;
        int value = pair2.getFinderPattern().getValue() + (pair.getFinderPattern().getValue() * 9);
        if (value > 72) {
            value--;
        }
        if (value > 8) {
            value--;
        }
        if (checksumPortion == value) {
            return true;
        }
        return false;
    }

    private static Result constructResult(Pair pair, Pair pair2) {
        String valueOf = String.valueOf((pair.getValue() * 4537077) + pair2.getValue());
        StringBuilder sb = new StringBuilder(14);
        for (int length = 13 - valueOf.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(valueOf);
        int i = 0;
        for (int i2 = 0; i2 < 13; i2++) {
            int charAt = sb.charAt(i2) - '0';
            if ((i2 & 1) == 0) {
                charAt *= 3;
            }
            i += charAt;
        }
        int i3 = 10 - (i % 10);
        if (i3 == 10) {
            i3 = 0;
        }
        sb.append(i3);
        ResultPoint[] resultPoints = pair.getFinderPattern().getResultPoints();
        ResultPoint[] resultPoints2 = pair2.getFinderPattern().getResultPoints();
        Result result = new Result(sb.toString(), null, new ResultPoint[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_14);
        result.putMetadata(ResultMetadataType.SYMBOLOGY_IDENTIFIER, new ObfuscatedString(new long[]{-5449778999656712434L, -1154436095215416636L}).toString());
        return result;
    }

    private DataCharacter decodeDataCharacter(BitArray bitArray, FinderPattern finderPattern, boolean z) {
        int i;
        int[] dataCharacterCounters = getDataCharacterCounters();
        Arrays.fill(dataCharacterCounters, 0);
        if (z) {
            OneDReader.recordPatternInReverse(bitArray, finderPattern.getStartEnd()[0], dataCharacterCounters);
        } else {
            OneDReader.recordPattern(bitArray, finderPattern.getStartEnd()[1], dataCharacterCounters);
            int i2 = 0;
            for (int length = dataCharacterCounters.length - 1; i2 < length; length--) {
                int i3 = dataCharacterCounters[i2];
                dataCharacterCounters[i2] = dataCharacterCounters[length];
                dataCharacterCounters[length] = i3;
                i2++;
            }
        }
        if (z) {
            i = 16;
        } else {
            i = 15;
        }
        float sum = MathUtils.sum(dataCharacterCounters) / i;
        int[] oddCounts = getOddCounts();
        int[] evenCounts = getEvenCounts();
        float[] oddRoundingErrors = getOddRoundingErrors();
        float[] evenRoundingErrors = getEvenRoundingErrors();
        for (int i4 = 0; i4 < dataCharacterCounters.length; i4++) {
            float f = dataCharacterCounters[i4] / sum;
            int i5 = (int) (0.5f + f);
            if (i5 < 1) {
                i5 = 1;
            } else if (i5 > 8) {
                i5 = 8;
            }
            int i6 = i4 / 2;
            if ((i4 & 1) == 0) {
                oddCounts[i6] = i5;
                oddRoundingErrors[i6] = f - i5;
            } else {
                evenCounts[i6] = i5;
                evenRoundingErrors[i6] = f - i5;
            }
        }
        adjustOddEvenCounts(z, i);
        int i7 = 0;
        int i8 = 0;
        for (int length2 = oddCounts.length - 1; length2 >= 0; length2--) {
            int i9 = oddCounts[length2];
            i7 = (i7 * 9) + i9;
            i8 += i9;
        }
        int i10 = 0;
        int i11 = 0;
        for (int length3 = evenCounts.length - 1; length3 >= 0; length3--) {
            int i12 = evenCounts[length3];
            i10 = (i10 * 9) + i12;
            i11 += i12;
        }
        int i13 = (i10 * 3) + i7;
        if (z) {
            if ((i8 & 1) == 0 && i8 <= 12 && i8 >= 4) {
                int i14 = (12 - i8) / 2;
                int i15 = OUTSIDE_ODD_WIDEST[i14];
                int i16 = 9 - i15;
                return new DataCharacter((RSSUtils.getRSSvalue(oddCounts, i15, false) * OUTSIDE_EVEN_TOTAL_SUBSET[i14]) + RSSUtils.getRSSvalue(evenCounts, i16, true) + OUTSIDE_GSUM[i14], i13);
            }
            throw NotFoundException.getNotFoundInstance();
        }
        if ((i11 & 1) == 0 && i11 <= 10 && i11 >= 4) {
            int i17 = (10 - i11) / 2;
            int i18 = INSIDE_ODD_WIDEST[i17];
            return new DataCharacter((RSSUtils.getRSSvalue(evenCounts, 9 - i18, false) * INSIDE_ODD_TOTAL_SUBSET[i17]) + RSSUtils.getRSSvalue(oddCounts, i18, true) + INSIDE_GSUM[i17], i13);
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private Pair decodePair(BitArray bitArray, boolean z, int i, Map<DecodeHintType, ?> map) {
        ResultPointCallback resultPointCallback;
        try {
            FinderPattern parseFoundFinderPattern = parseFoundFinderPattern(bitArray, i, z, findFinderPattern(bitArray, z));
            if (map == null) {
                resultPointCallback = null;
            } else {
                resultPointCallback = (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
            }
            if (resultPointCallback != null) {
                int[] startEnd = parseFoundFinderPattern.getStartEnd();
                float f = ((startEnd[0] + startEnd[1]) - 1) / 2.0f;
                if (z) {
                    f = (bitArray.getSize() - 1) - f;
                }
                resultPointCallback.foundPossibleResultPoint(new ResultPoint(f, i));
            }
            DataCharacter decodeDataCharacter = decodeDataCharacter(bitArray, parseFoundFinderPattern, true);
            DataCharacter decodeDataCharacter2 = decodeDataCharacter(bitArray, parseFoundFinderPattern, false);
            return new Pair((decodeDataCharacter.getValue() * 1597) + decodeDataCharacter2.getValue(), (decodeDataCharacter2.getChecksumPortion() * 4) + decodeDataCharacter.getChecksumPortion(), parseFoundFinderPattern);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    private int[] findFinderPattern(BitArray bitArray, boolean z) {
        int[] decodeFinderCounters = getDecodeFinderCounters();
        decodeFinderCounters[0] = 0;
        decodeFinderCounters[1] = 0;
        decodeFinderCounters[2] = 0;
        decodeFinderCounters[3] = 0;
        int size = bitArray.getSize();
        int i = 0;
        boolean z2 = false;
        while (i < size) {
            z2 = !bitArray.get(i);
            if (z == z2) {
                break;
            }
            i++;
        }
        int i2 = i;
        int i3 = 0;
        while (i < size) {
            if (bitArray.get(i) != z2) {
                decodeFinderCounters[i3] = decodeFinderCounters[i3] + 1;
            } else {
                if (i3 == 3) {
                    if (AbstractRSSReader.isFinderPattern(decodeFinderCounters)) {
                        return new int[]{i2, i};
                    }
                    i2 += decodeFinderCounters[0] + decodeFinderCounters[1];
                    decodeFinderCounters[0] = decodeFinderCounters[2];
                    decodeFinderCounters[1] = decodeFinderCounters[3];
                    decodeFinderCounters[2] = 0;
                    decodeFinderCounters[3] = 0;
                    i3--;
                } else {
                    i3++;
                }
                decodeFinderCounters[i3] = 1;
                z2 = !z2;
            }
            i++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private FinderPattern parseFoundFinderPattern(BitArray bitArray, int i, boolean z, int[] iArr) {
        int i2;
        int i3;
        boolean z2 = bitArray.get(iArr[0]);
        int i4 = iArr[0] - 1;
        while (i4 >= 0 && z2 != bitArray.get(i4)) {
            i4--;
        }
        int i5 = i4 + 1;
        int i6 = iArr[0] - i5;
        int[] decodeFinderCounters = getDecodeFinderCounters();
        System.arraycopy(decodeFinderCounters, 0, decodeFinderCounters, 1, decodeFinderCounters.length - 1);
        decodeFinderCounters[0] = i6;
        int parseFinderValue = AbstractRSSReader.parseFinderValue(decodeFinderCounters, FINDER_PATTERNS);
        int i7 = iArr[1];
        if (z) {
            int size = (bitArray.getSize() - 1) - i5;
            i2 = (bitArray.getSize() - 1) - i7;
            i3 = size;
        } else {
            i2 = i7;
            i3 = i5;
        }
        return new FinderPattern(parseFinderValue, new int[]{i5, iArr[1]}, i3, i2, i);
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) {
        addOrTally(this.possibleLeftPairs, decodePair(bitArray, false, i, map));
        bitArray.reverse();
        addOrTally(this.possibleRightPairs, decodePair(bitArray, true, i, map));
        bitArray.reverse();
        for (Pair pair : this.possibleLeftPairs) {
            if (pair.getCount() > 1) {
                for (Pair pair2 : this.possibleRightPairs) {
                    if (pair2.getCount() > 1 && checkChecksum(pair, pair2)) {
                        return constructResult(pair, pair2);
                    }
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.possibleLeftPairs.clear();
        this.possibleRightPairs.clear();
    }
}
