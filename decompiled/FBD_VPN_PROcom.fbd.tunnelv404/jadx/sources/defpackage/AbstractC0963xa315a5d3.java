package defpackage;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 디딁돰듟땲땰딤땃땁땟뒤땃듌될들득딠딟뎰땐뎰땃땍돷돰듸도뎠땣듬땅뒙딠땰땵된딤땳뎨들땪듌디딌땁딸땧들땪딤뒨듰뒵따돳땯땡드뒾땋듰뒐뎨딜둑듰땧드땀땻둘땧됩둣듻땳듌땔땯들땪뒤땧듐땰딝뒛듟땣듸들됨될땨둥땬뒾딞됐딀땧뎹드뎰뒝땤돴뎻땱뎨땃뒾땀땩듟땀듬듻딻뒋뒹든땐둬땱디듐땣땧듔, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0963xa315a5d3 extends AbstractC0962xa4a1ff52 {
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final /* synthetic */ <K, V, R extends Comparable<? super R>> Map.Entry<K, V> minBy(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        Map.Entry<K, V> entry;
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(selector, "selector");
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            entry = null;
        } else {
            Map.Entry<K, V> entry2 = (Object) it.next();
            if (it.hasNext()) {
                R invoke = selector.invoke(entry2);
                do {
                    Map.Entry<K, V> entry3 = (Object) it.next();
                    R invoke2 = selector.invoke(entry3);
                    if (invoke.compareTo(invoke2) > 0) {
                        entry2 = entry3;
                        invoke = invoke2;
                    }
                } while (it.hasNext());
            }
            entry = entry2;
        }
        return entry;
    }

    @Deprecated(message = "Use minWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final /* synthetic */ Map.Entry minWith(Map map, Comparator comparator) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return (Map.Entry) CollectionsKt___CollectionsKt.minWithOrNull(map.entrySet(), comparator);
    }
}
