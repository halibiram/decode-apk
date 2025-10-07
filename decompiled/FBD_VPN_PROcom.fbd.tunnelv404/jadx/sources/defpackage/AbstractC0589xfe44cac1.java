package defpackage;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 됴뒉듌땁땡딐둑딌뒷땲딐돶돠뒻땭땍돸땟둡딽뒬딀들땲둡땻들땩딹듐땤둘딤뒛돳든듻땩뒵땅뎠뒋뎹딻뎰딜땐뎹드딠딁디땯됫뎽됩땥듰딤땧돝뎠딅들둣뎻돛돴돛듼땍될듨될딅땟땻땣딃디딄뒻따뎹땧듸뎽딟딌뒝뒙땩듼된땵땦디듰됩돶돼땐땝땻도땱딁드듽돼돴도돼돠돷둠딎둣딌둥뒨돴돷둔둡땩땩뒤드뎽, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0589xfe44cac1 extends AbstractC0588xebfdace5 {
    public static <T extends Comparable<? super T>> void sort(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    public static <T> void sortWith(@NotNull List<T> list, @NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }
}
