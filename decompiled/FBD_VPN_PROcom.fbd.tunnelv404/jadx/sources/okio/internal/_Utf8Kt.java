package okio.internal;

import com.google.common.base.Ascii;
import defpackage.AbstractC1197x89633db9;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u001a\n\u0010\u0006\u001a\u00020\u0002*\u00020\u0001¨\u0006\u0007"}, d2 = {"commonToUtf8String", "", "", "beginIndex", "", "endIndex", "commonAsUtf8ToByteArray", "okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n-Utf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n+ 2 Utf8.kt\nokio/Utf8\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,60:1\n260#2,16:61\n277#2:78\n397#2,9:79\n127#2:88\n406#2,20:90\n279#2,3:110\n440#2,4:113\n127#2:117\n446#2,10:118\n127#2:128\n456#2,5:129\n127#2:134\n461#2,24:135\n283#2,3:159\n500#2,3:162\n286#2,12:165\n503#2:177\n127#2:178\n506#2,2:179\n127#2:181\n510#2,10:182\n127#2:192\n520#2,5:193\n127#2:198\n525#2,5:199\n127#2:204\n530#2,28:205\n302#2,6:233\n138#2,67:239\n67#3:77\n73#3:89\n*S KotlinDebug\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n*L\n34#1:61,16\n34#1:78\n34#1:79,9\n34#1:88\n34#1:90,20\n34#1:110,3\n34#1:113,4\n34#1:117\n34#1:118,10\n34#1:128\n34#1:129,5\n34#1:134\n34#1:135,24\n34#1:159,3\n34#1:162,3\n34#1:165,12\n34#1:177\n34#1:178\n34#1:179,2\n34#1:181\n34#1:182,10\n34#1:192\n34#1:193,5\n34#1:198\n34#1:199,5\n34#1:204\n34#1:205,28\n34#1:233,6\n50#1:239,67\n34#1:77\n34#1:89\n*E\n"})
/* loaded from: classes3.dex */
public final class _Utf8Kt {
    @NotNull
    public static final byte[] commonAsUtf8ToByteArray(@NotNull String str) {
        int i;
        char charAt;
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bArr = new byte[str.length() * 4];
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt2 = str.charAt(i2);
            if (Intrinsics.compare((int) charAt2, 128) >= 0) {
                int length2 = str.length();
                int i3 = i2;
                while (i2 < length2) {
                    char charAt3 = str.charAt(i2);
                    if (Intrinsics.compare((int) charAt3, 128) < 0) {
                        int i4 = i3 + 1;
                        bArr[i3] = (byte) charAt3;
                        i2++;
                        while (true) {
                            i3 = i4;
                            if (i2 < length2 && Intrinsics.compare((int) str.charAt(i2), 128) < 0) {
                                i4 = i3 + 1;
                                bArr[i3] = (byte) str.charAt(i2);
                                i2++;
                            }
                        }
                    } else {
                        if (Intrinsics.compare((int) charAt3, 2048) < 0) {
                            bArr[i3] = (byte) ((charAt3 >> 6) | 192);
                            i3 += 2;
                            bArr[i3 + 1] = (byte) ((charAt3 & '?') | 128);
                        } else if (55296 <= charAt3 && charAt3 < 57344) {
                            if (Intrinsics.compare((int) charAt3, 56319) <= 0 && length2 > (i = i2 + 1) && 56320 <= (charAt = str.charAt(i)) && charAt < 57344) {
                                int charAt4 = (str.charAt(i) + (charAt3 << '\n')) - 56613888;
                                bArr[i3] = (byte) ((charAt4 >> 18) | 240);
                                bArr[i3 + 1] = (byte) (((charAt4 >> 12) & 63) | 128);
                                bArr[i3 + 2] = (byte) (((charAt4 >> 6) & 63) | 128);
                                i3 += 4;
                                bArr[i3 + 3] = (byte) ((charAt4 & 63) | 128);
                                i2 += 2;
                            } else {
                                bArr[i3] = Utf8.REPLACEMENT_BYTE;
                                i2++;
                                i3++;
                            }
                        } else {
                            bArr[i3] = (byte) ((charAt3 >> '\f') | 224);
                            bArr[i3 + 1] = (byte) (((charAt3 >> 6) & 63) | 128);
                            i3 += 3;
                            bArr[i3 + 2] = (byte) ((charAt3 & '?') | 128);
                        }
                        i2++;
                    }
                }
                byte[] copyOf = Arrays.copyOf(bArr, i3);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                return copyOf;
            }
            bArr[i2] = (byte) charAt2;
            i2++;
        }
        byte[] copyOf2 = Arrays.copyOf(bArr, str.length());
        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
        return copyOf2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x008a, code lost:
    
        if ((r16[r3] & 192) == 128) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00f3, code lost:
    
