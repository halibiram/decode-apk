package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
abstract class LineBuffer {
    private StringBuilder line = new StringBuilder();
    private boolean sawReturn;

    @CanIgnoreReturnValue
    private boolean finishLine(boolean z) {
        String obfuscatedString;
        ObfuscatedString obfuscatedString2;
        if (this.sawReturn) {
            long[] jArr = {3926173934229484092L, 8262429387146023691L};
            if (z) {
                // fill-array-data instruction
                jArr[0] = -6284161500072495353L;
                jArr[1] = -959121722165038114L;
                obfuscatedString2 = new ObfuscatedString(jArr);
            } else {
                obfuscatedString2 = new ObfuscatedString(jArr);
            }
        } else if (z) {
            obfuscatedString2 = new ObfuscatedString(new long[]{2670806634510150177L, 2958129571413334486L});
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-4544163310191465952L}).toString();
            handleLine(this.line.toString(), obfuscatedString);
            this.line = new StringBuilder();
            this.sawReturn = false;
            return z;
        }
        obfuscatedString = obfuscatedString2.toString();
        handleLine(this.line.toString(), obfuscatedString);
        this.line = new StringBuilder();
        this.sawReturn = false;
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void add(char[] cArr, int i, int i2) {
        int i3;
        int i4;
        boolean z;
        boolean z2;
        if (this.sawReturn && i2 > 0) {
            if (cArr[i] == '\n') {
                z2 = true;
            } else {
                z2 = false;
            }
            if (finishLine(z2)) {
                i3 = i + 1;
                i4 = i + i2;
                int i5 = i3;
                while (i3 < i4) {
                    char c = cArr[i3];
                    if (c != '\n') {
                        if (c == '\r') {
                            this.line.append(cArr, i5, i3 - i5);
                            this.sawReturn = true;
                            int i6 = i3 + 1;
                            if (i6 < i4) {
                                if (cArr[i6] == '\n') {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (finishLine(z)) {
                                    i3 = i6;
                                }
                            }
                        } else {
                            i3++;
                        }
                    } else {
                        this.line.append(cArr, i5, i3 - i5);
                        finishLine(true);
                    }
                    i5 = i3 + 1;
                    i3++;
                }
                this.line.append(cArr, i5, i4 - i5);
            }
        }
        i3 = i;
        i4 = i + i2;
        int i52 = i3;
        while (i3 < i4) {
        }
        this.line.append(cArr, i52, i4 - i52);
    }

    public void finish() {
        if (this.sawReturn || this.line.length() > 0) {
            finishLine(false);
        }
    }

    public abstract void handleLine(String str, String str2);
}
