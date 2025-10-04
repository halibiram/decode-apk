package kotlin.time;

import com.tencent.mmkv.MMKV;
import defpackage.AbstractC0362x4440ab85;
import defpackage.C0648x4ba9bb0c;
import defpackage.C0888x306ec7c1;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Typography;
import kotlin.time.Instant;
import okhttp3.internal.http.HttpStatusCodesKt;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\"\u0014\u0010\u0005\u001a\u00020\u00008\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006\"\u001f\u0010\b\u001a\u00020\u0002*\u00020\u00078Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t\"\u001f\u0010\f\u001a\u00020\u0002*\u00020\u00078Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\r\u0010\u000b\u001a\u0004\b\f\u0010\t¨\u0006\u000e"}, d2 = {"", "year", "", "isLeapYear", "(I)Z", "NANOS_PER_SECOND", "I", "Lkotlin/time/Instant;", "isDistantPast", "(Lkotlin/time/Instant;)Z", "isDistantPast$annotations", "(Lkotlin/time/Instant;)V", "isDistantFuture", "isDistantFuture$annotations", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,799:1\n1#2:800\n*E\n"})
/* loaded from: classes3.dex */
public final class InstantKt {
    public static final int NANOS_PER_SECOND = 1000000000;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static final int[] f1714xfbe0c504 = {1, 10, 100, 1000, 10000, 100000, DurationKt.NANOS_IN_MILLIS, 10000000, 100000000, 1000000000};

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static final int[] f1715x3271d0aa = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static final int[] f1716x1378447b = {3, 6};

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨 */
    public static final int[] f1717x75d576dc = {1, 2, 4, 5, 7, 8};

    public static final String access$formatIso(Instant instant) {
        int[] iArr;
        StringBuilder sb = new StringBuilder();
        C0304x9738a56c fromInstant = C0304x9738a56c.f1734x95f25580.fromInstant(instant);
        int i = fromInstant.f1735xfbe0c504;
        int i2 = 0;
        if (Math.abs(i) < 1000) {
            StringBuilder sb2 = new StringBuilder();
            if (i >= 0) {
                sb2.append(i + 10000);
                Intrinsics.checkNotNullExpressionValue(sb2.deleteCharAt(0), "deleteCharAt(...)");
            } else {
                sb2.append(i - 10000);
                Intrinsics.checkNotNullExpressionValue(sb2.deleteCharAt(1), "deleteCharAt(...)");
            }
            sb.append((CharSequence) sb2);
        } else {
            if (i >= 10000) {
                sb.append('+');
            }
            sb.append(i);
        }
        sb.append('-');
        m2169xfbe0c504(sb, sb, fromInstant.f1736x3271d0aa);
        sb.append('-');
        m2169xfbe0c504(sb, sb, fromInstant.f1737x1378447b);
        sb.append('T');
        m2169xfbe0c504(sb, sb, fromInstant.f1738x75d576dc);
        sb.append(':');
        m2169xfbe0c504(sb, sb, fromInstant.f1739x9738a56c);
        sb.append(':');
        m2169xfbe0c504(sb, sb, fromInstant.f1740x9e171bf9);
        int i3 = fromInstant.f1741x34271fae;
        if (i3 != 0) {
            sb.append('.');
            while (true) {
                iArr = f1714xfbe0c504;
                int i4 = i2 + 1;
                if (i3 % iArr[i4] != 0) {
                    break;
                }
                i2 = i4;
            }
            int i5 = i2 - (i2 % 3);
            String valueOf = String.valueOf((i3 / iArr[i5]) + iArr[9 - i5]);
            Intrinsics.checkNotNull(valueOf, "null cannot be cast to non-null type java.lang.String");
            String substring = valueOf.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            sb.append(substring);
        }
        sb.append('Z');
        return sb.toString();
    }

    public static final Instant access$parseIso(CharSequence charSequence) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long j;
        char charAt;
        char charAt2;
        if (charSequence.length() > 0) {
            char charAt3 = charSequence.charAt(0);
            if (charAt3 == '+' || charAt3 == '-') {
                i = 1;
            } else {
                charAt3 = ' ';
                i = 0;
            }
            int i8 = i;
            int i9 = 0;
            while (i8 < charSequence.length() && '0' <= (charAt2 = charSequence.charAt(i8)) && charAt2 < ':') {
                i9 = (i9 * 10) + (charSequence.charAt(i8) - '0');
                i8++;
            }
            int i10 = i8 - i;
            if (i10 <= 10) {
                if (i10 == 10 && Intrinsics.compare((int) charSequence.charAt(i), 50) >= 0) {
                    m2171x1378447b(charSequence, "Expected at most 9 digits for the year number or year 1000000000, got " + i10 + " digits");
                    throw null;
                }
                if (i10 < 4) {
                    m2171x1378447b(charSequence, "The year number must be padded to 4 digits, got " + i10 + " digits");
                    throw null;
                }
                if (charAt3 == '+' && i10 == 4) {
                    m2171x1378447b(charSequence, "The '+' sign at the start is only valid for year numbers longer than 4 digits");
                    throw null;
                }
                if (charAt3 == ' ' && i10 != 4) {
                    m2171x1378447b(charSequence, "A '+' or '-' sign is required for year numbers longer than 4 digits");
                    throw null;
                }
                if (charAt3 == '-') {
                    i9 = -i9;
                }
                int i11 = i8 + 16;
                if (charSequence.length() >= i11) {
                    m2170x3271d0aa(charSequence, "'-'", i8, new C0648x4ba9bb0c(5));
                    m2170x3271d0aa(charSequence, "'-'", i8 + 3, new C0648x4ba9bb0c(6));
                    m2170x3271d0aa(charSequence, "'T' or 't'", i8 + 6, new C0648x4ba9bb0c(7));
                    m2170x3271d0aa(charSequence, "':'", i8 + 9, new C0648x4ba9bb0c(8));
                    m2170x3271d0aa(charSequence, "':'", i8 + 12, new C0648x4ba9bb0c(9));
                    int[] iArr = f1715x3271d0aa;
                    for (int i12 = 0; i12 < 10; i12++) {
                        m2170x3271d0aa(charSequence, "an ASCII digit", iArr[i12] + i8, new C0648x4ba9bb0c(10));
                    }
                    int m2172x75d576dc = m2172x75d576dc(charSequence, i8 + 1);
                    int m2172x75d576dc2 = m2172x75d576dc(charSequence, i8 + 4);
                    int m2172x75d576dc3 = m2172x75d576dc(charSequence, i8 + 7);
                    int m2172x75d576dc4 = m2172x75d576dc(charSequence, i8 + 10);
                    int m2172x75d576dc5 = m2172x75d576dc(charSequence, i8 + 13);
                    int i13 = i8 + 15;
                    if (charSequence.charAt(i13) == '.') {
                        i13 = i11;
                        int i14 = 0;
                        while (i13 < charSequence.length() && '0' <= (charAt = charSequence.charAt(i13)) && charAt < ':') {
                            i14 = (i14 * 10) + (charSequence.charAt(i13) - '0');
                            i13++;
                        }
                        int i15 = i13 - i11;
                        if (1 > i15 || i15 >= 10) {
                            m2171x1378447b(charSequence, "1..9 digits are supported for the fraction of the second, got " + i15 + " digits");
                            throw null;
                        }
                        i2 = i14 * f1714xfbe0c504[9 - i15];
                    } else {
                        i2 = 0;
                    }
                    if (i13 < charSequence.length()) {
                        char charAt4 = charSequence.charAt(i13);
                        if (charAt4 != '+' && charAt4 != '-') {
                            if (charAt4 != 'Z' && charAt4 != 'z') {
                                m2171x1378447b(charSequence, "Expected the UTC offset at position " + i13 + ", got '" + charAt4 + '\'');
                                throw null;
                            }
                            int i16 = i13 + 1;
                            if (charSequence.length() != i16) {
                                m2171x1378447b(charSequence, "Extra text after the instant at position " + i16);
                                throw null;
                            }
                            i3 = 0;
                        } else {
                            int length = charSequence.length() - i13;
                            if (length > 9) {
                                m2171x1378447b(charSequence, "The UTC offset string \"" + m2173x9738a56c(charSequence.subSequence(i13, charSequence.length()).toString(), 16) + "\" is too long");
                                throw null;
                            }
                            if (length % 3 != 0) {
                                m2171x1378447b(charSequence, "Invalid UTC offset string \"" + charSequence.subSequence(i13, charSequence.length()).toString() + Typography.quote);
                                throw null;
                            }
                            int[] iArr2 = f1716x1378447b;
                            int i17 = 0;
                            for (int i18 = 2; i17 < i18; i18 = 2) {
                                int i19 = i13 + iArr2[i17];
                                if (i19 >= charSequence.length()) {
                                    break;
                                }
                                if (charSequence.charAt(i19) != ':') {
                                    StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i19, "Expected ':' at index ", ", got '");
                                    m2939xab142723.append(charSequence.charAt(i19));
                                    m2939xab142723.append('\'');
                                    m2171x1378447b(charSequence, m2939xab142723.toString());
                                    throw null;
                                }
                                i17++;
                            }
                            int[] iArr3 = f1717x75d576dc;
                            int i20 = 0;
                            for (int i21 = 6; i20 < i21; i21 = 6) {
                                int i22 = iArr3[i20] + i13;
                                if (i22 >= charSequence.length()) {
                                    break;
                                }
                                char charAt5 = charSequence.charAt(i22);
                                int[] iArr4 = iArr3;
                                if ('0' > charAt5 || charAt5 >= ':') {
                                    StringBuilder m2939xab1427232 = AbstractC0362x4440ab85.m2939xab142723(i22, "Expected an ASCII digit at index ", ", got '");
                                    m2939xab1427232.append(charSequence.charAt(i22));
                                    m2939xab1427232.append('\'');
                                    m2171x1378447b(charSequence, m2939xab1427232.toString());
                                    throw null;
                                }
                                i20++;
                                iArr3 = iArr4;
                            }
                            int m2172x75d576dc6 = m2172x75d576dc(charSequence, i13 + 1);
                            int m2172x75d576dc7 = length > 3 ? m2172x75d576dc(charSequence, i13 + 4) : 0;
                            int m2172x75d576dc8 = length > 6 ? m2172x75d576dc(charSequence, i13 + 7) : 0;
                            if (m2172x75d576dc7 > 59) {
                                m2171x1378447b(charSequence, "Expected offset-minute-of-hour in 0..59, got " + m2172x75d576dc7);
                                throw null;
                            }
                            if (m2172x75d576dc8 > 59) {
                                m2171x1378447b(charSequence, "Expected offset-second-of-minute in 0..59, got " + m2172x75d576dc8);
                                throw null;
                            }
                            if (m2172x75d576dc6 > 17 && (m2172x75d576dc6 != 18 || m2172x75d576dc7 != 0 || m2172x75d576dc8 != 0)) {
                                m2171x1378447b(charSequence, "Expected an offset in -18:00..+18:00, got " + charSequence.subSequence(i13, charSequence.length()).toString());
                                throw null;
                            }
                            i3 = (charAt4 == '-' ? -1 : 1) * ((m2172x75d576dc7 * 60) + (m2172x75d576dc6 * MMKV.ExpireInHour) + m2172x75d576dc8);
                        }
                        if (1 <= m2172x75d576dc && m2172x75d576dc < 13) {
                            if (1 <= m2172x75d576dc2) {
                                if (m2172x75d576dc2 <= (m2172x75d576dc != 2 ? (m2172x75d576dc == 4 || m2172x75d576dc == 6 || m2172x75d576dc == 9 || m2172x75d576dc == 11) ? 30 : 31 : isLeapYear(i9) ? 29 : 28)) {
                                    if (m2172x75d576dc3 > 23) {
                                        m2171x1378447b(charSequence, "Expected hour in 0..23, got " + m2172x75d576dc3);
                                        throw null;
                                    }
                                    if (m2172x75d576dc4 > 59) {
                                        m2171x1378447b(charSequence, "Expected minute-of-hour in 0..59, got " + m2172x75d576dc4);
                                        throw null;
                                    }
                                    if (m2172x75d576dc5 <= 59) {
                                        long j2 = i9;
                                        long j3 = 365 * j2;
                                        if (j2 >= 0) {
                                            i4 = i2;
                                            i5 = m2172x75d576dc4;
                                            i6 = i9;
                                            i7 = m2172x75d576dc5;
                                            j = ((j2 + 399) / HttpStatusCodesKt.HTTP_BAD_REQUEST) + (((3 + j2) / 4) - ((99 + j2) / 100)) + j3;
                                        } else {
                                            i4 = i2;
                                            i5 = m2172x75d576dc4;
                                            i6 = i9;
                                            i7 = m2172x75d576dc5;
                                            j = j3 - ((j2 / (-400)) + ((j2 / (-4)) - (j2 / (-100))));
                                        }
                                        long j4 = j + (((m2172x75d576dc * 367) - 362) / 12) + (m2172x75d576dc2 - 1);
                                        if (m2172x75d576dc > 2) {
                                            j4 = !isLeapYear(i6) ? j4 - 2 : (-1) + j4;
                                        }
                                        long j5 = (((j4 - 719528) * MMKV.ExpireInDay) + (((i5 * 60) + (m2172x75d576dc3 * MMKV.ExpireInHour)) + i7)) - i3;
                                        Instant.Companion companion = Instant.INSTANCE;
                                        if (j5 >= companion.getMIN$kotlin_stdlib().getEpochSeconds() && j5 <= companion.getMAX$kotlin_stdlib().getEpochSeconds()) {
                                            return companion.fromEpochSeconds(j5, i4);
                                        }
                                        throw new C0888x306ec7c1("The parsed date is outside the range representable by Instant (Unix epoch second " + j5 + ')', 0);
                                    }
                                    m2171x1378447b(charSequence, "Expected second-of-minute in 0..59, got " + m2172x75d576dc5);
                                    throw null;
                                }
                            }
                            StringBuilder m2937x8c6fc18a = AbstractC0362x4440ab85.m2937x8c6fc18a(m2172x75d576dc, i9, "Expected a valid day-of-month for month ", " of year ", ", got ");
                            m2937x8c6fc18a.append(m2172x75d576dc2);
                            m2171x1378447b(charSequence, m2937x8c6fc18a.toString());
                            throw null;
                        }
                        m2171x1378447b(charSequence, "Expected a month number in 1..12, got " + m2172x75d576dc);
                        throw null;
                    }
                    m2171x1378447b(charSequence, "The UTC offset at the end of the string is missing");
                    throw null;
                }
                m2171x1378447b(charSequence, "The input string is too short");
                throw null;
            }
            m2171x1378447b(charSequence, "Expected at most 10 digits for the year number, got " + i10 + " digits");
            throw null;
        }
        throw new IllegalArgumentException("An empty string is not a valid Instant");
    }

    @SinceKotlin(version = "2.1")
    @InlineOnly
    @ExperimentalTime
    public static /* synthetic */ void isDistantFuture$annotations(Instant instant) {
    }

    @SinceKotlin(version = "2.1")
    @InlineOnly
    @ExperimentalTime
    public static /* synthetic */ void isDistantPast$annotations(Instant instant) {
    }

    public static final boolean isLeapYear(int i) {
        if ((i & 3) == 0 && (i % 100 != 0 || i % HttpStatusCodesKt.HTTP_BAD_REQUEST == 0)) {
            return true;
        }
        return false;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static final void m2169xfbe0c504(StringBuilder sb, StringBuilder sb2, int i) {
        if (i < 10) {
            sb.append('0');
        }
        sb2.append(i);
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static final void m2170x3271d0aa(CharSequence charSequence, String str, int i, Function1 function1) {
        char charAt = charSequence.charAt(i);
        if (((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
            return;
        }
        m2171x1378447b(charSequence, "Expected " + str + ", but got '" + charAt + "' at position " + i);
        throw null;
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static final void m2171x1378447b(CharSequence charSequence, String str) {
        StringBuilder m2943xc20437a5 = AbstractC0362x4440ab85.m2943xc20437a5(str, " when parsing an Instant from \"");
        m2943xc20437a5.append(m2173x9738a56c(charSequence, 64));
        m2943xc20437a5.append(Typography.quote);
        throw new C0888x306ec7c1(m2943xc20437a5.toString(), 0);
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨 */
    public static final int m2172x75d576dc(CharSequence charSequence, int i) {
        return (charSequence.charAt(i + 1) - '0') + ((charSequence.charAt(i) - '0') * 10);
    }

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨 */
    public static final String m2173x9738a56c(CharSequence charSequence, int i) {
        if (charSequence.length() <= i) {
            return charSequence.toString();
        }
        return charSequence.subSequence(0, i).toString() + "...";
    }
}
