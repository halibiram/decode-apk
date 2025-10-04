package defpackage;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;

/* renamed from: 됴뒝듽돸땥땦땁땄땸두땵딌땁둡뎹뎠듨딻딀뎠돴되땅둑듸땄듌딻됩뒨뎨들뒋뒝땱뎨뒉땵득딹드땩둣돼둠땭딃듨뒐딃땝딻듼뎸돠땠땔듌땥뒾딅땲뒀둑뎽뒬돨땵둔뒀될디딹두뒉땜뒐딻듽뎽땔돷돠땡딜뎰딞됩땐딄땨땅뎻듽딟땹됩뒵둬듔디둬뒨듟뎠딝뒈드따됫돼둬딞듌땡땪돝땱딁땟땮땲듌땜듻뒙듌돰돶돝, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0591xb3732c82 extends AbstractC0590xf7db57e6 {
    public static final int access$reverseElementIndex(List list, int i) {
        if (i >= 0 && i <= CollectionsKt__CollectionsKt.getLastIndex(list)) {
            return CollectionsKt__CollectionsKt.getLastIndex(list) - i;
        }
        StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Element index ", " must be in range [");
        m2939xab142723.append(new IntRange(0, CollectionsKt__CollectionsKt.getLastIndex(list)));
        m2939xab142723.append("].");
        throw new IndexOutOfBoundsException(m2939xab142723.toString());
    }

    public static final int access$reverseIteratorIndex(List list, int i) {
        return CollectionsKt__CollectionsKt.getLastIndex(list) - i;
    }

    public static final int access$reversePositionIndex(List list, int i) {
        if (i >= 0 && i <= list.size()) {
            return list.size() - i;
        }
        StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Position index ", " must be in range [");
        m2939xab142723.append(new IntRange(0, list.size()));
        m2939xab142723.append("].");
        throw new IndexOutOfBoundsException(m2939xab142723.toString());
    }

    @NotNull
    public static final <T> List<T> asReversed(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return new C1096x3fb8113d(list);
    }

    @JvmName(name = "asReversedMutable")
    @NotNull
    public static final <T> List<T> asReversedMutable(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return new C1095xc103487b(list);
    }
}
