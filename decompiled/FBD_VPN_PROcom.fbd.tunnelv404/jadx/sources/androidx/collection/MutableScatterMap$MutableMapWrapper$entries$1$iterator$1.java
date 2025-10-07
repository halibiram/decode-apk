package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0892xc141c517;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [V, K] */
@Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0010)\n\u0002\u0010'\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010(\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u0096\u0002J\u0015\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR,\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0014"}, d2 = {"androidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1", "", "", "current", "", "getCurrent", "()I", "setCurrent", "(I)V", "iterator", "", "getIterator", "()Ljava/util/Iterator;", "setIterator", "(Ljava/util/Iterator;)V", "hasNext", "", "next", "remove", "", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MutableScatterMap$MutableMapWrapper$entries$1$iterator$1<K, V> implements Iterator<Map.Entry<K, V>>, KMutableIterator {
    private int current = -1;

    @NotNull
    private Iterator<? extends Map.Entry<K, V>> iterator;
    final /* synthetic */ MutableScatterMap<K, V> this$0;

    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010'\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00050\u0004H\u008a@"}, d2 = {"<anonymous>", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/sequences/SequenceScope;", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.collection.MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1", f = "ScatterMap.kt", i = {0, 0, 0, 0, 0, 0, 0}, l = {1328}, m = "invokeSuspend", n = {"$this$iterator", "m$iv", "lastIndex$iv", "i$iv", "slot$iv", "bitCount$iv", "j$iv"}, s = {"L$0", "L$3", "I$0", "I$1", "J$0", "I$2", "I$3"})
    @SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1850:1\n363#2,6:1851\n373#2,3:1858\n376#2,9:1862\n1826#3:1857\n1688#3:1861\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1\n*L\n1326#1:1851,6\n1326#1:1858,3\n1326#1:1862,9\n1326#1:1857\n1326#1:1861\n*E\n"})
    /* renamed from: androidx.collection.MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Map.Entry<K, V>>, Continuation<? super Unit>, Object> {
        int I$0;
        int I$1;
        int I$2;
        int I$3;
        long J$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final /* synthetic */ MutableScatterMap<K, V> this$0;
        final /* synthetic */ MutableScatterMap$MutableMapWrapper$entries$1$iterator$1 this$1;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MutableScatterMap mutableScatterMap, MutableScatterMap$MutableMapWrapper$entries$1$iterator$1 mutableScatterMap$MutableMapWrapper$entries$1$iterator$1, Continuation continuation) {
            super(2, continuation);
            this.this$0 = mutableScatterMap;
            this.this$1 = mutableScatterMap$MutableMapWrapper$entries$1$iterator$1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.this$1, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x00b2  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00c2  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0072  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x00a7 -> B:5:0x00aa). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x00ad -> B:6:0x00ae). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x005a -> B:7:0x0070). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00bf -> B:18:0x00c0). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            SequenceScope sequenceScope;
            MutableScatterMap<K, V> mutableScatterMap;
            MutableScatterMap$MutableMapWrapper$entries$1$iterator$1 mutableScatterMap$MutableMapWrapper$entries$1$iterator$1;
            long[] jArr;
            int length;
            int i;
            long j;
            Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
            int i2 = this.label;
            int i3 = 8;
            if (i2 != 0) {
                if (i2 == 1) {
                    int i4 = this.I$3;
                    int i5 = this.I$2;
                    long j2 = this.J$0;
                    int i6 = this.I$1;
                    int i7 = this.I$0;
                    long[] jArr2 = (long[]) this.L$3;
                    MutableScatterMap<K, V> mutableScatterMap2 = (MutableScatterMap) this.L$2;
                    MutableScatterMap$MutableMapWrapper$entries$1$iterator$1 mutableScatterMap$MutableMapWrapper$entries$1$iterator$12 = (MutableScatterMap$MutableMapWrapper$entries$1$iterator$1) this.L$1;
                    SequenceScope sequenceScope2 = (SequenceScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    int i8 = 1;
                    i3 = 8;
                    j2 >>= i3;
                    i4 += i8;
                    if (i4 < i5) {
                        if (i5 == i3) {
                            jArr = jArr2;
                            mutableScatterMap = mutableScatterMap2;
                            mutableScatterMap$MutableMapWrapper$entries$1$iterator$1 = mutableScatterMap$MutableMapWrapper$entries$1$iterator$12;
                            sequenceScope = sequenceScope2;
                            int i9 = i7;
                            i = i6;
                            length = i9;
                            if (i != length) {
                                i++;
                                j = jArr[i];
                                if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                                    sequenceScope2 = sequenceScope;
                                    i4 = 0;
                                    mutableScatterMap2 = mutableScatterMap;
                                    jArr2 = jArr;
                                    i5 = 8 - ((~(i - length)) >>> 31);
                                    mutableScatterMap$MutableMapWrapper$entries$1$iterator$12 = mutableScatterMap$MutableMapWrapper$entries$1$iterator$1;
                                    j2 = j;
                                    int i10 = i;
                                    i7 = length;
                                    i6 = i10;
                                    if (i4 < i5) {
                                        if ((255 & j2) < 128) {
                                            mutableScatterMap$MutableMapWrapper$entries$1$iterator$12.setCurrent((i6 << 3) + i4);
                                            MutableMapEntry mutableMapEntry = new MutableMapEntry(mutableScatterMap2.keys, mutableScatterMap2.values, mutableScatterMap$MutableMapWrapper$entries$1$iterator$12.getCurrent());
                                            this.L$0 = sequenceScope2;
                                            this.L$1 = mutableScatterMap$MutableMapWrapper$entries$1$iterator$12;
                                            this.L$2 = mutableScatterMap2;
                                            this.L$3 = jArr2;
                                            this.I$0 = i7;
                                            this.I$1 = i6;
                                            this.J$0 = j2;
                                            this.I$2 = i5;
                                            this.I$3 = i4;
                                            i8 = 1;
                                            this.label = 1;
                                            if (sequenceScope2.yield(mutableMapEntry, this) == coroutine_suspended) {
                                                return coroutine_suspended;
                                            }
                                            i3 = 8;
                                            j2 >>= i3;
                                            i4 += i8;
                                            if (i4 < i5) {
                                            }
                                        } else {
                                            i8 = 1;
                                            j2 >>= i3;
                                            i4 += i8;
                                            if (i4 < i5) {
                                            }
                                        }
                                    }
                                } else if (i != length) {
                                }
                            }
                        }
                        return Unit.INSTANCE;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                sequenceScope = (SequenceScope) this.L$0;
                mutableScatterMap = this.this$0;
                mutableScatterMap$MutableMapWrapper$entries$1$iterator$1 = this.this$1;
                jArr = mutableScatterMap.metadata;
                length = jArr.length - 2;
                if (length >= 0) {
                    i = 0;
                    j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                    }
                }
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SequenceScope<? super Map.Entry<K, V>> sequenceScope, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    public MutableScatterMap$MutableMapWrapper$entries$1$iterator$1(MutableScatterMap<K, V> mutableScatterMap) {
        this.this$0 = mutableScatterMap;
        this.iterator = SequencesKt__SequenceBuilderKt.iterator(new AnonymousClass1(mutableScatterMap, this, null));
    }

    public final int getCurrent() {
        return this.current;
    }

    @NotNull
    public final Iterator<Map.Entry<K, V>> getIterator() {
        return this.iterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.iterator.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        int i = this.current;
        if (i != -1) {
            this.this$0.removeValueAt(i);
            this.current = -1;
        }
    }

    public final void setCurrent(int i) {
        this.current = i;
    }

    public final void setIterator(@NotNull Iterator<? extends Map.Entry<K, V>> it) {
        Intrinsics.checkNotNullParameter(it, "<set-?>");
        this.iterator = it;
    }

    @Override // java.util.Iterator
    @NotNull
    public Map.Entry<K, V> next() {
        return this.iterator.next();
    }
}
