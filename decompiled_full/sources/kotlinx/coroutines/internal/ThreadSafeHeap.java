package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.lang.Comparable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InternalCoroutinesApi
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u0000*\u0012\b\u0000\u0010\u0003*\u00020\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0004j\u0002`\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J2\u0010\u000e\u001a\u0004\u0018\u00018\u00002!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0012\u0010\u0011J&\u0010\u0013\u001a\u0004\u0018\u00018\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\f0\bH\u0086\b¢\u0006\u0004\b\u0013\u0010\u000fJ\u0015\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0004\b\u0016\u0010\u0017J.\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00028\u00002\u0014\u0010\u0018\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\f0\bH\u0086\b¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001d\u001a\u0004\u0018\u00018\u0000H\u0001¢\u0006\u0004\b\u001d\u0010\u0011J\u0017\u0010 \u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\u001eH\u0001¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00028\u0000H\u0001¢\u0006\u0004\b\"\u0010\u0017R$\u0010'\u001a\u00020\u001e2\u0006\u0010\u000b\u001a\u00020\u001e8F@BX\u0086\u000e¢\u0006\f\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0011\u0010(\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b(\u0010)R\u000b\u0010+\u001a\u00020*8\u0002X\u0082\u0004¨\u0006,"}, d2 = {"Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "", ExifInterface.GPS_DIRECTION_TRUE, "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "<init>", "()V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "value", "", "predicate", "find", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "peek", "()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "removeFirstOrNull", "removeFirstIf", "node", "", "addLast", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V", "cond", "addLastIf", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function1;)Z", "remove", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z", "firstImpl", "", "index", "removeAtImpl", "(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "addImpl", "getSize", "()I", "setSize", "(I)V", "size", "isEmpty", "()Z", "Lkotlinx/atomicfu/AtomicInt;", "_size", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nThreadSafeHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n29#2:160\n29#2:162\n29#2:164\n29#2:166\n29#2:168\n29#2:170\n29#2:172\n16#3:161\n16#3:163\n16#3:165\n16#3:167\n16#3:169\n16#3:171\n16#3:173\n1#4:174\n*S KotlinDebug\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n33#1:160\n41#1:162\n43#1:164\n51#1:166\n60#1:168\n63#1:170\n72#1:172\n33#1:161\n41#1:163\n43#1:165\n51#1:167\n60#1:169\n63#1:171\n72#1:173\n*E\n"})
/* loaded from: classes3.dex */
public class ThreadSafeHeap<T extends ThreadSafeHeapNode & Comparable<? super T>> {

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2427x3271d0aa = AtomicIntegerFieldUpdater.newUpdater(ThreadSafeHeap.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public ThreadSafeHeapNode[] f2428xfbe0c504;

    @PublishedApi
    public final void addImpl(@NotNull T node) {
        node.setHeap(this);
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f2428xfbe0c504;
        if (threadSafeHeapNodeArr == null) {
            threadSafeHeapNodeArr = new ThreadSafeHeapNode[4];
            this.f2428xfbe0c504 = threadSafeHeapNodeArr;
        } else if (getSize() >= threadSafeHeapNodeArr.length) {
            Object[] copyOf = Arrays.copyOf(threadSafeHeapNodeArr, getSize() * 2);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            threadSafeHeapNodeArr = (ThreadSafeHeapNode[]) copyOf;
            this.f2428xfbe0c504 = threadSafeHeapNodeArr;
        }
        int size = getSize();
        f2427x3271d0aa.set(this, size + 1);
        threadSafeHeapNodeArr[size] = node;
        node.setIndex(size);
        m2360xfbe0c504(size);
    }

    public final void addLast(@NotNull T node) {
        synchronized (this) {
            addImpl(node);
        }
    }

    public final boolean addLastIf(@NotNull T node, @NotNull Function1<? super T, Boolean> cond) {
        boolean z;
        synchronized (this) {
            try {
                if (cond.invoke(firstImpl()).booleanValue()) {
                    addImpl(node);
                    z = true;
                } else {
                    z = false;
                }
                InlineMarker.finallyStart(1);
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        InlineMarker.finallyEnd(1);
        return z;
    }

    @Nullable
    public final T find(@NotNull Function1<? super T, Boolean> predicate) {
        ThreadSafeHeapNode threadSafeHeapNode;
        synchronized (this) {
            try {
                int size = getSize();
                int i = 0;
                while (true) {
                    threadSafeHeapNode = null;
                    if (i >= size) {
                        break;
                    }
                    ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f2428xfbe0c504;
                    if (threadSafeHeapNodeArr != null) {
                        threadSafeHeapNode = threadSafeHeapNodeArr[i];
                    }
                    Intrinsics.checkNotNull(threadSafeHeapNode);
                    if (predicate.invoke(threadSafeHeapNode).booleanValue()) {
                        break;
                    }
                    i++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return threadSafeHeapNode;
    }

    @PublishedApi
    @Nullable
    public final T firstImpl() {
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f2428xfbe0c504;
        if (threadSafeHeapNodeArr != null) {
            return (T) threadSafeHeapNodeArr[0];
        }
        return null;
    }

    public final int getSize() {
        return f2427x3271d0aa.get(this);
    }

    public final boolean isEmpty() {
        if (getSize() == 0) {
            return true;
        }
        return false;
    }

    @Nullable
    public final T peek() {
        T firstImpl;
        synchronized (this) {
            firstImpl = firstImpl();
        }
        return firstImpl;
    }

    public final boolean remove(@NotNull T node) {
        boolean z;
        synchronized (this) {
            if (node.getHeap() == null) {
                z = false;
            } else {
                removeAtImpl(node.getIndex());
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0064, code lost:
    
        if (((java.lang.Comparable) r5).compareTo(r6) < 0) goto L18;
     */
    @PublishedApi
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final T removeAtImpl(int index) {
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f2428xfbe0c504;
        Intrinsics.checkNotNull(threadSafeHeapNodeArr);
        f2427x3271d0aa.set(this, getSize() - 1);
        if (index < getSize()) {
            m2361x3271d0aa(index, getSize());
            int i = (index - 1) / 2;
            if (index > 0) {
                ThreadSafeHeapNode threadSafeHeapNode = threadSafeHeapNodeArr[index];
                Intrinsics.checkNotNull(threadSafeHeapNode);
                ThreadSafeHeapNode threadSafeHeapNode2 = threadSafeHeapNodeArr[i];
                Intrinsics.checkNotNull(threadSafeHeapNode2);
                if (((Comparable) threadSafeHeapNode).compareTo(threadSafeHeapNode2) < 0) {
                    m2361x3271d0aa(index, i);
                    m2360xfbe0c504(i);
                }
            }
            while (true) {
                int i2 = index * 2;
                int i3 = i2 + 1;
                if (i3 >= getSize()) {
                    break;
                }
                ThreadSafeHeapNode[] threadSafeHeapNodeArr2 = this.f2428xfbe0c504;
                Intrinsics.checkNotNull(threadSafeHeapNodeArr2);
                int i4 = i2 + 2;
                if (i4 < getSize()) {
                    ThreadSafeHeapNode threadSafeHeapNode3 = threadSafeHeapNodeArr2[i4];
                    Intrinsics.checkNotNull(threadSafeHeapNode3);
                    ThreadSafeHeapNode threadSafeHeapNode4 = threadSafeHeapNodeArr2[i3];
                    Intrinsics.checkNotNull(threadSafeHeapNode4);
                }
                i4 = i3;
                ThreadSafeHeapNode threadSafeHeapNode5 = threadSafeHeapNodeArr2[index];
                Intrinsics.checkNotNull(threadSafeHeapNode5);
                ThreadSafeHeapNode threadSafeHeapNode6 = threadSafeHeapNodeArr2[i4];
                Intrinsics.checkNotNull(threadSafeHeapNode6);
                if (((Comparable) threadSafeHeapNode5).compareTo(threadSafeHeapNode6) <= 0) {
                    break;
                }
                m2361x3271d0aa(index, i4);
                index = i4;
            }
        }
        T t = (T) threadSafeHeapNodeArr[getSize()];
        Intrinsics.checkNotNull(t);
        t.setHeap(null);
        t.setIndex(-1);
        threadSafeHeapNodeArr[getSize()] = null;
        return t;
    }

    @Nullable
    public final T removeFirstIf(@NotNull Function1<? super T, Boolean> predicate) {
        synchronized (this) {
            try {
                T firstImpl = firstImpl();
                T t = null;
                if (firstImpl == null) {
                    InlineMarker.finallyStart(2);
                    InlineMarker.finallyEnd(2);
                    return null;
                }
                if (predicate.invoke(firstImpl).booleanValue()) {
                    t = removeAtImpl(0);
                }
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                return t;
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
    }

    @Nullable
    public final T removeFirstOrNull() {
        T t;
        synchronized (this) {
            if (getSize() > 0) {
                t = removeAtImpl(0);
            } else {
                t = null;
            }
        }
        return t;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m2360xfbe0c504(int i) {
        while (i > 0) {
            ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f2428xfbe0c504;
            Intrinsics.checkNotNull(threadSafeHeapNodeArr);
            int i2 = (i - 1) / 2;
            ThreadSafeHeapNode threadSafeHeapNode = threadSafeHeapNodeArr[i2];
            Intrinsics.checkNotNull(threadSafeHeapNode);
            ThreadSafeHeapNode threadSafeHeapNode2 = threadSafeHeapNodeArr[i];
            Intrinsics.checkNotNull(threadSafeHeapNode2);
            if (((Comparable) threadSafeHeapNode).compareTo(threadSafeHeapNode2) <= 0) {
                return;
            }
            m2361x3271d0aa(i, i2);
            i = i2;
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final void m2361x3271d0aa(int i, int i2) {
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f2428xfbe0c504;
        Intrinsics.checkNotNull(threadSafeHeapNodeArr);
        ThreadSafeHeapNode threadSafeHeapNode = threadSafeHeapNodeArr[i2];
        Intrinsics.checkNotNull(threadSafeHeapNode);
        ThreadSafeHeapNode threadSafeHeapNode2 = threadSafeHeapNodeArr[i];
        Intrinsics.checkNotNull(threadSafeHeapNode2);
        threadSafeHeapNodeArr[i] = threadSafeHeapNode;
        threadSafeHeapNodeArr[i2] = threadSafeHeapNode2;
        threadSafeHeapNode.setIndex(i);
        threadSafeHeapNode2.setIndex(i2);
    }
}
