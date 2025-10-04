package defpackage;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 땥땪뒤뒬둠뒤뒤땀땍돳땫됐따득딠딄땰될돝땝뒈듌돳득됩땝따땜됫땡돸땝뒛듨돰됩딎뎨땅뒀딐돨땡따뒀땠뒼땻딜뒘뒈뎡든뎡딅땨돨땮뒛될뒼됩둥땄딤땻땣됫딌듬됨땣땁둠땨땦될돳뒤뒈딐뎰땮둠듸땨뒨돰딌뒹땯돵듔땻돼땲땹땪뒝듨됫듔땬땀둥둣딄땭뒙뎡듽땩땝됨뒼듔뒵됐듌뒬땤둡땡뒋딄돸뎡딄땝돷, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1194xeb5ee5a5 extends AbstractC1193x83d39fb5 {
    @NotNull
    public static final StringBuilder append(@NotNull StringBuilder sb, @NotNull String... value) {
        Intrinsics.checkNotNullParameter(sb, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        for (String str : value) {
            sb.append(str);
        }
        return sb;
    }

    @NotNull
    public static final StringBuilder append(@NotNull StringBuilder sb, @NotNull Object... value) {
        Intrinsics.checkNotNullParameter(sb, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        for (Object obj : value) {
            sb.append(obj);
        }
        return sb;
    }
}
