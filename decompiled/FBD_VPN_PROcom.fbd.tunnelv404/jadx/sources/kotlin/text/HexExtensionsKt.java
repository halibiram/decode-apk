package kotlin.text;

import com.google.common.base.Ascii;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0576x6ced6b;
import defpackage.AbstractC1197x89633db9;
import java.util.Arrays;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.text.HexFormat;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000:\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\b\u001a\u001d\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a1\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\t\u001aG\u0010\u0011\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u001d\u0010\u0013\u001a\u00020\u0000*\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0013\u0010\u0014\u001aG\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0016\u0010\u0012\u001a\u001d\u0010\u0004\u001a\u00020\u0003*\u00020\u00172\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0018\u001a\u001d\u0010\u0019\u001a\u00020\u0017*\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001d\u0010\u0004\u001a\u00020\u0003*\u00020\u001b2\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u001c\u001a\u001d\u0010\u001d\u001a\u00020\u001b*\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u001d\u0010\u0004\u001a\u00020\u0003*\u00020\u00062\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u001f\u001a\u001d\u0010 \u001a\u00020\u0006*\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b \u0010!\u001a1\u0010 \u001a\u00020\u0006*\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0001¢\u0006\u0004\b \u0010\"\u001a\u001d\u0010\u0004\u001a\u00020\u0003*\u00020#2\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010$\u001a\u001d\u0010%\u001a\u00020#*\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b%\u0010&\u001a1\u0010%\u001a\u00020#*\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0001¢\u0006\u0004\b%\u0010'\" \u0010/\u001a\u00020(8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b)\u0010*\u0012\u0004\b-\u0010.\u001a\u0004\b+\u0010,¨\u00060"}, d2 = {"", "Lkotlin/text/HexFormat;", "format", "", "toHexString", "([BLkotlin/text/HexFormat;)Ljava/lang/String;", "", "startIndex", "endIndex", "([BIILkotlin/text/HexFormat;)Ljava/lang/String;", "numberOfBytes", "bytesPerLine", "bytesPerGroup", "groupSeparatorLength", "byteSeparatorLength", "bytePrefixLength", "byteSuffixLength", "formattedStringLength", "(IIIIIII)I", "hexToByteArray", "(Ljava/lang/String;Lkotlin/text/HexFormat;)[B", "stringLength", "parsedByteArrayMaxSize", "", "(BLkotlin/text/HexFormat;)Ljava/lang/String;", "hexToByte", "(Ljava/lang/String;Lkotlin/text/HexFormat;)B", "", "(SLkotlin/text/HexFormat;)Ljava/lang/String;", "hexToShort", "(Ljava/lang/String;Lkotlin/text/HexFormat;)S", "(ILkotlin/text/HexFormat;)Ljava/lang/String;", "hexToInt", "(Ljava/lang/String;Lkotlin/text/HexFormat;)I", "(Ljava/lang/String;IILkotlin/text/HexFormat;)I", "", "(JLkotlin/text/HexFormat;)Ljava/lang/String;", "hexToLong", "(Ljava/lang/String;Lkotlin/text/HexFormat;)J", "(Ljava/lang/String;IILkotlin/text/HexFormat;)J", "", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "[I", "getBYTE_TO_LOWER_CASE_HEX_DIGITS", "()[I", "getBYTE_TO_LOWER_CASE_HEX_DIGITS$annotations", "()V", "BYTE_TO_LOWER_CASE_HEX_DIGITS", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHexExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,1249:1\n1198#1,7:1251\n1198#1,7:1258\n1198#1,7:1265\n1198#1,7:1272\n1198#1,7:1279\n1198#1,7:1286\n1198#1,7:1293\n1198#1,7:1300\n1209#1,5:1307\n1209#1,5:1312\n1198#1,7:1317\n1198#1,7:1324\n1209#1,5:1331\n1218#1,5:1336\n1#2:1250\n1188#3,3:1341\n1188#3,3:1344\n1188#3,3:1347\n1188#3,3:1350\n*S KotlinDebug\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n*L\n457#1:1251,7\n490#1:1258,7\n494#1:1265,7\n497#1:1272,7\n538#1:1279,7\n541#1:1286,7\n546#1:1293,7\n551#1:1300,7\n558#1:1307,5\n559#1:1312,5\n1153#1:1317,7\n1155#1:1324,7\n1183#1:1331,5\n1191#1:1336,5\n43#1:1341,3\n44#1:1344,3\n55#1:1347,3\n56#1:1350,3\n*E\n"})
/* loaded from: classes3.dex */
public final class HexExtensionsKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final int[] f1633xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final int[] f1634x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final int[] f1635x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final long[] f1636x75d576dc;

    static {
        int[] iArr = new int[256];
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            iArr[i2] = "0123456789abcdef".charAt(i2 & 15) | ("0123456789abcdef".charAt(i2 >> 4) << '\b');
        }
        f1633xfbe0c504 = iArr;
        int[] iArr2 = new int[256];
        for (int i3 = 0; i3 < 256; i3++) {
            iArr2[i3] = "0123456789ABCDEF".charAt(i3 & 15) | ("0123456789ABCDEF".charAt(i3 >> 4) << '\b');
        }
        f1634x3271d0aa = iArr2;
        int[] iArr3 = new int[256];
        for (int i4 = 0; i4 < 256; i4++) {
            iArr3[i4] = -1;
        }
        int i5 = 0;
        int i6 = 0;
        while (i5 < "0123456789abcdef".length()) {
            iArr3["0123456789abcdef".charAt(i5)] = i6;
            i5++;
            i6++;
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < "0123456789ABCDEF".length()) {
            iArr3["0123456789ABCDEF".charAt(i7)] = i8;
            i7++;
            i8++;
        }
        f1635x1378447b = iArr3;
        long[] jArr = new long[256];
        for (int i9 = 0; i9 < 256; i9++) {
            jArr[i9] = -1;
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < "0123456789abcdef".length()) {
            jArr["0123456789abcdef".charAt(i10)] = i11;
            i10++;
            i11++;
        }
        int i12 = 0;
        while (i < "0123456789ABCDEF".length()) {
            jArr["0123456789ABCDEF".charAt(i)] = i12;
            i++;
            i12++;
        }
        f1636x75d576dc = jArr;
    }

    public static final int formattedStringLength(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        if (i > 0) {
            int i8 = i - 1;
            int i9 = i8 / i2;
            int i10 = (i2 - 1) / i3;
            int i11 = i % i2;
            if (i11 != 0) {
                i2 = i11;
            }
            int i12 = (i10 * i9) + ((i2 - 1) / i3);
            return m2060x3271d0aa(((i6 + 2 + i7) * i) + (((i8 - i9) - i12) * i5) + (i12 * i4) + i9);
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @NotNull
    public static final int[] getBYTE_TO_LOWER_CASE_HEX_DIGITS() {
        return f1633xfbe0c504;
    }

    @ExperimentalStdlibApi
    public static /* synthetic */ void getBYTE_TO_LOWER_CASE_HEX_DIGITS$annotations() {
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    public static final byte hexToByte(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return (byte) m2064x9e171bf9(str, 0, str.length(), format, 2);
    }

    public static /* synthetic */ byte hexToByte$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByte(str, hexFormat);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final byte[] hexToByteArray(@NotNull String str, @NotNull HexFormat format) {
        String str2;
        String str3;
        int i;
        int i2;
        String str4;
        int i3;
        int i4;
        String str5;
        int i5;
        String str6;
        byte[] bArr;
        int length;
        String str7;
        byte[] bArr2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        int length2 = str.length();
        int i6 = 0;
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(0, length2, str.length());
        if (length2 == 0) {
            return new byte[0];
        }
        HexFormat.BytesHexFormat bytes = format.getBytes();
        if (bytes.getNoLineAndGroupSeparator()) {
            if (bytes.getShortByteSeparatorNoPrefixAndSuffix()) {
                int length3 = bytes.getByteSeparator().length();
                if (length3 > 1) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                if (length3 == 0) {
                    if ((length2 & 1) == 0) {
                        int i7 = length2 >> 1;
                        bArr2 = new byte[i7];
                        int i8 = 0;
                        for (int i9 = 0; i9 < i7; i9++) {
                            bArr2[i9] = m2065x34271fae(i8, str);
                            i8 += 2;
                        }
                        str2 = "byte suffix";
                        str3 = "byte prefix";
                    }
                    bArr2 = null;
                    str2 = "byte suffix";
                    str3 = "byte prefix";
                } else {
                    if (length2 % 3 == 2) {
                        int i10 = (length2 / 3) + 1;
                        bArr2 = new byte[i10];
                        char charAt = bytes.getByteSeparator().charAt(0);
                        bArr2[0] = m2065x34271fae(0, str);
                        int i11 = 1;
                        int i12 = 2;
                        while (i11 < i10) {
                            if (str.charAt(i12) != charAt) {
                                String byteSeparator = bytes.getByteSeparator();
                                boolean ignoreCase = bytes.getIgnoreCase();
                                if (byteSeparator.length() != 0) {
                                    int length4 = byteSeparator.length();
                                    while (i6 < length4) {
                                        int i13 = i10;
                                        if (!AbstractC0576x6ced6b.equals(byteSeparator.charAt(i6), str.charAt(i12 + i6), ignoreCase)) {
                                            m2070xd2bcb0cf(i12, length2, str, byteSeparator, "byte separator");
                                            throw null;
                                        }
                                        i6++;
                                        i10 = i13;
                                    }
                                }
                            }
                            int i14 = i10;
                            bArr2[i11] = m2065x34271fae(i12 + 1, str);
                            i12 += 3;
                            i11++;
                            i10 = i14;
                            i6 = 0;
                        }
                        str2 = "byte suffix";
                        str3 = "byte prefix";
                    }
                    bArr2 = null;
                    str2 = "byte suffix";
                    str3 = "byte prefix";
                }
            } else {
                String bytePrefix = bytes.getBytePrefix();
                String byteSuffix = bytes.getByteSuffix();
                String byteSeparator2 = bytes.getByteSeparator();
                long length5 = byteSeparator2.length();
                long length6 = bytePrefix.length() + 2 + byteSuffix.length() + length5;
                long j = length2;
                int i15 = (int) ((j + length5) / length6);
                if ((i15 * length6) - length5 != j) {
                    str2 = "byte suffix";
                    str3 = "byte prefix";
                    bArr = null;
                } else {
                    boolean ignoreCase2 = bytes.getIgnoreCase();
                    bArr = new byte[i15];
                    if (bytePrefix.length() == 0) {
                        str3 = "byte prefix";
                        str7 = byteSeparator2;
                        length = 0;
                    } else {
                        int length7 = bytePrefix.length();
                        for (int i16 = 0; i16 < length7; i16++) {
                            if (!AbstractC0576x6ced6b.equals(bytePrefix.charAt(i16), str.charAt(i16), ignoreCase2)) {
                                m2070xd2bcb0cf(0, length2, str, bytePrefix, "byte prefix");
                                throw null;
                            }
                        }
                        str3 = "byte prefix";
                        length = bytePrefix.length();
                        str7 = byteSeparator2;
                    }
                    String m2953x742e2fda = AbstractC0362x4440ab85.m2953x742e2fda(byteSuffix, str7, bytePrefix);
                    int i17 = i15 - 1;
                    for (int i18 = 0; i18 < i17; i18++) {
                        bArr[i18] = m2065x34271fae(length, str);
                        length += 2;
                        if (m2953x742e2fda.length() != 0) {
                            int length8 = m2953x742e2fda.length();
                            for (int i19 = 0; i19 < length8; i19++) {
                                if (!AbstractC0576x6ced6b.equals(m2953x742e2fda.charAt(i19), str.charAt(length + i19), ignoreCase2)) {
                                    m2070xd2bcb0cf(length, length2, str, m2953x742e2fda, "byte suffix + byte separator + byte prefix");
                                    throw null;
                                }
                            }
                            length = m2953x742e2fda.length() + length;
                        }
                    }
                    bArr[i17] = m2065x34271fae(length, str);
                    int i20 = length + 2;
                    if (byteSuffix.length() != 0) {
                        int length9 = byteSuffix.length();
                        for (int i21 = 0; i21 < length9; i21++) {
                            if (!AbstractC0576x6ced6b.equals(byteSuffix.charAt(i21), str.charAt(i20 + i21), ignoreCase2)) {
                                m2070xd2bcb0cf(i20, length2, str, byteSuffix, "byte suffix");
                                throw null;
                            }
                        }
                    }
                    str2 = "byte suffix";
                }
                bArr2 = bArr;
            }
            if (bArr2 != null) {
                return bArr2;
            }
        } else {
            str2 = "byte suffix";
            str3 = "byte prefix";
        }
        int bytesPerLine = bytes.getBytesPerLine();
        int bytesPerGroup = bytes.getBytesPerGroup();
        String bytePrefix2 = bytes.getBytePrefix();
        String byteSuffix2 = bytes.getByteSuffix();
        String byteSeparator3 = bytes.getByteSeparator();
        String groupSeparator = bytes.getGroupSeparator();
        boolean ignoreCase3 = bytes.getIgnoreCase();
        String str8 = str2;
        String str9 = groupSeparator;
        String str10 = byteSeparator3;
        int parsedByteArrayMaxSize = parsedByteArrayMaxSize(length2, bytesPerLine, bytesPerGroup, groupSeparator.length(), byteSeparator3.length(), bytePrefix2.length(), byteSuffix2.length());
        byte[] bArr3 = new byte[parsedByteArrayMaxSize];
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        while (i22 < length2) {
            if (i24 == bytesPerLine) {
                if (str.charAt(i22) == '\r') {
                    int i26 = i22 + 1;
                    i22 = (i26 >= length2 || str.charAt(i26) != '\n') ? i26 : i22 + 2;
                } else {
                    if (str.charAt(i22) != '\n') {
                        StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i22, "Expected a new line at index ", ", but was ");
                        m2939xab142723.append(str.charAt(i22));
                        throw new NumberFormatException(m2939xab142723.toString());
                    }
                    i22++;
                }
                i2 = bytesPerLine;
                str4 = str10;
                i25 = 0;
                i4 = 1;
                i = 0;
            } else {
                if (i25 == bytesPerGroup) {
                    if (str9.length() == 0) {
                        i = i24;
                        i2 = bytesPerLine;
                        str5 = str9;
                    } else {
                        int length10 = str9.length();
                        int i27 = 0;
                        while (i27 < length10) {
                            int i28 = i24;
                            String str11 = str9;
                            int i29 = length10;
                            int i30 = bytesPerLine;
                            if (!AbstractC0576x6ced6b.equals(str11.charAt(i27), str.charAt(i22 + i27), ignoreCase3)) {
                                m2070xd2bcb0cf(i22, length2, str, str11, "group separator");
                                throw null;
                            }
                            i27++;
                            length10 = i29;
                            bytesPerLine = i30;
                            str9 = str11;
                            i24 = i28;
                        }
                        i = i24;
                        i2 = bytesPerLine;
                        str5 = str9;
                        i22 += str5.length();
                    }
                    str9 = str5;
                    str4 = str10;
                    i25 = 0;
                } else {
                    i = i24;
                    i2 = bytesPerLine;
                    String str12 = str9;
                    if (i25 != 0) {
                        if (str10.length() == 0) {
                            str9 = str12;
                            str4 = str10;
                            i3 = i25;
                        } else {
                            int length11 = str10.length();
                            int i31 = 0;
                            while (i31 < length11) {
                                String str13 = str12;
                                String str14 = str10;
                                int i32 = i25;
                                int i33 = length11;
                                if (!AbstractC0576x6ced6b.equals(str14.charAt(i31), str.charAt(i22 + i31), ignoreCase3)) {
                                    m2070xd2bcb0cf(i22, length2, str, str14, "byte separator");
                                    throw null;
                                }
                                i31++;
                                i25 = i32;
                                length11 = i33;
                                str10 = str14;
                                str12 = str13;
                            }
                            str9 = str12;
                            str4 = str10;
                            i3 = i25;
                            i22 += str4.length();
                        }
                        i25 = i3;
                    } else {
                        str9 = str12;
                        str4 = str10;
                    }
                }
                i4 = 1;
            }
            int i34 = i + 1;
            int i35 = i25 + i4;
            if (bytePrefix2.length() == 0) {
                str10 = str4;
                i5 = i35;
            } else {
                int length12 = bytePrefix2.length();
                str10 = str4;
                int i36 = 0;
                while (i36 < length12) {
                    int i37 = i35;
                    int i38 = length12;
                    if (!AbstractC0576x6ced6b.equals(bytePrefix2.charAt(i36), str.charAt(i22 + i36), ignoreCase3)) {
                        m2070xd2bcb0cf(i22, length2, str, bytePrefix2, str3);
                        throw null;
                    }
                    i36++;
                    i35 = i37;
                    length12 = i38;
                }
                i5 = i35;
                i22 += bytePrefix2.length();
            }
            if (length2 - 2 >= i22) {
                int i39 = i23 + 1;
                bArr3[i23] = m2065x34271fae(i22, str);
                i22 += 2;
                if (byteSuffix2.length() == 0) {
                    str6 = str8;
                } else {
                    int length13 = byteSuffix2.length();
                    int i40 = 0;
                    while (i40 < length13) {
                        int i41 = length13;
                        if (!AbstractC0576x6ced6b.equals(byteSuffix2.charAt(i40), str.charAt(i22 + i40), ignoreCase3)) {
                            m2070xd2bcb0cf(i22, length2, str, byteSuffix2, str8);
                            throw null;
                        }
                        i40++;
                        length13 = i41;
                    }
                    str6 = str8;
                    i22 = byteSuffix2.length() + i22;
                }
                str8 = str6;
                i23 = i39;
                i24 = i34;
                i25 = i5;
                bytesPerLine = i2;
            } else {
                m2069x1db10c9d(i22, length2, 2, str, "exactly");
                throw null;
            }
        }
        if (i23 == parsedByteArrayMaxSize) {
            return bArr3;
        }
        byte[] copyOf = Arrays.copyOf(bArr3, i23);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static /* synthetic */ byte[] hexToByteArray$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByteArray(str, hexFormat);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    public static final int hexToInt(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToInt(str, 0, str.length(), format);
    }

    public static /* synthetic */ int hexToInt$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToInt(str, hexFormat);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    public static final long hexToLong(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToLong(str, 0, str.length(), format);
    }

    public static /* synthetic */ long hexToLong$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToLong(str, hexFormat);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    public static final short hexToShort(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return (short) m2064x9e171bf9(str, 0, str.length(), format, 4);
    }

    public static /* synthetic */ short hexToShort$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToShort(str, hexFormat);
    }

    public static final int parsedByteArrayMaxSize(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        long m2059xfbe0c504;
        int i8;
        int i9;
        if (i > 0) {
            long j = i6 + 2 + i7;
            long m2059xfbe0c5042 = m2059xfbe0c504(j, i3, i5);
            if (i2 <= i3) {
                m2059xfbe0c504 = m2059xfbe0c504(j, i2, i5);
            } else {
                m2059xfbe0c504 = m2059xfbe0c504(m2059xfbe0c5042, i2 / i3, i4);
                int i10 = i2 % i3;
                if (i10 != 0) {
                    m2059xfbe0c504 = m2059xfbe0c504(j, i10, i5) + m2059xfbe0c504 + i4;
                }
            }
            long j2 = i;
            long m2073xab142723 = m2073xab142723(j2, m2059xfbe0c504, 1);
            long j3 = j2 - ((m2059xfbe0c504 + 1) * m2073xab142723);
            long m2073xab1427232 = m2073xab142723(j3, m2059xfbe0c5042, i4);
            long j4 = j3 - ((m2059xfbe0c5042 + i4) * m2073xab1427232);
            long m2073xab1427233 = m2073xab142723(j4, j, i5);
            if (j4 - ((j + i5) * m2073xab1427233) > 0) {
                i9 = i2;
                i8 = 1;
            } else {
                i8 = 0;
                i9 = i2;
            }
            return (int) ((m2073xab1427232 * i3) + (m2073xab142723 * i9) + m2073xab1427233 + i8);
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(@NotNull byte[] bArr, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return toHexString(bArr, 0, bArr.length, format);
    }

    public static /* synthetic */ String toHexString$default(byte[] bArr, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(bArr, hexFormat);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final long m2059xfbe0c504(long j, int i, int i2) {
        if (i > 0) {
            long j2 = i;
            return ((j2 - 1) * i2) + (j * j2);
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final int m2060x3271d0aa(long j) {
        if (0 <= j && j <= 2147483647L) {
            return (int) j;
        }
        throw new IllegalArgumentException("The resulting string length is too big: " + ((Object) ULong.m1826toStringimpl(ULong.m1822constructorimpl(j))));
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final void m2061x1378447b(String str, int i, int i2, int i3) {
        int i4 = i2 - i;
        if (i4 >= 1) {
            if (i4 > i3) {
                int i5 = (i4 + i) - i3;
                while (i < i5) {
                    if (str.charAt(i) == '0') {
                        i++;
                    } else {
                        StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Expected the hexadecimal digit '0' at index ", ", but was '");
                        m2939xab142723.append(str.charAt(i));
                        m2939xab142723.append("'.\nThe result won't fit the type being parsed.");
                        throw new NumberFormatException(m2939xab142723.toString());
                    }
                }
                return;
            }
            return;
        }
        m2069x1db10c9d(i, i2, 1, str, "at least");
        throw null;
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final void m2062x75d576dc(String str, int i, int i2, String str2, String str3, boolean z, int i3) {
        if ((i2 - i) - str2.length() > str3.length()) {
            if (str2.length() != 0) {
                int length = str2.length();
                for (int i4 = 0; i4 < length; i4++) {
                    if (!AbstractC0576x6ced6b.equals(str2.charAt(i4), str.charAt(i + i4), z)) {
                        m2070xd2bcb0cf(i, i2, str, str2, "prefix");
                        throw null;
                    }
                }
                i += str2.length();
            }
            int length2 = i2 - str3.length();
            if (str3.length() != 0) {
                int length3 = str3.length();
                for (int i5 = 0; i5 < length3; i5++) {
                    if (!AbstractC0576x6ced6b.equals(str3.charAt(i5), str.charAt(length2 + i5), z)) {
                        m2070xd2bcb0cf(length2, i2, str, str3, "suffix");
                        throw null;
                    }
                }
            }
            m2061x1378447b(str, i, length2, i3);
            return;
        }
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("Expected a hexadecimal number with prefix \"", str2, "\" and suffix \"", str3, "\", but was ");
        m2944x4440ab85.append(substring);
        throw new NumberFormatException(m2944x4440ab85.toString());
    }

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final int m2063x9738a56c(byte[] bArr, int i, int[] iArr, char[] cArr, int i2) {
        int i3 = iArr[bArr[i] & 255];
        cArr[i2] = (char) (i3 >> 8);
        cArr[i2 + 1] = (char) (i3 & 255);
        return i2 + 2;
    }

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static final int m2064x9e171bf9(String str, int i, int i2, HexFormat hexFormat, int i3) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i, i2, str.length());
        HexFormat.NumberHexFormat number = hexFormat.getNumber();
        if (number.getIsDigitsOnly()) {
            m2061x1378447b(str, i, i2, i3);
            return m2066x95f25580(str, i, i2);
        }
        String prefix = number.getPrefix();
        String suffix = number.getSuffix();
        m2062x75d576dc(str, i, i2, prefix, suffix, number.getIgnoreCase(), i3);
        return m2066x95f25580(str, prefix.length() + i, i2 - suffix.length());
    }

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final byte m2065x34271fae(int i, String str) {
        int[] iArr;
        int i2;
        int i3;
        char charAt = str.charAt(i);
        if ((charAt >>> '\b') == 0 && (i2 = (iArr = f1635x1378447b)[charAt]) >= 0) {
            int i4 = i + 1;
            char charAt2 = str.charAt(i4);
            if ((charAt2 >>> '\b') == 0 && (i3 = iArr[charAt2]) >= 0) {
                return (byte) ((i2 << 4) | i3);
            }
            m2068x9d12c1f4(i4, str);
            throw null;
        }
        m2068x9d12c1f4(i, str);
        throw null;
    }

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public static final int m2066x95f25580(String str, int i, int i2) {
        int i3;
        int i4 = 0;
        while (i < i2) {
            int i5 = i4 << 4;
            char charAt = str.charAt(i);
            if ((charAt >>> '\b') == 0 && (i3 = f1635x1378447b[charAt]) >= 0) {
                i4 = i5 | i3;
                i++;
            } else {
                m2068x9d12c1f4(i, str);
                throw null;
            }
        }
        return i4;
    }

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public static final long m2067x3db60231(int i, int i2, String str) {
        long j = 0;
        while (i < i2) {
            long j2 = j << 4;
            char charAt = str.charAt(i);
            if ((charAt >>> '\b') == 0) {
                long j3 = f1636x75d576dc[charAt];
                if (j3 >= 0) {
                    j = j2 | j3;
                    i++;
                }
            }
            m2068x9d12c1f4(i, str);
            throw null;
        }
        return j;
    }

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public static final void m2068x9d12c1f4(int i, String str) {
        StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Expected a hexadecimal digit at index ", ", but was ");
        m2939xab142723.append(str.charAt(i));
        throw new NumberFormatException(m2939xab142723.toString());
    }

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public static final void m2069x1db10c9d(int i, int i2, int i3, String str, String str2) {
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        throw new NumberFormatException("Expected " + str2 + ' ' + i3 + " hexadecimal digits at index " + i + ", but was \"" + substring + "\" of length " + (i2 - i));
    }

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    public static final void m2070xd2bcb0cf(int i, int i2, String str, String str2, String str3) {
        int coerceAtMost = AbstractC0296x1378447b.coerceAtMost(str2.length() + i, i2);
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(i, coerceAtMost);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("Expected ", str3, " \"", str2, "\" at index ");
        m2944x4440ab85.append(i);
        m2944x4440ab85.append(", but was ");
        m2944x4440ab85.append(substring);
        throw new NumberFormatException(m2944x4440ab85.toString());
    }

    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁, reason: contains not printable characters */
    public static final int m2071x8c6fc18a(String str, char[] cArr, int i) {
        int length = str.length();
        if (length != 0) {
            if (length != 1) {
                int length2 = str.length();
                Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                str.getChars(0, length2, cArr, i);
            } else {
                cArr[i] = str.charAt(0);
            }
        }
        return str.length() + i;
    }

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀, reason: contains not printable characters */
    public static final String m2072x1aebc6d9(long j, HexFormat.NumberHexFormat numberHexFormat, String str, int i) {
        int i2 = i >> 2;
        int minLength = numberHexFormat.getMinLength();
        int coerceAtLeast = AbstractC0296x1378447b.coerceAtLeast(minLength - i2, 0);
        String prefix = numberHexFormat.getPrefix();
        String suffix = numberHexFormat.getSuffix();
        boolean removeLeadingZeros = numberHexFormat.getRemoveLeadingZeros();
        int m2060x3271d0aa = m2060x3271d0aa(prefix.length() + coerceAtLeast + i2 + suffix.length());
        char[] cArr = new char[m2060x3271d0aa];
        int m2071x8c6fc18a = m2071x8c6fc18a(prefix, cArr, 0);
        if (coerceAtLeast > 0) {
            int i3 = coerceAtLeast + m2071x8c6fc18a;
            ArraysKt___ArraysJvmKt.fill(cArr, str.charAt(0), m2071x8c6fc18a, i3);
            m2071x8c6fc18a = i3;
        }
        int i4 = i;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 -= 4;
            int i6 = (int) ((j >> i4) & 15);
            if (removeLeadingZeros && i6 == 0 && (i4 >> 2) >= minLength) {
                removeLeadingZeros = true;
            } else {
                removeLeadingZeros = false;
            }
            if (!removeLeadingZeros) {
                cArr[m2071x8c6fc18a] = str.charAt(i6);
                m2071x8c6fc18a++;
            }
        }
        int m2071x8c6fc18a2 = m2071x8c6fc18a(suffix, cArr, m2071x8c6fc18a);
        if (m2071x8c6fc18a2 == m2060x3271d0aa) {
            return AbstractC1197x89633db9.concatToString(cArr);
        }
        return AbstractC1197x89633db9.concatToString$default(cArr, 0, m2071x8c6fc18a2, 1, null);
    }

    /* renamed from: 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨, reason: contains not printable characters */
    public static final long m2073xab142723(long j, long j2, int i) {
        if (j <= 0 || j2 <= 0) {
            return 0L;
        }
        long j3 = i;
        return (j + j3) / (j2 + j3);
    }

    @ExperimentalStdlibApi
    public static final int hexToInt(@NotNull String str, int i, int i2, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return m2064x9e171bf9(str, i, i2, format, 8);
    }

    @ExperimentalStdlibApi
    public static final long hexToLong(@NotNull String str, int i, int i2, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i, i2, str.length());
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnly()) {
            m2061x1378447b(str, i, i2, 16);
            return m2067x3db60231(i, i2, str);
        }
        String prefix = number.getPrefix();
        String suffix = number.getSuffix();
        m2062x75d576dc(str, i, i2, prefix, suffix, number.getIgnoreCase(), 16);
        return m2067x3db60231(prefix.length() + i, i2 - suffix.length(), str);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0149 A[SYNTHETIC] */
    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final String toHexString(@NotNull byte[] bArr, int i, int i2, @NotNull HexFormat format) {
        int i3 = i;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i3, i2, bArr.length);
        if (i3 == i2) {
            return "";
        }
        int[] iArr = format.getUpperCase() ? f1634x3271d0aa : f1633xfbe0c504;
        HexFormat.BytesHexFormat bytes = format.getBytes();
        int i4 = 0;
        if (bytes.getNoLineAndGroupSeparator()) {
            if (bytes.getShortByteSeparatorNoPrefixAndSuffix()) {
                int length = bytes.getByteSeparator().length();
                if (length > 1) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i5 = i2 - i3;
                if (length == 0) {
                    char[] cArr = new char[m2060x3271d0aa(i5 * 2)];
                    while (i3 < i2) {
                        i4 = m2063x9738a56c(bArr, i3, iArr, cArr, i4);
                        i3++;
                    }
                    return AbstractC1197x89633db9.concatToString(cArr);
                }
                char[] cArr2 = new char[m2060x3271d0aa((i5 * 3) - 1)];
                char charAt = bytes.getByteSeparator().charAt(0);
                int m2063x9738a56c = m2063x9738a56c(bArr, i3, iArr, cArr2, 0);
                for (int i6 = i3 + 1; i6 < i2; i6++) {
                    cArr2[m2063x9738a56c] = charAt;
                    m2063x9738a56c = m2063x9738a56c(bArr, i6, iArr, cArr2, m2063x9738a56c + 1);
                }
                return AbstractC1197x89633db9.concatToString(cArr2);
            }
            String bytePrefix = bytes.getBytePrefix();
            String byteSuffix = bytes.getByteSuffix();
            String byteSeparator = bytes.getByteSeparator();
            int i7 = i2 - i3;
            int length2 = byteSeparator.length();
            int length3 = bytePrefix.length();
            int length4 = byteSuffix.length();
            if (i7 > 0) {
                long j = length2;
                char[] cArr3 = new char[m2060x3271d0aa((i7 * (((length3 + 2) + length4) + j)) - j)];
                int m2071x8c6fc18a = m2071x8c6fc18a(byteSuffix, cArr3, m2063x9738a56c(bArr, i3, iArr, cArr3, m2071x8c6fc18a(bytePrefix, cArr3, 0)));
                for (int i8 = i3 + 1; i8 < i2; i8++) {
                    m2071x8c6fc18a = m2071x8c6fc18a(byteSuffix, cArr3, m2063x9738a56c(bArr, i8, iArr, cArr3, m2071x8c6fc18a(bytePrefix, cArr3, m2071x8c6fc18a(byteSeparator, cArr3, m2071x8c6fc18a))));
                }
                return AbstractC1197x89633db9.concatToString(cArr3);
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        int bytesPerLine = bytes.getBytesPerLine();
        int bytesPerGroup = bytes.getBytesPerGroup();
        String bytePrefix2 = bytes.getBytePrefix();
        String byteSuffix2 = bytes.getByteSuffix();
        String byteSeparator2 = bytes.getByteSeparator();
        String groupSeparator = bytes.getGroupSeparator();
        int formattedStringLength = formattedStringLength(i2 - i3, bytesPerLine, bytesPerGroup, groupSeparator.length(), byteSeparator2.length(), bytePrefix2.length(), byteSuffix2.length());
        char[] cArr4 = new char[formattedStringLength];
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = i; i12 < i2; i12++) {
            if (i10 == bytesPerLine) {
                cArr4[i9] = '\n';
                i9++;
                i10 = 0;
            } else {
                if (i11 == bytesPerGroup) {
                    i9 = m2071x8c6fc18a(groupSeparator, cArr4, i9);
                }
                if (i11 == 0) {
                    i9 = m2071x8c6fc18a(byteSeparator2, cArr4, i9);
                }
                i9 = m2071x8c6fc18a(byteSuffix2, cArr4, m2063x9738a56c(bArr, i12, iArr, cArr4, m2071x8c6fc18a(bytePrefix2, cArr4, i9)));
                i11++;
                i10++;
            }
            i11 = 0;
            if (i11 == 0) {
            }
            i9 = m2071x8c6fc18a(byteSuffix2, cArr4, m2063x9738a56c(bArr, i12, iArr, cArr4, m2071x8c6fc18a(bytePrefix2, cArr4, i9)));
            i11++;
            i10++;
        }
        if (i9 == formattedStringLength) {
            return AbstractC1197x89633db9.concatToString(cArr4);
        }
        throw new IllegalStateException("Check failed.");
    }

    public static /* synthetic */ int hexToInt$default(String str, int i, int i2, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToInt(str, i, i2, hexFormat);
    }

    public static /* synthetic */ long hexToLong$default(String str, int i, int i2, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToLong(str, i, i2, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(byte[] bArr, int i, int i2, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = bArr.length;
        }
        if ((i3 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(bArr, i, i2, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(byte b, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(b, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(short s, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(s, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(int i, HexFormat hexFormat, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(i, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(long j, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(j, hexFormat);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(byte b, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? "0123456789ABCDEF" : "0123456789abcdef";
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((b >> 4) & 15), str.charAt(b & Ascii.SI)};
            if (number.getRemoveLeadingZeros()) {
                return AbstractC1197x89633db9.concatToString$default(cArr, AbstractC0296x1378447b.coerceAtMost((Integer.numberOfLeadingZeros(b & 255) - 24) >> 2, 1), 0, 2, null);
            }
            return AbstractC1197x89633db9.concatToString(cArr);
        }
        return m2072x1aebc6d9(b, number, str, 8);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(short s, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? "0123456789ABCDEF" : "0123456789abcdef";
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((s >> 12) & 15), str.charAt((s >> 8) & 15), str.charAt((s >> 4) & 15), str.charAt(s & 15)};
            if (number.getRemoveLeadingZeros()) {
                return AbstractC1197x89633db9.concatToString$default(cArr, AbstractC0296x1378447b.coerceAtMost((Integer.numberOfLeadingZeros(s & UShort.MAX_VALUE) - 16) >> 2, 3), 0, 2, null);
            }
            return AbstractC1197x89633db9.concatToString(cArr);
        }
        return m2072x1aebc6d9(s, number, str, 16);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(int i, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? "0123456789ABCDEF" : "0123456789abcdef";
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((i >> 28) & 15), str.charAt((i >> 24) & 15), str.charAt((i >> 20) & 15), str.charAt((i >> 16) & 15), str.charAt((i >> 12) & 15), str.charAt((i >> 8) & 15), str.charAt((i >> 4) & 15), str.charAt(i & 15)};
            if (number.getRemoveLeadingZeros()) {
                return AbstractC1197x89633db9.concatToString$default(cArr, AbstractC0296x1378447b.coerceAtMost(Integer.numberOfLeadingZeros(i) >> 2, 7), 0, 2, null);
            }
            return AbstractC1197x89633db9.concatToString(cArr);
        }
        return m2072x1aebc6d9(i, number, str, 32);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(long j, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? "0123456789ABCDEF" : "0123456789abcdef";
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((int) ((j >> 60) & 15)), str.charAt((int) ((j >> 56) & 15)), str.charAt((int) ((j >> 52) & 15)), str.charAt((int) ((j >> 48) & 15)), str.charAt((int) ((j >> 44) & 15)), str.charAt((int) ((j >> 40) & 15)), str.charAt((int) ((j >> 36) & 15)), str.charAt((int) ((j >> 32) & 15)), str.charAt((int) ((j >> 28) & 15)), str.charAt((int) ((j >> 24) & 15)), str.charAt((int) ((j >> 20) & 15)), str.charAt((int) ((j >> 16) & 15)), str.charAt((int) ((j >> 12) & 15)), str.charAt((int) ((j >> 8) & 15)), str.charAt((int) ((j >> 4) & 15)), str.charAt((int) (15 & j))};
            if (number.getRemoveLeadingZeros()) {
                return AbstractC1197x89633db9.concatToString$default(cArr, AbstractC0296x1378447b.coerceAtMost(Long.numberOfLeadingZeros(j) >> 2, 15), 0, 2, null);
            }
            return AbstractC1197x89633db9.concatToString(cArr);
        }
        return m2072x1aebc6d9(j, number, str, 64);
    }
}
