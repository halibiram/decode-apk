package kotlinx.coroutines.internal;

import androidx.core.internal.view.SupportMenu;
import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.NotCompleted;
import kotlinx.coroutines.internal.Segment;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b \u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00002\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u0013\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u0014J\r\u0010\u0015\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u0016J\"\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0006\u0010\u001e\u001a\u00020\u0018R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\t\u0010\u000e\u001a\u00020\u000fX\u0082\u0004R\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0012¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/internal/Segment;", ExifInterface.LATITUDE_SOUTH, "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "Lkotlinx/coroutines/NotCompleted;", "id", "", "prev", "pointers", "", "<init>", "(JLkotlinx/coroutines/internal/Segment;I)V", "numberOfSlots", "getNumberOfSlots", "()I", "cleanedAndPointers", "Lkotlinx/atomicfu/AtomicInt;", "isRemoved", "", "()Z", "tryIncPointers", "tryIncPointers$kotlinx_coroutines_core", "decPointers", "decPointers$kotlinx_coroutines_core", "onCancellation", "", "index", "cause", "", "context", "Lkotlin/coroutines/CoroutineContext;", "onSlotCleaned", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n1#1,265:1\n248#2,4:266\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n*L\n221#1:266,4\n*E\n"})
/* loaded from: classes3.dex */
public abstract class Segment<S extends Segment<S>> extends ConcurrentLinkedListNode<S> implements NotCompleted {

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2416x1378447b = AtomicIntegerFieldUpdater.newUpdater(Segment.class, "cleanedAndPointers$volatile");
    private volatile /* synthetic */ int cleanedAndPointers$volatile;

    @JvmField
    public final long id;

    public Segment(long j, @Nullable S s, int i) {
        super(s);
        this.id = j;
        this.cleanedAndPointers$volatile = i << 16;
    }

    public final boolean decPointers$kotlinx_coroutines_core() {
        if (f2416x1378447b.addAndGet(this, SupportMenu.CATEGORY_MASK) == getNumberOfSlots() && !isTail()) {
            return true;
        }
        return false;
    }

    public abstract int getNumberOfSlots();

    @Override // kotlinx.coroutines.internal.ConcurrentLinkedListNode
    public boolean isRemoved() {
        if (f2416x1378447b.get(this) == getNumberOfSlots() && !isTail()) {
            return true;
        }
        return false;
    }

    public abstract void onCancellation(int index, @Nullable Throwable cause, @NotNull CoroutineContext context);

    public final void onSlotCleaned() {
        if (f2416x1378447b.incrementAndGet(this) == getNumberOfSlots()) {
            remove();
        }
    }

    public final boolean tryIncPointers$kotlinx_coroutines_core() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        do {
            atomicIntegerFieldUpdater = f2416x1378447b;
            i = atomicIntegerFieldUpdater.get(this);
            if (i == getNumberOfSlots() && !isTail()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 65536 + i));
        return true;
    }
}
