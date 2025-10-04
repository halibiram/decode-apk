package kotlinx.coroutines.internal;

import defpackage.C0931xc2c92aca;
import defpackage.C1086xfeaf18d;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InternalCoroutinesApi
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u0004¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u00042\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0012\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u00042\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0004H\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0004H\u0001¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u001b\u001a\u00020\u000e2\n\u0010\u0018\u001a\u00060\u0000j\u0002`\u00042\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0004H\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0015R\u0011\u0010\u0011\u001a\u00020\u00018F¢\u0006\u0006\u001a\u0004\b \u0010!R\u0015\u0010#\u001a\u00060\u0000j\u0002`\u00048F¢\u0006\u0006\u001a\u0004\b\"\u0010\u0017R\u0015\u0010%\u001a\u00060\u0000j\u0002`\u00048F¢\u0006\u0006\u001a\u0004\b$\u0010\u0017R\u0011\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00010&8\u0002X\u0082\u0004R\u0011\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00000&8\u0002X\u0082\u0004R\u0013\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0&8\u0002X\u0082\u0004¨\u0006+"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "", "<init>", "()V", "Lkotlinx/coroutines/internal/Node;", "node", "", "addOneIfEmpty", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z", "", "permissionsBitmask", "addLast", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;I)Z", "forbiddenElementsBit", "", "close", "(I)V", "next", "addNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z", "remove", "()Z", "removeOrNext", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "prev", "validateNode$kotlinx_coroutines_core", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "validateNode", "", "toString", "()Ljava/lang/String;", "isRemoved", "getNext", "()Ljava/lang/Object;", "getNextNode", "nextNode", "getPrevNode", "prevNode", "Lkotlinx/atomicfu/AtomicRef;", "_next", "_prev", "L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;", "_removedRef", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"})
/* loaded from: classes3.dex */
public class LockFreeLinkedListNode {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f2399xfbe0c504 = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f2400x3271d0aa = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f2401x1378447b = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    public final boolean addLast(@NotNull LockFreeLinkedListNode node, int permissionsBitmask) {
        LockFreeLinkedListNode prevNode;
        do {
            prevNode = getPrevNode();
            if (prevNode instanceof C0931xc2c92aca) {
                if ((((C0931xc2c92aca) prevNode).f5082x75d576dc & permissionsBitmask) == 0 && prevNode.addLast(node, permissionsBitmask)) {
                    return true;
                }
                return false;
            }
        } while (!prevNode.addNext(node, this));
        return true;
    }

