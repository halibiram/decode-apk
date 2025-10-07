package defpackage;

import kotlin.ExperimentalStdlibApi;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.text.AbstractC0298xfbe0c504;
import kotlin.text._OneToManyTitlecaseMappingsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: 됫뒻땜땨땤둔뒛땜뎠딃딀둑뒈뒘땤땅땤듻도딅됐두뎬땔딁든들딝땻땭뒝듽땁땳둥된돛땭둔됴디뒉돼땋됫땣둔듐뎬딌딟들듼땠뎽땬땝듼둑땀뒀딞뒙둠땹도뒙듽땀될뎸듽뒬되딞딹땝땅됩돳땰듽둣딄됨딽땨땝돷땹돛둥듐득딃뎽딀뒋뒝돨땁둥드땸둔될뎨땅됩돤땍땳둡듸뒾땨딸됨딻뒻뒛따땋둡뒘딃뒵됫됩땅, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0576x6ced6b extends AbstractC0298xfbe0c504 {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final char digitToChar(int i) {
        if (i < 0 || i >= 10) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Int ", " is not a decimal digit"));
        }
        return (char) (i + 48);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final int digitToInt(char c) {
        int digitOf = AbstractC0298xfbe0c504.digitOf(c, 10);
        if (digitOf >= 0) {
            return digitOf;
        }
        throw new IllegalArgumentException("Char " + c + " is not a decimal digit");
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @Nullable
    public static final Integer digitToIntOrNull(char c) {
        Integer valueOf = Integer.valueOf(AbstractC0298xfbe0c504.digitOf(c, 10));
        if (valueOf.intValue() >= 0) {
            return valueOf;
        }
        return null;
    }

    public static final boolean equals(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (!z) {
            return false;
        }
        char upperCase = Character.toUpperCase(c);
        char upperCase2 = Character.toUpperCase(c2);
        if (upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2)) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ boolean equals$default(char c, char c2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return equals(c, c2, z);
    }

    public static boolean isSurrogate(char c) {
        if (55296 > c || c >= 57344) {
            return false;
        }
        return true;
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    public static final String titlecase(char c) {
        return _OneToManyTitlecaseMappingsKt.titlecaseImpl(c);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @Nullable
    public static final Integer digitToIntOrNull(char c, int i) {
        AbstractC0298xfbe0c504.checkRadix(i);
        Integer valueOf = Integer.valueOf(AbstractC0298xfbe0c504.digitOf(c, i));
        if (valueOf.intValue() >= 0) {
            return valueOf;
        }
        return null;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final int digitToInt(char c, int i) {
        Integer digitToIntOrNull = digitToIntOrNull(c, i);
        if (digitToIntOrNull != null) {
            return digitToIntOrNull.intValue();
        }
        throw new IllegalArgumentException("Char " + c + " is not a digit in the given radix=" + i);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final char digitToChar(int i, int i2) {
        if (2 > i2 || i2 >= 37) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i2, "Invalid radix: ", ". Valid radix values are in range 2..36"));
        }
        if (i < 0 || i >= i2) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3329x34271fae(i, i2, "Digit ", " does not represent a valid digit in radix "));
        }
        return (char) (i < 10 ? i + 48 : ((char) (i + 65)) - '\n');
    }
}
