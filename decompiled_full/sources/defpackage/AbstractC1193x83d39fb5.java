package defpackage;

import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 땥땝뒾듟되땀듨둠뒀땫돷됩되듸뒼둡땸돤듼둠듌뒉돴땲돼뒋듻딽땟땸돶딜땩땯됩돸땡돤땟돨뒋돴돼뒼딠뒐땩땮뒹도듬뒀땋땧딞땬뒷땐딎딜뎸돨땬들드됨두땍디땥돼뒋듼땮뎸돤둥뒬땱됨뒾뒐뒼된뒬뒼딀땸딤뒨듌땥뒋돠둣뒀땤돤땋듌땁됨딟땵듟땋듔됨된됴땍듽땱땄듟뎻득땳딄딤뒀뒬듐뎻돷든딤듬돼땣, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1193x83d39fb5 extends AbstractC1192x185baab5 {
    @Deprecated(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.4")
    @NotNull
    public static final Appendable appendln(@NotNull Appendable appendable) {
        Intrinsics.checkNotNullParameter(appendable, "<this>");
        Appendable append = appendable.append(AbstractC1221x6bcd221.f5626xfbe0c504);
        Intrinsics.checkNotNullExpressionValue(append, "append(...)");
        return append;
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final StringBuilder clear(@NotNull StringBuilder sb) {
        Intrinsics.checkNotNullParameter(sb, "<this>");
        sb.setLength(0);
        return sb;
    }

    @Deprecated(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.4")
    @NotNull
    public static final StringBuilder appendln(@NotNull StringBuilder sb) {
        Intrinsics.checkNotNullParameter(sb, "<this>");
        sb.append(AbstractC1221x6bcd221.f5626xfbe0c504);
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        return sb;
    }
}