    @PublishedApi
    public final boolean addNext(@NotNull LockFreeLinkedListNode node, @NotNull LockFreeLinkedListNode next) {
        f2400x3271d0aa.set(node, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2399xfbe0c504;
        atomicReferenceFieldUpdater.set(node, next);
        while (!atomicReferenceFieldUpdater.compareAndSet(this, next, node)) {
            if (atomicReferenceFieldUpdater.get(this) != next) {
                return false;
            }
        }
        node.m2349x3271d0aa(next);
        return true;
    }

    public final boolean addOneIfEmpty(@NotNull LockFreeLinkedListNode node) {
        f2400x3271d0aa.set(node, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2399xfbe0c504;
        atomicReferenceFieldUpdater.set(node, this);
        while (getNext() == this) {
            while (!atomicReferenceFieldUpdater.compareAndSet(this, this, node)) {
                if (atomicReferenceFieldUpdater.get(this) != this) {
                    break;
                }
            }
            node.m2349x3271d0aa(this);
            return true;
        }
        return false;
    }

    public final void close(int forbiddenElementsBit) {
        addLast(new C0931xc2c92aca(forbiddenElementsBit), forbiddenElementsBit);
    }

    @NotNull
    public final Object getNext() {
        return f2399xfbe0c504.get(this);
    }

    @NotNull
    public final LockFreeLinkedListNode getNextNode() {
        C1086xfeaf18d c1086xfeaf18d;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Object next = getNext();
        if (next instanceof C1086xfeaf18d) {
            c1086xfeaf18d = (C1086xfeaf18d) next;
        } else {
            c1086xfeaf18d = null;
        }
        if (c1086xfeaf18d == null || (lockFreeLinkedListNode = c1086xfeaf18d.f5384xfbe0c504) == null) {
            Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            return (LockFreeLinkedListNode) next;
        }
        return lockFreeLinkedListNode;
    }

    @NotNull
    public final LockFreeLinkedListNode getPrevNode() {
        LockFreeLinkedListNode m2348xfbe0c504 = m2348xfbe0c504();
        if (m2348xfbe0c504 == null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2400x3271d0aa;
            Object obj = atomicReferenceFieldUpdater.get(this);
            while (true) {
                m2348xfbe0c504 = (LockFreeLinkedListNode) obj;
                if (!m2348xfbe0c504.isRemoved()) {
                    break;
                }
                obj = atomicReferenceFieldUpdater.get(m2348xfbe0c504);
            }
        }
        return m2348xfbe0c504;
    }

    public boolean isRemoved() {
        return getNext() instanceof C1086xfeaf18d;
    }

    /* renamed from: remove */
    public boolean mo2347remove() {
        if (removeOrNext() == null) {
            return true;
        }
        return false;
    }

    @PublishedApi
    @Nullable
    public final LockFreeLinkedListNode removeOrNext() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        while (true) {
            Object next = getNext();
            if (next instanceof C1086xfeaf18d) {
                return ((C1086xfeaf18d) next).f5384xfbe0c504;
            }
            if (next == this) {
                return (LockFreeLinkedListNode) next;
            }
            Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
            lockFreeLinkedListNode.getClass();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f2401x1378447b;
            C1086xfeaf18d c1086xfeaf18d = (C1086xfeaf18d) atomicReferenceFieldUpdater2.get(lockFreeLinkedListNode);
            if (c1086xfeaf18d == null) {
                c1086xfeaf18d = new C1086xfeaf18d(lockFreeLinkedListNode);
                atomicReferenceFieldUpdater2.set(lockFreeLinkedListNode, c1086xfeaf18d);
            }
            do {
                atomicReferenceFieldUpdater = f2399xfbe0c504;
                if (atomicReferenceFieldUpdater.compareAndSet(this, next, c1086xfeaf18d)) {
                    lockFreeLinkedListNode.m2348xfbe0c504();
                    return null;
                }
            } while (atomicReferenceFieldUpdater.get(this) == next);
        }
    }

    @NotNull
    public String toString() {
        return new PropertyReference0Impl(this, DebugStringsKt.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1) + '@' + DebugStringsKt.getHexAddress(this);
    }

    public final void validateNode$kotlinx_coroutines_core(@NotNull LockFreeLinkedListNode prev, @NotNull LockFreeLinkedListNode next) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0031, code lost:
    
        r6 = ((defpackage.C1086xfeaf18d) r6).f5384xfbe0c504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        if (r5.compareAndSet(r4, r3, r6) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
    
        if (r5.get(r4) == r3) goto L43;
     */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final LockFreeLinkedListNode m2348xfbe0c504() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2400x3271d0aa;
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(this);
            LockFreeLinkedListNode lockFreeLinkedListNode2 = lockFreeLinkedListNode;
            while (true) {
                LockFreeLinkedListNode lockFreeLinkedListNode3 = null;
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f2399xfbe0c504;
                    Object obj = atomicReferenceFieldUpdater2.get(lockFreeLinkedListNode2);
                    if (obj == this) {
                        if (lockFreeLinkedListNode == lockFreeLinkedListNode2) {
                            return lockFreeLinkedListNode2;
                        }
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, lockFreeLinkedListNode, lockFreeLinkedListNode2)) {
                            if (atomicReferenceFieldUpdater.get(this) != lockFreeLinkedListNode) {
                                break;
                            }
                        }
                        return lockFreeLinkedListNode2;
                    }
                    if (isRemoved()) {
                        return null;
                    }
                    if (obj instanceof C1086xfeaf18d) {
                        if (lockFreeLinkedListNode3 != null) {
                            break;
                        }
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode2);
                    } else {
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
                        lockFreeLinkedListNode3 = lockFreeLinkedListNode2;
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) obj;
                    }
                }
                lockFreeLinkedListNode2 = lockFreeLinkedListNode3;
            }
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final void m2349x3271d0aa(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2400x3271d0aa;
            LockFreeLinkedListNode lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
            if (getNext() != lockFreeLinkedListNode) {
                return;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(lockFreeLinkedListNode, lockFreeLinkedListNode2, this)) {
                if (atomicReferenceFieldUpdater.get(lockFreeLinkedListNode) != lockFreeLinkedListNode2) {
                    break;
                }
            }
            if (isRemoved()) {
                lockFreeLinkedListNode.m2348xfbe0c504();
                return;
            }
            return;
        }
    }
}
