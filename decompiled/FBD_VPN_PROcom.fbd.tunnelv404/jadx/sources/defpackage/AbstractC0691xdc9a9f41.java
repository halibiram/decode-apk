package defpackage;

import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationUnit;
import kotlin.time.DurationUnitKt__DurationUnitKt$WhenMappings;
import org.jetbrains.annotations.NotNull;

/* renamed from: 뒘땄듟뎸됫듔돴된딸되둬딎둥듸딎땤땫듨둔뎸땧딌뎰땳딠뒾둠돠될듰땱땰딟따딞돰딹돵돛뒐둘뒘든땔도땬땍딁땅돛뒀됨둘될듟뒷뒐땋될둣돵돤돸돼땄들듻딞땟돳디둘딀뒉돰돠땀뎸득돛딽땦땍됫듼땯땠뒙듌뎨딎됐둣뒬딤뎽뒼땐둡돸땭돴뒵듼득땧땐됨딻둔뒤뒻둑땲땟듐됨뎸뒻듟땥딟됫땬땦땪둣딐든듽, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0691xdc9a9f41 extends AbstractC0690xd52c7705 {
    @SinceKotlin(version = "1.5")
    @NotNull
    public static final DurationUnit durationUnitByIsoChar(char c, boolean z) {
        if (!z) {
            if (c == 'D') {
                return DurationUnit.DAYS;
            }
            throw new IllegalArgumentException("Invalid or unsupported duration ISO non-time unit: " + c);
        }
        if (c != 'H') {
            if (c != 'M') {
                if (c == 'S') {
                    return DurationUnit.SECONDS;
                }
                throw new IllegalArgumentException("Invalid duration ISO time unit: " + c);
            }
            return DurationUnit.MINUTES;
        }
        return DurationUnit.HOURS;
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    public static final DurationUnit durationUnitByShortName(@NotNull String shortName) {
        Intrinsics.checkNotNullParameter(shortName, "shortName");
        int hashCode = shortName.hashCode();
        if (hashCode != 100) {
            if (hashCode != 104) {
                if (hashCode != 109) {
                    if (hashCode != 115) {
                        if (hashCode != 3494) {
                            if (hashCode != 3525) {
                                if (hashCode == 3742 && shortName.equals("us")) {
                                    return DurationUnit.MICROSECONDS;
                                }
                            } else if (shortName.equals("ns")) {
                                return DurationUnit.NANOSECONDS;
                            }
                        } else if (shortName.equals("ms")) {
                            return DurationUnit.MILLISECONDS;
                        }
                    } else if (shortName.equals("s")) {
                        return DurationUnit.SECONDS;
                    }
                } else if (shortName.equals("m")) {
                    return DurationUnit.MINUTES;
                }
            } else if (shortName.equals("h")) {
                return DurationUnit.HOURS;
            }
        } else if (shortName.equals("d")) {
            return DurationUnit.DAYS;
        }
        throw new IllegalArgumentException("Unknown duration unit short name: ".concat(shortName));
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final String shortName(@NotNull DurationUnit durationUnit) {
        Intrinsics.checkNotNullParameter(durationUnit, "<this>");
        switch (DurationUnitKt__DurationUnitKt$WhenMappings.$EnumSwitchMapping$0[durationUnit.ordinal()]) {
            case 1:
                return "ns";
            case 2:
                return "us";
            case 3:
                return "ms";
            case 4:
                return "s";
            case 5:
                return "m";
            case 6:
                return "h";
            case 7:
                return "d";
            default:
                throw new IllegalStateException(("Unknown unit: " + durationUnit).toString());
        }
    }
}
