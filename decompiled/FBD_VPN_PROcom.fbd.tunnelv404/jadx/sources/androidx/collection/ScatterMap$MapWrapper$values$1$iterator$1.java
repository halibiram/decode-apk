package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequenceScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [V] */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"}, d2 = {"<anonymous>", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/sequences/SequenceScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.collection.ScatterMap$MapWrapper$values$1$iterator$1", f = "ScatterMap.kt", i = {0, 0, 0, 0, 0, 0, 0, 0}, l = {744}, m = "invokeSuspend", n = {"$this$iterator", "v$iv", "m$iv$iv", "lastIndex$iv$iv", "i$iv$iv", "slot$iv$iv", "bitCount$iv$iv", "j$iv$iv"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "J$0", "I$2", "I$3"})
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMap$MapWrapper$values$1$iterator$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1850:1\n418#2,3:1851\n363#2,6:1854\n373#2,3:1861\n376#2,2:1865\n422#2,2:1867\n379#2,6:1869\n424#2:1875\n1826#3:1860\n1688#3:1864\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMap$MapWrapper$values$1$iterator$1\n*L\n743#1:1851,3\n743#1:1854,6\n743#1:1861,3\n743#1:1865,2\n743#1:1867,2\n743#1:1869,6\n743#1:1875\n743#1:1860\n743#1:1864\n*E\n"})
/* loaded from: classes.dex */
public final class ScatterMap$MapWrapper$values$1$iterator$1<V> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super V>, Continuation<? super Unit>, Object> {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ ScatterMap<K, V> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScatterMap$MapWrapper$values$1$iterator$1(ScatterMap<K, V> scatterMap, Continuation<? super ScatterMap$MapWrapper$values$1$iterator$1> continuation) {
        super(2, continuation);
        this.this$0 = scatterMap;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ScatterMap$MapWrapper$values$1$iterator$1 scatterMap$MapWrapper$values$1$iterator$1 = new ScatterMap$MapWrapper$values$1$iterator$1(this.this$0, continuation);
        scatterMap$MapWrapper$values$1$iterator$1.L$0 = obj;
        return scatterMap$MapWrapper$values$1$iterator$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0068  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x008c -> B:5:0x008f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0053 -> B:15:0x0098). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0055 -> B:6:0x0066). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x006f -> B:5:0x008f). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(@NotNull Object obj) {
        SequenceScope sequenceScope;
        Object[] objArr;
        long[] jArr;
        int length;
        int i;
        long j;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        if (i2 != 0) {
            if (i2 == 1) {
                int i3 = this.I$3;
                int i4 = this.I$2;
                long j2 = this.J$0;
                i = this.I$1;
                int i5 = this.I$0;
                long[] jArr2 = (long[]) this.L$2;
                Object[] objArr2 = (Object[]) this.L$1;
                SequenceScope sequenceScope2 = (SequenceScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                j2 >>= 8;
                i3++;
                if (i3 < i4) {
                    if (i4 == 8) {
                        length = i5;
                        jArr = jArr2;
                        objArr = objArr2;
                        sequenceScope = sequenceScope2;
                        if (i != length) {
                            i++;
                            j = jArr[i];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                sequenceScope2 = sequenceScope;
                                i3 = 0;
                                jArr2 = jArr;
                                i5 = length;
                                i4 = 8 - ((~(i - length)) >>> 31);
                                objArr2 = objArr;
                                j2 = j;
                                if (i3 < i4) {
                                    if ((255 & j2) < 128) {
                                        Object obj2 = objArr2[(i << 3) + i3];
                                        this.L$0 = sequenceScope2;
                                        this.L$1 = objArr2;
                                        this.L$2 = jArr2;
                                        this.I$0 = i5;
                                        this.I$1 = i;
                                        this.J$0 = j2;
                                        this.I$2 = i4;
                                        this.I$3 = i3;
                                        this.label = 1;
                                        if (sequenceScope2.yield(obj2, this) == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                    }
                                    j2 >>= 8;
                                    i3++;
                                    if (i3 < i4) {
                                    }
                                }
                            }
                            if (i != length) {
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
            ScatterMap<K, V> scatterMap = this.this$0;
            objArr = scatterMap.values;
            jArr = scatterMap.metadata;
            length = jArr.length - 2;
            if (length >= 0) {
                i = 0;
                j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                }
                if (i != length) {
                }
            }
            return Unit.INSTANCE;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull SequenceScope<? super V> sequenceScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ScatterMap$MapWrapper$values$1$iterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
