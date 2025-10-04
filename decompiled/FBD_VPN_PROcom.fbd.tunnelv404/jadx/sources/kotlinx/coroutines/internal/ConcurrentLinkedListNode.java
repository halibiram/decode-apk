package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\t\u001a\u0004\u0018\u00018\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\b¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00028\u0000¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0011R\u0013\u0010\u0017\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0018\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0013R\u0013\u0010\u0003\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\f8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0013R\u0013\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u001b8\u0002X\u0082\u0004R\u0013\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001b8\u0002X\u0082\u0004¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "N", "", "prev", "<init>", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)V", "Lkotlin/Function0;", "", "onClosedAction", "nextOrIfClosed", "(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "value", "", "trySetNext", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z", "", "cleanPrev", "()V", "markAsClosed", "()Z", "remove", "getNext", "()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "next", "isTail", "getPrev", "isRemoved", "Lkotlinx/atomicfu/AtomicRef;", "_next", "_prev", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,265:1\n103#1,7:266\n1#2:273\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n111#1:266,7\n*E\n"})
/* loaded from: classes3.dex */
public abstract class ConcurrentLinkedListNode<N extends ConcurrentLinkedListNode<N>> {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f2382xfbe0c504 = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_next$volatile");

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f2383x3271d0aa = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_prev$volatile");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    public ConcurrentLinkedListNode(@Nullable N n) {
        this._prev$volatile = n;
    }

    public static final Object access$getNextOrClosed(ConcurrentLinkedListNode concurrentLinkedListNode) {
        concurrentLinkedListNode.getClass();
        return f2382xfbe0c504.get(concurrentLinkedListNode);
    }

    public final void cleanPrev() {
        f2383x3271d0aa.set(this, null);
    }

    @Nullable
    public final N getNext() {
        Object access$getNextOrClosed = access$getNextOrClosed(this);
        if (access$getNextOrClosed == ConcurrentLinkedListKt.access$getCLOSED$p()) {
            return null;
        }
        return (N) access$getNextOrClosed;
    }

    @Nullable
    public final N getPrev() {
        return (N) f2383x3271d0aa.get(this);
    }

    public abstract boolean isRemoved();

    public final boolean isTail() {
        if (getNext() == null) {
            return true;
        }
        return false;
    }

    public final boolean markAsClosed() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Symbol access$getCLOSED$p = ConcurrentLinkedListKt.access$getCLOSED$p();
        do {
            atomicReferenceFieldUpdater = f2382xfbe0c504;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, access$getCLOSED$p)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return false;
    }

    @Nullable
    public final N nextOrIfClosed(@NotNull Function0 onClosedAction) {
        Object access$getNextOrClosed = access$getNextOrClosed(this);
        if (access$getNextOrClosed != ConcurrentLinkedListKt.access$getCLOSED$p()) {
            return (N) access$getNextOrClosed;
        }
        onClosedAction.invoke();
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [kotlinx.coroutines.internal.ConcurrentLinkedListNode] */
    public final void remove() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        ConcurrentLinkedListNode concurrentLinkedListNode;
        ?? next;
        if (isTail()) {
            return;
        }
        while (true) {
            N prev = getPrev();
            while (true) {
                atomicReferenceFieldUpdater = f2383x3271d0aa;
                if (prev == null || !prev.isRemoved()) {
                    break;
                } else {
                    prev = (N) atomicReferenceFieldUpdater.get(prev);
                }
            }
            N next2 = getNext();
            Intrinsics.checkNotNull(next2);
            while (next2.isRemoved() && (next = next2.getNext()) != 0) {
                next2 = next;
            }
            while (true) {
                Object obj = atomicReferenceFieldUpdater.get(next2);
                if (((ConcurrentLinkedListNode) obj) == null) {
                    concurrentLinkedListNode = null;
                } else {
                    concurrentLinkedListNode = prev;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(next2, obj, concurrentLinkedListNode)) {
                    if (atomicReferenceFieldUpdater.get(next2) != obj) {
                        break;
                    }
                }
            }
            if (prev != null) {
                f2382xfbe0c504.set(prev, next2);
            }
            if (!next2.isRemoved() || next2.isTail()) {
                if (prev == null || !prev.isRemoved()) {
                    return;
                }
            }
        }
    }

    public final boolean trySetNext(@NotNull N value) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = f2382xfbe0c504;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, value)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return false;
    }
}
