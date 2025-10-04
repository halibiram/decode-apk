package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u001ai\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0000*\u00028\u00002\u0006\u0010\u0003\u001a\u00020\u000226\u0010\b\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00028\u00000\u0004H\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a#\u0010\u000e\u001a\u00028\u0000\"\u000e\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\f*\u00028\u0000H\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a?\u0010\u0017\u001a\u00020\u0015*\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00112!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0082\b¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/internal/Segment;", ExifInterface.LATITUDE_SOUTH, "", "id", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "prev", "createNewSegment", "Lkotlinx/coroutines/internal/SegmentOrClosed;", "findSegmentInternal", "(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "N", "close", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "Lkotlinx/atomicfu/AtomicInt;", "", "delta", "Lkotlin/Function1;", "cur", "", "condition", "addConditionally", "(Lkotlinx/atomicfu/AtomicInt;ILkotlin/jvm/functions/Function1;)Z", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n1#1,265:1\n42#1,8:280\n103#2,7:266\n103#2,7:273\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n70#1:280,8\n23#1:266,7\n81#1:273,7\n*E\n"})
/* loaded from: classes3.dex */
public final class ConcurrentLinkedListKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static final Symbol f2381xfbe0c504 = new Symbol("CLOSED");

    public static final /* synthetic */ Symbol access$getCLOSED$p() {
        return f2381xfbe0c504;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.coroutines.internal.ConcurrentLinkedListNode] */
    @NotNull
    public static final <N extends ConcurrentLinkedListNode<N>> N close(@NotNull N n) {
        while (true) {
            Object access$getNextOrClosed = ConcurrentLinkedListNode.access$getNextOrClosed(n);
            if (access$getNextOrClosed == f2381xfbe0c504) {
                return n;
            }
            ?? r0 = (ConcurrentLinkedListNode) access$getNextOrClosed;
            if (r0 == 0) {
                if (n.markAsClosed()) {
                    return n;
                }
            } else {
                n = r0;
            }
        }
    }

    public static final /* synthetic */ <S extends Segment<S>> Object findSegmentAndMoveForward$atomicfu$ATOMIC_ARRAY$Any(AtomicReferenceArray atomicReferenceArray, int i, long j, S s, Function2<? super Long, ? super S, ? extends S> function2) {
        Object findSegmentInternal;
        loop0: while (true) {
            findSegmentInternal = findSegmentInternal(s, j, function2);
            if (!SegmentOrClosed.m2356isClosedimpl(findSegmentInternal)) {
                Segment m2354getSegmentimpl = SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceArray.get(i);
                    if (segment.id >= m2354getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!m2354getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    while (!atomicReferenceArray.compareAndSet(i, segment, m2354getSegmentimpl)) {
                        if (atomicReferenceArray.get(i) != segment) {
                            if (m2354getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                m2354getSegmentimpl.remove();
                            }
                        }
                    }
                    if (segment.decPointers$kotlinx_coroutines_core()) {
                        segment.remove();
                    }
                }
            } else {
                break;
            }
        }
        return findSegmentInternal;
    }

    public static final /* synthetic */ <S extends Segment<S>> Object findSegmentAndMoveForward$atomicfu$ATOMIC_FIELD_UPDATER$Any(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Object obj, long j, S s, Function2<? super Long, ? super S, ? extends S> function2) {
        Object findSegmentInternal;
        loop0: while (true) {
            findSegmentInternal = findSegmentInternal(s, j, function2);
            if (!SegmentOrClosed.m2356isClosedimpl(findSegmentInternal)) {
                Segment m2354getSegmentimpl = SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(obj);
                    if (segment.id >= m2354getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!m2354getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(obj, segment, m2354getSegmentimpl)) {
                        if (atomicReferenceFieldUpdater.get(obj) != segment) {
                            if (m2354getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                m2354getSegmentimpl.remove();
                            }
                        }
                    }
                    if (segment.decPointers$kotlinx_coroutines_core()) {
                        segment.remove();
                    }
                }
            } else {
                break;
            }
        }
        return findSegmentInternal;
    }

    public static final /* synthetic */ <S extends Segment<S>> Object findSegmentAndMoveForward$atomicfu$BOXED_ATOMIC$Any(AtomicReference atomicReference, long j, S s, Function2<? super Long, ? super S, ? extends S> function2) {
        Object findSegmentInternal;
        loop0: while (true) {
            findSegmentInternal = findSegmentInternal(s, j, function2);
            if (!SegmentOrClosed.m2356isClosedimpl(findSegmentInternal)) {
                Segment m2354getSegmentimpl = SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReference.get();
                    if (segment.id >= m2354getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!m2354getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    while (!atomicReference.compareAndSet(segment, m2354getSegmentimpl)) {
                        if (atomicReference.get() != segment) {
                            if (m2354getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                m2354getSegmentimpl.remove();
                            }
                        }
                    }
                    if (segment.decPointers$kotlinx_coroutines_core()) {
                        segment.remove();
                    }
                }
            } else {
                break;
            }
        }
        return findSegmentInternal;
    }

    @NotNull
    public static final <S extends Segment<S>> Object findSegmentInternal(@NotNull S s, long j, @NotNull Function2<? super Long, ? super S, ? extends S> function2) {
        while (true) {
            if (s.id >= j && !s.isRemoved()) {
                return SegmentOrClosed.m2351constructorimpl(s);
            }
            Object access$getNextOrClosed = ConcurrentLinkedListNode.access$getNextOrClosed(s);
            if (access$getNextOrClosed == f2381xfbe0c504) {
                return SegmentOrClosed.m2351constructorimpl(f2381xfbe0c504);
            }
            S s2 = (S) ((ConcurrentLinkedListNode) access$getNextOrClosed);
            if (s2 == null) {
                s2 = function2.invoke(Long.valueOf(s.id + 1), s);
                if (s.trySetNext(s2)) {
                    if (s.isRemoved()) {
                        s.remove();
                    }
                }
            }
            s = s2;
        }
    }

    public static final /* synthetic */ <S extends Segment<S>> boolean moveForward$atomicfu$ATOMIC_ARRAY$Any(AtomicReferenceArray atomicReferenceArray, int i, S s) {
        while (true) {
            Segment segment = (Segment) atomicReferenceArray.get(i);
            if (segment.id >= s.id) {
                return true;
            }
            if (!s.tryIncPointers$kotlinx_coroutines_core()) {
                return false;
            }
            while (!atomicReferenceArray.compareAndSet(i, segment, s)) {
                if (atomicReferenceArray.get(i) != segment) {
                    if (s.decPointers$kotlinx_coroutines_core()) {
                        s.remove();
                    }
                }
            }
            if (segment.decPointers$kotlinx_coroutines_core()) {
                segment.remove();
            }
            return true;
        }
    }

    public static final /* synthetic */ <S extends Segment<S>> boolean moveForward$atomicfu$ATOMIC_FIELD_UPDATER$Any(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Object obj, S s) {
        while (true) {
            Segment segment = (Segment) atomicReferenceFieldUpdater.get(obj);
            if (segment.id >= s.id) {
                return true;
            }
            if (!s.tryIncPointers$kotlinx_coroutines_core()) {
                return false;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(obj, segment, s)) {
                if (atomicReferenceFieldUpdater.get(obj) != segment) {
                    if (s.decPointers$kotlinx_coroutines_core()) {
                        s.remove();
                    }
                }
            }
            if (segment.decPointers$kotlinx_coroutines_core()) {
                segment.remove();
            }
            return true;
        }
    }

    public static final /* synthetic */ <S extends Segment<S>> boolean moveForward$atomicfu$BOXED_ATOMIC$Any(AtomicReference atomicReference, S s) {
        while (true) {
            Segment segment = (Segment) atomicReference.get();
            if (segment.id >= s.id) {
                return true;
            }
            if (!s.tryIncPointers$kotlinx_coroutines_core()) {
                return false;
            }
            while (!atomicReference.compareAndSet(segment, s)) {
                if (atomicReference.get() != segment) {
                    if (s.decPointers$kotlinx_coroutines_core()) {
                        s.remove();
                    }
                }
            }
            if (segment.decPointers$kotlinx_coroutines_core()) {
                segment.remove();
            }
            return true;
        }
    }
}
