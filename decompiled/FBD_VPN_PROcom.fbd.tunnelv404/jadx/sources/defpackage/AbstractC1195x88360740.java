package defpackage;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.AbstractC0298xfbe0c504;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: 땦돝땫뒵딐든딸딝땔딎돳땧땄둬됨딎돠땪뒈됩땳드뎸되딹돼됨뎰땋딌득뎬둣땠돝땤든땠뎨뒐됨땠둬돛드뎠돳돰뒻뒝뒈땮땍땋뒷땁땟돝딟땹땅땻땁든됴뒾뒝뒈딞딤땅돠돼뒉듼뒀됐돠땋뒀딤땻돼둬땥땤땰땐땯땝땫땯딨땳따듬드뒬뒬뒬되듸듌뎻둣뒨돤딻땪뒹땫땔땫땵된돴뎡딁돨둔뒬듟땻돝땀땭뒨땁딹든, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1195x88360740 extends AbstractC1194xeb5ee5a5 {
    @SinceKotlin(version = "1.2")
    @Nullable
    public static final BigDecimal toBigDecimalOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            if (m3949xfbe0c504(str)) {
                return new BigDecimal(str);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @SinceKotlin(version = "1.2")
    @Nullable
    public static final BigInteger toBigIntegerOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toBigIntegerOrNull(str, 10);
    }

    @SinceKotlin(version = "1.1")
    @Nullable
    public static final Double toDoubleOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            if (!m3949xfbe0c504(str)) {
                return null;
            }
            return Double.valueOf(Double.parseDouble(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @SinceKotlin(version = "1.1")
    @Nullable
    public static final Float toFloatOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            if (!m3949xfbe0c504(str)) {
                return null;
            }
            return Float.valueOf(Float.parseFloat(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ae A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0125  */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean m3949xfbe0c504(String str) {
        boolean z;
        int charAt;
        int i;
        boolean z2;
        int i2;
        boolean z3;
        String str2;
        boolean z4;
        int i3;
        boolean z5;
        int length = str.length() - 1;
        int i4 = 0;
        while (i4 <= length && str.charAt(i4) <= ' ') {
            i4++;
        }
        if (i4 > length) {
            return false;
        }
        while (length > i4 && str.charAt(length) <= ' ') {
            length--;
        }
        if (str.charAt(i4) == '+' || str.charAt(i4) == '-') {
            i4++;
        }
        if (i4 > length) {
            return false;
        }
        if (str.charAt(i4) == '0') {
            int i5 = i4 + 1;
            if (i5 > length) {
                return true;
            }
            if ((str.charAt(i5) | ' ') == 120) {
                int i6 = i4 + 2;
                int i7 = i6;
                while (i7 <= length) {
                    if (((str.charAt(i7) - '0') & 65535) >= 10 && (((r15 | ' ') - 97) & 65535) >= 6) {
                        break;
                    }
                    i7++;
                }
                if (i6 != i7) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (i7 <= length) {
                    if (str.charAt(i7) == '.') {
                        int i8 = i7 + 1;
                        i3 = i8;
                        while (i3 <= length) {
                            if (((str.charAt(i3) - '0') & 65535) >= 10 && (((r15 | ' ') - 97) & 65535) >= 6) {
                                break;
                            }
                            i3++;
                        }
                        if (i8 != i3) {
                            z5 = true;
                            if (!z4 || z5) {
                                i4 = i3;
                                if (i4 != -1 || i4 > length) {
                                    return false;
                                }
                                z = true;
                                if (!z) {
                                    int i9 = i4;
                                    while (i9 <= length && ((str.charAt(i9) - '0') & 65535) < 10) {
                                        i9++;
                                    }
                                    if (i4 != i9) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (i9 > length) {
                                        i4 = i9;
                                    } else {
                                        if (str.charAt(i9) == '.') {
                                            int i10 = i9 + 1;
                                            i2 = i10;
                                            while (i2 <= length && ((str.charAt(i2) - '0') & 65535) < 10) {
                                                i2++;
                                            }
                                            if (i10 != i2) {
                                                z3 = true;
                                                if (z2 && !z3) {
                                                    if (length == i2 + 2) {
                                                        str2 = "NaN";
                                                    } else if (length == i2 + 7) {
                                                        str2 = "Infinity";
                                                    } else {
                                                        str2 = null;
                                                    }
                                                    if (str2 == null || StringsKt__StringsKt.indexOf((CharSequence) str, str2, i2, false) != i2) {
                                                        i4 = -1;
                                                    } else {
                                                        i4 = length + 1;
                                                    }
                                                } else {
                                                    i4 = i2;
                                                }
                                            }
                                        } else {
                                            i2 = i9;
                                        }
                                        z3 = false;
                                        if (z2) {
                                        }
                                        i4 = i2;
                                    }
                                    if (i4 == -1) {
                                        return false;
                                    }
                                    if (i4 > length) {
                                        return true;
                                    }
                                }
                                int i11 = i4 + 1;
                                charAt = str.charAt(i4) | ' ';
                                if (!z) {
                                    i = 112;
                                } else {
                                    i = 101;
                                }
                                if (charAt == i) {
                                    if (!z && ((charAt == 102 || charAt == 100) && i11 > length)) {
                                        return true;
                                    }
                                    return false;
                                }
                                if (i11 > length) {
                                    return false;
                                }
                                if ((str.charAt(i11) == '+' || str.charAt(i11) == '-') && (i11 = i4 + 2) > length) {
                                    return false;
                                }
                                while (i11 <= length && ((str.charAt(i11) - '0') & 65535) < 10) {
                                    i11++;
                                }
                                if (i11 > length) {
                                    return true;
                                }
                                if (i11 != length) {
                                    return false;
                                }
                                int charAt2 = str.charAt(i11) | ' ';
                                if (charAt2 == 102 || charAt2 == 100) {
                                    return true;
                                }
                                return false;
                            }
                        }
                    } else {
                        i3 = i7;
                    }
                    z5 = false;
                    if (!z4) {
                    }
                    i4 = i3;
                    if (i4 != -1) {
                    }
                    return false;
                }
                i4 = -1;
                if (i4 != -1) {
                }
                return false;
            }
        }
        z = false;
        if (!z) {
        }
        int i112 = i4 + 1;
        charAt = str.charAt(i4) | ' ';
        if (!z) {
        }
        if (charAt == i) {
        }
    }

    @SinceKotlin(version = "1.2")
    @Nullable
    public static final BigInteger toBigIntegerOrNull(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        AbstractC0298xfbe0c504.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        if (length != 1) {
            for (int i2 = str.charAt(0) == '-' ? 1 : 0; i2 < length; i2++) {
                if (AbstractC0298xfbe0c504.digitOf(str.charAt(i2), i) < 0) {
                    return null;
                }
            }
        } else if (AbstractC0298xfbe0c504.digitOf(str.charAt(0), i) < 0) {
            return null;
        }
        return new BigInteger(str, AbstractC0298xfbe0c504.checkRadix(i));
    }

    @SinceKotlin(version = "1.2")
    @Nullable
    public static final BigDecimal toBigDecimalOrNull(@NotNull String str, @NotNull MathContext mathContext) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(mathContext, "mathContext");
        try {
            if (m3949xfbe0c504(str)) {
                return new BigDecimal(str, mathContext);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
