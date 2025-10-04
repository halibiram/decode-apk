package okhttp3.internal.idn;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0005H\u0086\bø\u0001\u0000\u001a\u0014\u0010\u0006\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {"binarySearch", "", "position", "limit", "compare", "Lkotlin/Function1;", "read14BitInt", "", "index", "okhttp"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class IdnaMappingTableKt {
    public static final int binarySearch(int i, int i2, @NotNull Function1<? super Integer, Integer> compare) {
        Intrinsics.checkNotNullParameter(compare, "compare");
        int i3 = i2 - 1;
        while (i <= i3) {
            int i4 = (i + i3) / 2;
            int intValue = compare.invoke(Integer.valueOf(i4)).intValue();
            if (intValue < 0) {
                i3 = i4 - 1;
            } else if (intValue > 0) {
                i = i4 + 1;
            } else {
                return i4;
            }
        }
        return (-i) - 1;
    }

    public static final int read14BitInt(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        char charAt = str.charAt(i);
        return (charAt << 7) + str.charAt(i + 1);
    }
}
