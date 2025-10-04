package defpackage;

import java.util.Iterator;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 됴뒀듔둑땩듸뎽뎽뎬돛둬딨땅되땨땸돼돳뒛되둬딅듻둔딟뒨땲둘땭뒷듐땝둔땤땝땅딞듼돸뒻땭뒐딄뒙땀땧땱뎸듌돰뒤뎸듼든뒛땋땄땻땣땝땵뎬되된듸딞뒬듟뒤땍뎰뒙땝땤뒋됨땹뒨듌듼땁됨땤둔땣땅됴땟돴돴뒐딻땍돠뒐둬딎땝땯듽돶돸돶듰땵뒋됩돴듬땃땸땱됨듽딄두땪도땃땁듸둑땳듰땵돷두땔딝땮, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0588xebfdace5 extends CollectionsKt__IteratorsJVMKt {
    public static final <T> void forEach(@NotNull Iterator<? extends T> it, @NotNull Function1<? super T, Unit> operation) {
        Intrinsics.checkNotNullParameter(it, "<this>");
        Intrinsics.checkNotNullParameter(operation, "operation");
        while (it.hasNext()) {
            operation.invoke(it.next());
        }
    }

    @NotNull
    public static final <T> Iterator<IndexedValue<T>> withIndex(@NotNull Iterator<? extends T> it) {
        Intrinsics.checkNotNullParameter(it, "<this>");
        return new IndexingIterator(it);
    }
}
