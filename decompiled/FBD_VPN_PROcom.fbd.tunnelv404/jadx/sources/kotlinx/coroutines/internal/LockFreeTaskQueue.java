package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0010\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0002\u0010\u0015J\r\u0010\u0016\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u0017J&\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u001a0\u0019\"\u0004\b\u0001\u0010\u001a2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u001a0\u001cJ\u0006\u0010\u001d\u001a\u00020\u0004R\u001f\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00028\u00000\tj\b\u0012\u0004\u0012\u00028\u0000`\n0\bX\u0082\u0004R\u0011\u0010\u000b\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueue;", ExifInterface.LONGITUDE_EAST, "", "singleConsumer", "", "<init>", "(Z)V", "_cur", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "Lkotlinx/coroutines/internal/Core;", "isEmpty", "()Z", "size", "", "getSize", "()I", "close", "", "addLast", "element", "(Ljava/lang/Object;)Z", "removeFirstOrNull", "()Ljava/lang/Object;", "map", "", "R", "transform", "Lkotlin/Function1;", "isClosed", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public class LockFreeTaskQueue<E> {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f2402xfbe0c504 = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueue.class, Object.class, "_cur$volatile");
    private volatile /* synthetic */ Object _cur$volatile;

    public LockFreeTaskQueue(boolean z) {
        this._cur$volatile = new LockFreeTaskQueueCore(8, z);
    }

    public final boolean addLast(@NotNull E element) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2402xfbe0c504;
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) atomicReferenceFieldUpdater.get(this);
            int addLast = lockFreeTaskQueueCore.addLast(element);
            if (addLast == 0) {
                return true;
            }
            if (addLast != 1) {
                if (addLast == 2) {
                    return false;
                }
            } else {
                LockFreeTaskQueueCore<E> next = lockFreeTaskQueueCore.next();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, lockFreeTaskQueueCore, next) && atomicReferenceFieldUpdater.get(this) == lockFreeTaskQueueCore) {
                }
            }
        }
    }

    public final void close() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2402xfbe0c504;
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) atomicReferenceFieldUpdater.get(this);
            if (lockFreeTaskQueueCore.close()) {
                return;
            }
            LockFreeTaskQueueCore<E> next = lockFreeTaskQueueCore.next();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, lockFreeTaskQueueCore, next) && atomicReferenceFieldUpdater.get(this) == lockFreeTaskQueueCore) {
            }
        }
    }

    public final int getSize() {
        return ((LockFreeTaskQueueCore) f2402xfbe0c504.get(this)).getSize();
    }

    public final boolean isClosed() {
        return ((LockFreeTaskQueueCore) f2402xfbe0c504.get(this)).isClosed();
    }

    public final boolean isEmpty() {
        return ((LockFreeTaskQueueCore) f2402xfbe0c504.get(this)).isEmpty();
    }

    @NotNull
    public final <R> List<R> map(@NotNull Function1<? super E, ? extends R> transform) {
        return ((LockFreeTaskQueueCore) f2402xfbe0c504.get(this)).map(transform);
    }

    @Nullable
    public final E removeFirstOrNull() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2402xfbe0c504;
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) atomicReferenceFieldUpdater.get(this);
            E e = (E) lockFreeTaskQueueCore.removeFirstOrNull();
            if (e != LockFreeTaskQueueCore.REMOVE_FROZEN) {
                return e;
            }
            LockFreeTaskQueueCore<E> next = lockFreeTaskQueueCore.next();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, lockFreeTaskQueueCore, next) && atomicReferenceFieldUpdater.get(this) == lockFreeTaskQueueCore) {
            }
        }
    }
}
