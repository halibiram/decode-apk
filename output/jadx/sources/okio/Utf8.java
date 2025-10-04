package okio;

import com.google.common.base.Ascii;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\n\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0002\b\u0006\u001a\u0011\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0080\b\u001a\u0011\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\bH\u0080\b\u001a4\u0010\u0011\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00120\u0014H\u0080\bø\u0001\u0000\u001a4\u0010\u0015\u001a\u00020\u0012*\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00120\u0014H\u0080\bø\u0001\u0000\u001a4\u0010\u0019\u001a\u00020\u0012*\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00120\u0014H\u0080\bø\u0001\u0000\u001a4\u0010\u001b\u001a\u00020\u0004*\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00120\u0014H\u0080\bø\u0001\u0000\u001a4\u0010\u001d\u001a\u00020\u0004*\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00120\u0014H\u0080\bø\u0001\u0000\u001a4\u0010\u001f\u001a\u00020\u0004*\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00120\u0014H\u0080\bø\u0001\u0000\"\u000e\u0010\u0007\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006 "}, d2 = {"utf8Size", "", "", "beginIndex", "", "endIndex", "size", "REPLACEMENT_BYTE", "", "REPLACEMENT_CHARACTER", "", "REPLACEMENT_CODE_POINT", "isIsoControl", "", "codePoint", "isUtf8Continuation", "byte", "processUtf8Bytes", "", "yield", "Lkotlin/Function1;", "processUtf8CodePoints", "", "HIGH_SURROGATE_HEADER", "LOG_SURROGATE_HEADER", "processUtf16Chars", "MASK_2BYTES", "process2Utf8Bytes", "MASK_3BYTES", "process3Utf8Bytes", "MASK_4BYTES", "process4Utf8Bytes", "okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "Utf8")
@SourceDebugExtension({"SMAP\nUtf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utf8.kt\nokio/Utf8\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,559:1\n397#1,9:563\n127#1:572\n406#1,20:574\n440#1,4:595\n127#1:599\n446#1,10:601\n127#1:611\n456#1,5:612\n127#1:617\n461#1,24:618\n500#1,4:643\n127#1:647\n506#1,2:649\n127#1:651\n510#1,10:652\n127#1:662\n520#1,5:663\n127#1:668\n525#1,5:669\n127#1:674\n530#1,28:675\n397#1,9:704\n127#1:713\n406#1,20:715\n440#1,4:736\n127#1:740\n446#1,10:742\n127#1:752\n456#1,5:753\n127#1:758\n461#1,24:759\n500#1,4:784\n127#1:788\n506#1,2:790\n127#1:792\n510#1,10:793\n127#1:803\n520#1,5:804\n127#1:809\n525#1,5:810\n127#1:815\n530#1,28:816\n127#1:844\n127#1:846\n127#1:848\n127#1:850\n127#1:852\n127#1:854\n127#1:856\n127#1:858\n127#1:860\n1#2:560\n73#3:561\n67#3:562\n73#3:573\n67#3:594\n73#3:600\n67#3:642\n73#3:648\n67#3:703\n73#3:714\n67#3:735\n73#3:741\n67#3:783\n73#3:789\n73#3:845\n73#3:847\n73#3:849\n73#3:851\n73#3:853\n73#3:855\n73#3:857\n73#3:859\n73#3:861\n*S KotlinDebug\n*F\n+ 1 Utf8.kt\nokio/Utf8\n*L\n228#1:563,9\n228#1:572\n228#1:574,20\n232#1:595,4\n232#1:599\n232#1:601,10\n232#1:611\n232#1:612,5\n232#1:617\n232#1:618,24\n236#1:643,4\n236#1:647\n236#1:649,2\n236#1:651\n236#1:652,10\n236#1:662\n236#1:663,5\n236#1:668\n236#1:669,5\n236#1:674\n236#1:675,28\n277#1:704,9\n277#1:713\n277#1:715,20\n281#1:736,4\n281#1:740\n281#1:742,10\n281#1:752\n281#1:753,5\n281#1:758\n281#1:759,24\n285#1:784,4\n285#1:788\n285#1:790,2\n285#1:792\n285#1:793,10\n285#1:803\n285#1:804,5\n285#1:809\n285#1:810,5\n285#1:815\n285#1:816,28\n405#1:844\n443#1:846\n455#1:848\n460#1:850\n503#1:852\n507#1:854\n519#1:856\n524#1:858\n529#1:860\n127#1:561\n226#1:562\n228#1:573\n230#1:594\n232#1:600\n234#1:642\n236#1:648\n275#1:703\n277#1:714\n279#1:735\n281#1:741\n283#1:783\n285#1:789\n405#1:845\n443#1:847\n455#1:849\n460#1:851\n503#1:853\n507#1:855\n519#1:857\n524#1:859\n529#1:861\n*E\n"})
/* loaded from: classes3.dex */
public final class Utf8 {
    public static final int HIGH_SURROGATE_HEADER = 55232;
    public static final int LOG_SURROGATE_HEADER = 56320;
    public static final int MASK_2BYTES = 3968;
    public static final int MASK_3BYTES = -123008;
    public static final int MASK_4BYTES = 3678080;
    public static final byte REPLACEMENT_BYTE = 63;
    public static final char REPLACEMENT_CHARACTER = 65533;
    public static final int REPLACEMENT_CODE_POINT = 65533;

    public static final boolean isIsoControl(int i) {
        return (i >= 0 && i < 32) || (127 <= i && i < 160);
    }

    public static final boolean isUtf8Continuation(byte b) {
        return (b & 192) == 128;
    }

    public static final int process2Utf8Bytes(@NotNull byte[] bArr, int i, int i2, @NotNull Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i3 = i + 1;
        Integer valueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b = bArr[i];
        byte b2 = bArr[i3];
        if ((b2 & 192) == 128) {
            int i4 = (b2 ^ 3968) ^ (b << 6);
            if (i4 < 128) {
                yield.invoke(valueOf);
                return 2;
            }
            yield.invoke(Integer.valueOf(i4));
            return 2;
        }
        yield.invoke(valueOf);
        return 1;
    }

    public static final int process3Utf8Bytes(@NotNull byte[] bArr, int i, int i2, @NotNull Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i3 = i + 2;
        Integer valueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            yield.invoke(valueOf);
            int i4 = i + 1;
            if (i2 <= i4 || (bArr[i4] & 192) != 128) {
                return 1;
            }
            return 2;
        }
        byte b = bArr[i];
        byte b2 = bArr[i + 1];
        if ((b2 & 192) == 128) {
            byte b3 = bArr[i3];
            if ((b3 & 192) == 128) {
                int i5 = ((b3 ^ (-123008)) ^ (b2 << 6)) ^ (b << 12);
                if (i5 < 2048) {
                    yield.invoke(valueOf);
                    return 3;
                }
                if (55296 <= i5 && i5 < 57344) {
                    yield.invoke(valueOf);
                    return 3;
                }
                yield.invoke(Integer.valueOf(i5));
                return 3;
            }
            yield.invoke(valueOf);
            return 2;
        }
        yield.invoke(valueOf);
        return 1;
    }

    public static final int process4Utf8Bytes(@NotNull byte[] bArr, int i, int i2, @NotNull Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i3 = i + 3;
        Integer valueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            yield.invoke(valueOf);
            int i4 = i + 1;
            if (i2 <= i4 || (bArr[i4] & 192) != 128) {
                return 1;
            }
            int i5 = i + 2;
            if (i2 <= i5 || (bArr[i5] & 192) != 128) {
                return 2;
            }
            return 3;
        }
        byte b = bArr[i];
        byte b2 = bArr[i + 1];
        if ((b2 & 192) == 128) {
            byte b3 = bArr[i + 2];
            if ((b3 & 192) == 128) {
                byte b4 = bArr[i3];
                if ((b4 & 192) == 128) {
                    int i6 = (((b4 ^ 3678080) ^ (b3 << 6)) ^ (b2 << 12)) ^ (b << Ascii.DC2);
                    if (i6 > 1114111) {
                        yield.invoke(valueOf);
                        return 4;
                    }
                    if (55296 <= i6 && i6 < 57344) {
                        yield.invoke(valueOf);
                        return 4;
                    }
                    if (i6 < 65536) {
                        yield.invoke(valueOf);
                        return 4;
                    }
                    yield.invoke(Integer.valueOf(i6));
                    return 4;
                }
                yield.invoke(valueOf);
                return 3;
            }
            yield.invoke(valueOf);
            return 2;
        }
        yield.invoke(valueOf);
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ea, code lost:
    
        if ((r16[r8] & 192) == 128) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0086, code lost:
    
        if ((r16[r8] & 192) == 128) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void processUtf16Chars(@NotNull byte[] bArr, int i, int i2, @NotNull Function1<? super Character, Unit> yield) {
        char c;
        int i3;
        char c2;
        int i4;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i5 = i;
        while (i5 < i2) {
            byte b = bArr[i5];
            if (b >= 0) {
                yield.invoke(Character.valueOf((char) b));
                i5++;
                while (i5 < i2) {
                    byte b2 = bArr[i5];
                    if (b2 >= 0) {
                        i5++;
                        yield.invoke(Character.valueOf((char) b2));
                    }
                }
            } else {
                if ((b >> 5) == -2) {
                    int i6 = i5 + 1;
                    if (i2 > i6) {
                        byte b3 = bArr[i6];
                        if ((b3 & 192) == 128) {
                            int i7 = (b << 6) ^ (b3 ^ 3968);
                            if (i7 < 128) {
                                c = (char) REPLACEMENT_CODE_POINT;
                            } else {
                                c = (char) i7;
                            }
                            yield.invoke(Character.valueOf(c));
                            i3 = 2;
                        }
                    }
                    yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                    i3 = 1;
                } else if ((b >> 4) == -2) {
                    int i8 = i5 + 2;
                    if (i2 <= i8) {
                        yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                        int i9 = i5 + 1;
                        if (i2 > i9) {
                        }
                        i3 = 1;
                    } else {
                        byte b4 = bArr[i5 + 1];
                        if ((b4 & 192) == 128) {
                            byte b5 = bArr[i8];
                            if ((b5 & 192) == 128) {
                                int i10 = (b << 12) ^ ((b5 ^ (-123008)) ^ (b4 << 6));
                                if (i10 < 2048 || (55296 <= i10 && i10 < 57344)) {
                                    c2 = (char) REPLACEMENT_CODE_POINT;
                                } else {
                                    c2 = (char) i10;
                                }
                                yield.invoke(Character.valueOf(c2));
                                i3 = 3;
                            } else {
                                yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                                i3 = 2;
                            }
                        } else {
                            yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                            i3 = 1;
                        }
                    }
                } else if ((b >> 3) == -2) {
                    int i11 = i5 + 3;
                    if (i2 <= i11) {
                        yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                        int i12 = i5 + 1;
                        if (i2 > i12 && (bArr[i12] & 192) == 128) {
                            int i13 = i5 + 2;
                            if (i2 > i13) {
                            }
                            i4 = 2;
                        }
                        i4 = 1;
                    } else {
                        byte b6 = bArr[i5 + 1];
                        if ((b6 & 192) == 128) {
                            byte b7 = bArr[i5 + 2];
                            if ((b7 & 192) == 128) {
                                byte b8 = bArr[i11];
                                if ((b8 & 192) == 128) {
                                    int i14 = (((b8 ^ 3678080) ^ (b7 << 6)) ^ (b6 << 12)) ^ (b << Ascii.DC2);
                                    if (i14 > 1114111 || ((55296 <= i14 && i14 < 57344) || i14 < 65536 || i14 == 65533)) {
                                        yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                    } else {
                                        yield.invoke(Character.valueOf((char) ((i14 >>> 10) + HIGH_SURROGATE_HEADER)));
                                        yield.invoke(Character.valueOf((char) ((i14 & 1023) + LOG_SURROGATE_HEADER)));
                                    }
                                    i4 = 4;
                                } else {
                                    yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                    i4 = 3;
                                }
                            } else {
                                yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                i4 = 2;
                            }
                        } else {
                            yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                            i4 = 1;
                        }
                    }
                    i5 += i4;
                } else {
                    yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                    i5++;
                }
                i5 += i3;
            }
        }
    }

    public static final void processUtf8Bytes(@NotNull String str, int i, int i2, @NotNull Function1<? super Byte, Unit> yield) {
        int i3;
        char charAt;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        while (i < i2) {
            char charAt2 = str.charAt(i);
            if (Intrinsics.compare((int) charAt2, 128) < 0) {
                yield.invoke(Byte.valueOf((byte) charAt2));
                i++;
                while (i < i2 && Intrinsics.compare((int) str.charAt(i), 128) < 0) {
                    yield.invoke(Byte.valueOf((byte) str.charAt(i)));
                    i++;
                }
            } else {
                if (Intrinsics.compare((int) charAt2, 2048) < 0) {
                    yield.invoke(Byte.valueOf((byte) ((charAt2 >> 6) | 192)));
                    yield.invoke(Byte.valueOf((byte) ((charAt2 & '?') | 128)));
                } else if (55296 <= charAt2 && charAt2 < 57344) {
                    if (Intrinsics.compare((int) charAt2, 56319) <= 0 && i2 > (i3 = i + 1) && 56320 <= (charAt = str.charAt(i3)) && charAt < 57344) {
                        int charAt3 = (str.charAt(i3) + (charAt2 << '\n')) - 56613888;
                        yield.invoke(Byte.valueOf((byte) ((charAt3 >> 18) | 240)));
                        yield.invoke(Byte.valueOf((byte) (((charAt3 >> 12) & 63) | 128)));
                        yield.invoke(Byte.valueOf((byte) (((charAt3 >> 6) & 63) | 128)));
                        yield.invoke(Byte.valueOf((byte) ((charAt3 & 63) | 128)));
                        i += 2;
                    } else {
                        yield.invoke(Byte.valueOf(REPLACEMENT_BYTE));
                    }
                } else {
                    yield.invoke(Byte.valueOf((byte) ((charAt2 >> '\f') | 224)));
                    yield.invoke(Byte.valueOf((byte) (((charAt2 >> 6) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) ((charAt2 & '?') | 128)));
                }
                i++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00e8, code lost:
    
        if ((r16[r8] & 192) == 128) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0084, code lost:
    
        if ((r16[r8] & 192) == 128) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void processUtf8CodePoints(@NotNull byte[] bArr, int i, int i2, @NotNull Function1<? super Integer, Unit> yield) {
        Integer valueOf;
        int i3;
        Integer valueOf2;
        Integer valueOf3;
        int i4;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i5 = i;
        while (i5 < i2) {
            byte b = bArr[i5];
            if (b >= 0) {
                yield.invoke(Integer.valueOf(b));
                i5++;
                while (i5 < i2) {
                    byte b2 = bArr[i5];
                    if (b2 >= 0) {
                        i5++;
                        yield.invoke(Integer.valueOf(b2));
                    }
                }
            } else {
                if ((b >> 5) == -2) {
                    int i6 = i5 + 1;
                    if (i2 > i6) {
                        byte b3 = bArr[i6];
                        if ((b3 & 192) == 128) {
                            int i7 = (b << 6) ^ (b3 ^ 3968);
                            if (i7 < 128) {
                                valueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
                            } else {
                                valueOf = Integer.valueOf(i7);
                            }
                            yield.invoke(valueOf);
                            i3 = 2;
                        }
                    }
                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    i3 = 1;
                } else if ((b >> 4) == -2) {
                    int i8 = i5 + 2;
                    if (i2 <= i8) {
                        yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        int i9 = i5 + 1;
                        if (i2 > i9) {
                        }
                        i3 = 1;
                    } else {
                        byte b4 = bArr[i5 + 1];
                        if ((b4 & 192) == 128) {
                            byte b5 = bArr[i8];
                            if ((b5 & 192) == 128) {
                                int i10 = (b << 12) ^ ((b5 ^ (-123008)) ^ (b4 << 6));
                                if (i10 < 2048 || (55296 <= i10 && i10 < 57344)) {
                                    valueOf2 = Integer.valueOf(REPLACEMENT_CODE_POINT);
                                } else {
                                    valueOf2 = Integer.valueOf(i10);
                                }
                                yield.invoke(valueOf2);
                                i3 = 3;
                            } else {
                                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                i3 = 2;
                            }
                        } else {
                            yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            i3 = 1;
                        }
                    }
                } else if ((b >> 3) == -2) {
                    int i11 = i5 + 3;
                    if (i2 <= i11) {
                        yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        int i12 = i5 + 1;
                        if (i2 > i12 && (bArr[i12] & 192) == 128) {
                            int i13 = i5 + 2;
                            if (i2 > i13) {
                            }
                            i4 = 2;
                        }
                        i4 = 1;
                    } else {
                        byte b6 = bArr[i5 + 1];
                        if ((b6 & 192) == 128) {
                            byte b7 = bArr[i5 + 2];
                            if ((b7 & 192) == 128) {
                                byte b8 = bArr[i11];
                                if ((b8 & 192) == 128) {
                                    int i14 = (((b8 ^ 3678080) ^ (b7 << 6)) ^ (b6 << 12)) ^ (b << Ascii.DC2);
                                    if (i14 > 1114111 || ((55296 <= i14 && i14 < 57344) || i14 < 65536)) {
                                        valueOf3 = Integer.valueOf(REPLACEMENT_CODE_POINT);
                                    } else {
                                        valueOf3 = Integer.valueOf(i14);
                                    }
                                    yield.invoke(valueOf3);
                                    i4 = 4;
                                } else {
                                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                    i4 = 3;
                                }
                            } else {
                                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                i4 = 2;
                            }
                        } else {
                            yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            i4 = 1;
                        }
                    }
                    i5 += i4;
                } else {
                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    i5++;
                }
                i5 += i3;
            }
        }
    }

    @JvmOverloads
    @JvmName(name = "size")
    public static final long size(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return size$default(str, 0, 0, 3, null);
    }

    public static /* synthetic */ long size$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return size(str, i, i2);
    }

    @JvmOverloads
    @JvmName(name = "size")
    public static final long size(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return size$default(str, i, 0, 2, null);
    }

    @JvmOverloads
    @JvmName(name = "size")
    public static final long size(@NotNull String str, int i, int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "beginIndex < 0: ").toString());
        }
        if (i2 >= i) {
            if (i2 > str.length()) {
                StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i2, "endIndex > string.length: ", " > ");
                m2939xab142723.append(str.length());
                throw new IllegalArgumentException(m2939xab142723.toString().toString());
            }
            long j = 0;
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt < 128) {
                    j++;
                } else {
                    if (charAt < 2048) {
                        i3 = 2;
                    } else if (charAt < 55296 || charAt > 57343) {
                        i3 = 3;
                    } else {
                        int i4 = i + 1;
                        char charAt2 = i4 < i2 ? str.charAt(i4) : (char) 0;
                        if (charAt > 56319 || charAt2 < 56320 || charAt2 > 57343) {
                            j++;
                            i = i4;
                        } else {
                            j += 4;
                            i += 2;
                        }
                    }
                    j += i3;
                }
                i++;
            }
            return j;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3329x34271fae(i2, i, "endIndex < beginIndex: ", " < ").toString());
    }
}