        if ((r16[r8] & 192) == 128) goto L96;
     */
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final String commonToUtf8String(@NotNull byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = i;
        int i11 = 3;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        if (i10 >= 0 && i2 <= bArr.length && i10 <= i2) {
            char[] cArr = new char[i2 - i10];
            int i12 = 0;
            while (i10 < i2) {
                byte b = bArr[i10];
                if (b >= 0) {
                    i8 = i12 + 1;
                    cArr[i12] = (char) b;
                    i10++;
                    while (i10 < i2) {
                        byte b2 = bArr[i10];
                        if (b2 < 0) {
                            break;
                        }
                        i10++;
                        cArr[i8] = (char) b2;
                        i8++;
                    }
                } else if ((b >> 5) == -2) {
                    int i13 = i10 + 1;
                    if (i2 <= i13) {
                        i8 = i12 + 1;
                        cArr[i12] = (char) Utf8.REPLACEMENT_CODE_POINT;
                    } else {
                        byte b3 = bArr[i13];
                        if ((b3 & 192) == 128) {
                            int i14 = (b << 6) ^ (b3 ^ 3968);
                            if (i14 < 128) {
                                i8 = i12 + 1;
                                cArr[i12] = (char) Utf8.REPLACEMENT_CODE_POINT;
                            } else {
                                i8 = i12 + 1;
                                cArr[i12] = (char) i14;
                            }
                            i9 = 2;
                            i10 += i9;
                        } else {
                            i8 = i12 + 1;
                            cArr[i12] = (char) Utf8.REPLACEMENT_CODE_POINT;
                        }
                    }
                    i9 = 1;
                    i10 += i9;
                } else {
                    if ((b >> 4) == -2) {
                        int i15 = i10 + 2;
                        if (i2 <= i15) {
                            i5 = i12 + 1;
                            cArr[i12] = (char) Utf8.REPLACEMENT_CODE_POINT;
                            int i16 = i10 + 1;
                            if (i2 > i16) {
                            }
                            i7 = 1;
                        } else {
                            byte b4 = bArr[i10 + 1];
                            if ((b4 & 192) == 128) {
                                byte b5 = bArr[i15];
                                if ((b5 & 192) == 128) {
                                    int i17 = ((b5 ^ (-123008)) ^ (b4 << 6)) ^ (b << 12);
                                    if (i17 < 2048) {
                                        i6 = i12 + 1;
                                        cArr[i12] = (char) Utf8.REPLACEMENT_CODE_POINT;
                                    } else if (55296 <= i17 && i17 < 57344) {
                                        i6 = i12 + 1;
                                        cArr[i12] = (char) Utf8.REPLACEMENT_CODE_POINT;
                                    } else {
                                        char c = (char) i17;
                                        i6 = i12 + 1;
                                        cArr[i12] = c;
                                    }
                                    i5 = i6;
                                    i7 = 3;
                                } else {
                                    i5 = i12 + 1;
                                    cArr[i12] = (char) Utf8.REPLACEMENT_CODE_POINT;
                                    i7 = 2;
                                }
                            } else {
                                i5 = i12 + 1;
                                cArr[i12] = (char) Utf8.REPLACEMENT_CODE_POINT;
                                i7 = 1;
                            }
                        }
                        i10 += i7;
                        i12 = i5;
                    } else {
                        if ((b >> 3) == -2) {
                            int i18 = i10 + 3;
                            if (i2 <= i18) {
                                i3 = i12 + 1;
                                cArr[i12] = Utf8.REPLACEMENT_CHARACTER;
                                int i19 = i10 + 1;
                                if (i2 > i19 && (bArr[i19] & 192) == 128) {
                                    int i20 = i10 + 2;
                                    if (i2 > i20) {
                                    }
                                    i11 = 2;
                                    i10 += i11;
                                }
                                i11 = 1;
                                i10 += i11;
                            } else {
                                byte b6 = bArr[i10 + 1];
                                if ((b6 & 192) == 128) {
                                    byte b7 = bArr[i10 + 2];
                                    if ((b7 & 192) == 128) {
                                        byte b8 = bArr[i18];
                                        if ((b8 & 192) == 128) {
                                            int i21 = (((b8 ^ 3678080) ^ (b7 << 6)) ^ (b6 << 12)) ^ (b << Ascii.DC2);
                                            if (i21 > 1114111) {
                                                i3 = i12 + 1;
                                                cArr[i12] = Utf8.REPLACEMENT_CHARACTER;
                                            } else if (55296 <= i21 && i21 < 57344) {
                                                i3 = i12 + 1;
                                                cArr[i12] = Utf8.REPLACEMENT_CHARACTER;
                                            } else if (i21 < 65536) {
                                                i3 = i12 + 1;
                                                cArr[i12] = Utf8.REPLACEMENT_CHARACTER;
                                            } else {
                                                if (i21 != 65533) {
                                                    cArr[i12] = (char) ((i21 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                                                    i4 = i12 + 2;
                                                    cArr[i12 + 1] = (char) ((i21 & 1023) + Utf8.LOG_SURROGATE_HEADER);
                                                } else {
                                                    cArr[i12] = Utf8.REPLACEMENT_CHARACTER;
                                                    i4 = i12 + 1;
                                                }
                                                i3 = i4;
                                            }
                                            i11 = 4;
                                        } else {
                                            i3 = i12 + 1;
                                            cArr[i12] = Utf8.REPLACEMENT_CHARACTER;
                                            i11 = 3;
                                        }
                                        i10 += i11;
                                    } else {
                                        i3 = i12 + 1;
                                        cArr[i12] = Utf8.REPLACEMENT_CHARACTER;
                                        i11 = 2;
                                        i10 += i11;
                                    }
                                } else {
                                    i3 = i12 + 1;
                                    cArr[i12] = Utf8.REPLACEMENT_CHARACTER;
                                    i11 = 1;
                                    i10 += i11;
                                }
                            }
                        } else {
                            i3 = i12 + 1;
                            cArr[i12] = Utf8.REPLACEMENT_CHARACTER;
                            i10++;
                        }
                        i12 = i3;
                    }
                    i11 = 3;
                }
                i12 = i8;
                i11 = 3;
            }
            return AbstractC1197x89633db9.concatToString(cArr, 0, i12);
        }
        throw new ArrayIndexOutOfBoundsException("size=" + bArr.length + " beginIndex=" + i10 + " endIndex=" + i2);
    }

    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = bArr.length;
        }
        return commonToUtf8String(bArr, i, i2);
    }
}
