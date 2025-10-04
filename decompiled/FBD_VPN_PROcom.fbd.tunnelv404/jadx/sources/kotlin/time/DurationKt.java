package kotlin.time;

import defpackage.AbstractC0690xd52c7705;
import defpackage.AbstractC0691xdc9a9f41;
import defpackage.AbstractC0975x7c3950e5;
import defpackage.AbstractC1197x89633db9;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import kotlin.time.Duration;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0007\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0007\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\t\"\u0014\u0010\n\u001a\u00020\u00008\u0000X\u0080T¢\u0006\u0006\n\u0004\b\n\u0010\u000b\"\u0014\u0010\f\u001a\u00020\u00068\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\r\"\u0014\u0010\u000e\u001a\u00020\u00068\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000e\u0010\r¨\u0006\u000f"}, d2 = {"", "Lkotlin/time/DurationUnit;", "unit", "Lkotlin/time/Duration;", "toDuration", "(ILkotlin/time/DurationUnit;)J", "", "(JLkotlin/time/DurationUnit;)J", "", "(DLkotlin/time/DurationUnit;)J", "NANOS_IN_MILLIS", "I", "MAX_NANOS", "J", "MAX_MILLIS", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1068:1\n1021#1,6:1070\n1024#1,3:1076\n1021#1,6:1079\n1021#1,6:1085\n1024#1,3:1091\n1#2:1069\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n936#1:1070,6\n970#1:1076,3\n973#1:1079,6\n976#1:1085,6\n1021#1:1091,3\n*E\n"})
/* loaded from: classes3.dex */
public final class DurationKt {
    public static final long MAX_MILLIS = 4611686018427387903L;
    public static final long MAX_NANOS = 4611686018426999999L;
    public static final int NANOS_IN_MILLIS = 1000000;

    public static final long access$durationOfNanosNormalized(long j) {
        if (-4611686018426999999L <= j && j < 4611686018427000000L) {
            return m2164x3271d0aa(j);
        }
        return Duration.m2089constructorimpl(((j / NANOS_IN_MILLIS) << 1) + 1);
    }

    public static final long access$millisToNanos(long j) {
        return j * NANOS_IN_MILLIS;
    }

    public static final long access$nanosToMillis(long j) {
        return j / NANOS_IN_MILLIS;
    }

    public static final long access$parseDuration(String str, boolean z) {
        long j;
        int i;
        char charAt;
        char charAt2;
        int i2;
        char charAt3;
        int length = str.length();
        if (length != 0) {
            Duration.Companion companion = Duration.INSTANCE;
            long m2158getZEROUwyO8pc = companion.m2158getZEROUwyO8pc();
            char charAt4 = str.charAt(0);
            int i3 = (charAt4 == '+' || charAt4 == '-') ? 1 : 0;
            boolean z2 = i3 > 0;
            boolean z3 = z2 && StringsKt__StringsKt.startsWith$default((CharSequence) str, '-', false, 2, (Object) null);
            if (length > i3) {
                char c = ':';
                char c2 = '0';
                if (str.charAt(i3) == 'P') {
                    int i4 = i3 + 1;
                    if (i4 == length) {
                        throw new IllegalArgumentException();
                    }
                    DurationUnit durationUnit = null;
                    boolean z4 = false;
                    while (i4 < length) {
                        if (str.charAt(i4) != 'T') {
                            int i5 = i4;
                            while (i5 < str.length() && ((c2 <= (charAt3 = str.charAt(i5)) && charAt3 < c) || StringsKt__StringsKt.contains$default((CharSequence) "+-.", charAt3, false, 2, (Object) null))) {
                                i5++;
                                c = ':';
                                c2 = '0';
                            }
                            Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                            String substring = str.substring(i4, i5);
                            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                            if (substring.length() != 0) {
                                int length2 = substring.length() + i4;
                                if (length2 >= 0 && length2 < str.length()) {
                                    int i6 = length2 + 1;
                                    DurationUnit durationUnitByIsoChar = AbstractC0691xdc9a9f41.durationUnitByIsoChar(str.charAt(length2), z4);
                                    if (durationUnit != null && durationUnit.compareTo(durationUnitByIsoChar) <= 0) {
                                        throw new IllegalArgumentException("Unexpected order of duration components");
                                    }
                                    int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) substring, '.', 0, false, 6, (Object) null);
                                    if (durationUnitByIsoChar == DurationUnit.SECONDS && indexOf$default > 0) {
                                        Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
                                        String substring2 = substring.substring(0, indexOf$default);
                                        Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                                        i2 = i6;
                                        long m2113plusLRDsOJo = Duration.m2113plusLRDsOJo(m2158getZEROUwyO8pc, toDuration(m2165x1378447b(substring2), durationUnitByIsoChar));
                                        Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
                                        String substring3 = substring.substring(indexOf$default);
                                        Intrinsics.checkNotNullExpressionValue(substring3, "substring(...)");
                                        m2158getZEROUwyO8pc = Duration.m2113plusLRDsOJo(m2113plusLRDsOJo, toDuration(Double.parseDouble(substring3), durationUnitByIsoChar));
                                    } else {
                                        i2 = i6;
                                        m2158getZEROUwyO8pc = Duration.m2113plusLRDsOJo(m2158getZEROUwyO8pc, toDuration(m2165x1378447b(substring), durationUnitByIsoChar));
                                    }
                                    i4 = i2;
                                    durationUnit = durationUnitByIsoChar;
                                    c = ':';
                                    c2 = '0';
                                } else {
                                    throw new IllegalArgumentException("Missing unit for value ".concat(substring));
                                }
                            } else {
                                throw new IllegalArgumentException();
                            }
                        } else {
                            if (z4 || (i4 = i4 + 1) == length) {
                                throw new IllegalArgumentException();
                            }
                            z4 = true;
                        }
                    }
                } else {
                    if (z) {
                        throw new IllegalArgumentException();
                    }
                    String str2 = "Unexpected order of duration components";
                    if (AbstractC1197x89633db9.regionMatches(str, i3, "Infinity", 0, Math.max(length - i3, 8), true)) {
                        m2158getZEROUwyO8pc = companion.m2156getINFINITEUwyO8pc();
                    } else {
                        boolean z5 = !z2;
                        if (z2 && str.charAt(i3) == '(' && StringsKt___StringsKt.last(str) == ')') {
                            i3++;
                            length--;
                            if (i3 == length) {
                                throw new IllegalArgumentException("No components");
                            }
                            j = m2158getZEROUwyO8pc;
                            z5 = true;
                        } else {
                            j = m2158getZEROUwyO8pc;
                        }
                        DurationUnit durationUnit2 = null;
                        boolean z6 = false;
                        while (i3 < length) {
                            if (z6 && z5) {
                                while (i3 < str.length() && str.charAt(i3) == ' ') {
                                    i3++;
                                }
                            }
                            int i7 = i3;
                            while (i7 < str.length() && (('0' <= (charAt2 = str.charAt(i7)) && charAt2 < ':') || charAt2 == '.')) {
                                i7++;
                            }
                            Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                            String substring4 = str.substring(i3, i7);
                            Intrinsics.checkNotNullExpressionValue(substring4, "substring(...)");
                            if (substring4.length() != 0) {
                                int length3 = substring4.length() + i3;
                                int i8 = length3;
                                while (i8 < str.length() && 'a' <= (charAt = str.charAt(i8)) && charAt < '{') {
                                    i8++;
                                }
                                Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                                String substring5 = str.substring(length3, i8);
                                Intrinsics.checkNotNullExpressionValue(substring5, "substring(...)");
                                int length4 = substring5.length() + length3;
                                DurationUnit durationUnitByShortName = AbstractC0691xdc9a9f41.durationUnitByShortName(substring5);
                                if (durationUnit2 != null && durationUnit2.compareTo(durationUnitByShortName) <= 0) {
                                    throw new IllegalArgumentException(str2);
                                }
                                String str3 = str2;
                                int indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) substring4, '.', 0, false, 6, (Object) null);
                                if (indexOf$default2 > 0) {
                                    Intrinsics.checkNotNull(substring4, "null cannot be cast to non-null type java.lang.String");
                                    String substring6 = substring4.substring(0, indexOf$default2);
                                    Intrinsics.checkNotNullExpressionValue(substring6, "substring(...)");
                                    long m2113plusLRDsOJo2 = Duration.m2113plusLRDsOJo(j, toDuration(Long.parseLong(substring6), durationUnitByShortName));
                                    Intrinsics.checkNotNull(substring4, "null cannot be cast to non-null type java.lang.String");
                                    String substring7 = substring4.substring(indexOf$default2);
                                    Intrinsics.checkNotNullExpressionValue(substring7, "substring(...)");
                                    j = Duration.m2113plusLRDsOJo(m2113plusLRDsOJo2, toDuration(Double.parseDouble(substring7), durationUnitByShortName));
                                    i = length4;
                                    if (i < length) {
                                        throw new IllegalArgumentException("Fractional component must be last");
                                    }
                                } else {
                                    i = length4;
                                    j = Duration.m2113plusLRDsOJo(j, toDuration(Long.parseLong(substring4), durationUnitByShortName));
                                }
                                str2 = str3;
                                durationUnit2 = durationUnitByShortName;
                                i3 = i;
                                z6 = true;
                            } else {
                                throw new IllegalArgumentException();
                            }
                        }
                        m2158getZEROUwyO8pc = j;
                    }
                }
                return z3 ? Duration.m2128unaryMinusUwyO8pc(m2158getZEROUwyO8pc) : m2158getZEROUwyO8pc;
            }
            throw new IllegalArgumentException("No components");
        }
        throw new IllegalArgumentException("The string is empty");
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalTime.class})
    public static final long toDuration(int i, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (unit.compareTo(DurationUnit.SECONDS) <= 0) {
            return m2164x3271d0aa(AbstractC0690xd52c7705.convertDurationUnitOverflow(i, unit, DurationUnit.NANOSECONDS));
        }
        return toDuration(i, unit);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static final long m2163xfbe0c504(long j) {
        if (-4611686018426L <= j && j < 4611686018427L) {
            return m2164x3271d0aa(j * NANOS_IN_MILLIS);
        }
        return Duration.m2089constructorimpl((AbstractC0296x1378447b.coerceIn(j, -4611686018427387903L, MAX_MILLIS) << 1) + 1);
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static final long m2164x3271d0aa(long j) {
        return Duration.m2089constructorimpl(j << 1);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static final long m2165x1378447b(String str) {
        int i;
        char charAt;
        int length = str.length();
        if (length > 0 && StringsKt__StringsKt.contains$default((CharSequence) "+-", str.charAt(0), false, 2, (Object) null)) {
            i = 1;
        } else {
            i = 0;
        }
        if (length - i > 16) {
            int i2 = i;
            while (true) {
                if (i < length) {
                    char charAt2 = str.charAt(i);
                    if (charAt2 == '0') {
                        if (i2 == i) {
                            i2++;
                        }
                    } else if ('1' > charAt2 || charAt2 >= ':') {
                        break;
                    }
                    i++;
                } else if (length - i2 > 16) {
                    if (str.charAt(0) == '-') {
                        return Long.MIN_VALUE;
                    }
                    return Long.MAX_VALUE;
                }
            }
        }
        if (AbstractC1197x89633db9.startsWith$default(str, "+", false, 2, null) && length > 1 && '0' <= (charAt = str.charAt(1)) && charAt < ':') {
            str = StringsKt___StringsKt.drop(str, 1);
        }
        return Long.parseLong(str);
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalTime.class})
    public static final long toDuration(long j, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        DurationUnit durationUnit = DurationUnit.NANOSECONDS;
        long convertDurationUnitOverflow = AbstractC0690xd52c7705.convertDurationUnitOverflow(MAX_NANOS, durationUnit, unit);
        if ((-convertDurationUnitOverflow) <= j && j <= convertDurationUnitOverflow) {
            return m2164x3271d0aa(AbstractC0690xd52c7705.convertDurationUnitOverflow(j, unit, durationUnit));
        }
        return Duration.m2089constructorimpl((AbstractC0296x1378447b.coerceIn(AbstractC0690xd52c7705.convertDurationUnit(j, unit, DurationUnit.MILLISECONDS), -4611686018427387903L, MAX_MILLIS) << 1) + 1);
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalTime.class})
    public static final long toDuration(double d, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        double convertDurationUnit = AbstractC0690xd52c7705.convertDurationUnit(d, unit, DurationUnit.NANOSECONDS);
        if (!Double.isNaN(convertDurationUnit)) {
            long roundToLong = AbstractC0975x7c3950e5.roundToLong(convertDurationUnit);
            if (-4611686018426999999L <= roundToLong && roundToLong < 4611686018427000000L) {
                return m2164x3271d0aa(roundToLong);
            }
            return m2163xfbe0c504(AbstractC0975x7c3950e5.roundToLong(AbstractC0690xd52c7705.convertDurationUnit(d, unit, DurationUnit.MILLISECONDS)));
        }
        throw new IllegalArgumentException("Duration value cannot be NaN.");
    }
}
