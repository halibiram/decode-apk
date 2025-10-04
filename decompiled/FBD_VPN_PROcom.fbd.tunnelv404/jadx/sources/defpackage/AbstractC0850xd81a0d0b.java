package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.SinceKotlin;
import kotlin.collections.Grouping;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 듬딃뒐듼뒨돳땩뎽뒈됴되딻딞땀땐딎듨듔돠딌땣듼됫뎽땦돷뒐둠듨뒝땅땄되땪땭딅땯듌땲딨딹땮딝뒷땀딜뎰땭돼돸딟드땃됐돛딅됐둣돠땲돵뒷딨듻돰둘뎰둬뒝돰딻듰된땄듻땝둘땩딅돝뒘땣돼돰땀딌뎠땻듬듔뎰땔듻땪뎰듌딄딤둘듼뎬듨둠들듼돶땔듰땵딝드든땠딄땻뒙딎뒀딹됩뒙땀땣땲둑땦둥됐땭뒤, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0850xd81a0d0b {
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K> Map<K, Integer> eachCount(@NotNull Grouping<T, ? extends K> grouping) {
        boolean z;
        Intrinsics.checkNotNullParameter(grouping, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            K keyOf = grouping.keyOf(sourceIterator.next());
            Object obj = linkedHashMap.get(keyOf);
            if (obj == null && !linkedHashMap.containsKey(keyOf)) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                obj = new Ref.IntRef();
            }
            Ref.IntRef intRef = (Ref.IntRef) obj;
            intRef.element++;
            linkedHashMap.put(keyOf, intRef);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Intrinsics.checkNotNull(entry, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K of kotlin.collections.GroupingKt__GroupingJVMKt.mapValuesInPlace, R of kotlin.collections.GroupingKt__GroupingJVMKt.mapValuesInPlace>");
            TypeIntrinsics.asMutableMapEntry(entry).setValue(Integer.valueOf(((Ref.IntRef) entry.getValue()).element));
        }
        return TypeIntrinsics.asMutableMap(linkedHashMap);
    }
}
