package kotlinx.coroutines.debug.internal;

import androidx.exifinterface.media.ExifInterface;
import defpackage.C0538x3d8fea2c;
import defpackage.C0631x9c5d4812;
import defpackage.C0633xa590e0c9;
import defpackage.C0965x5a4c2fb3;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0003\"$%B\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\n\u001a\u0004\u0018\u00018\u00012\u0006\u0010\t\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\r\u001a\u0004\u0018\u00018\u00012\u0006\u0010\t\u001a\u00028\u00002\u0006\u0010\f\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u0004\u0018\u00018\u00012\u0006\u0010\t\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000f\u0010\u000bJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR&\u0010\u001e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001c0\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001aR\u000b\u0010 \u001a\u00020\u001f8\u0002X\u0082\u0004R!\u0010#\u001a\u0018\u0012\u0014\u0012\u00120\"R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00000!8\u0002X\u0082\u0004¨\u0006&"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/collections/AbstractMutableMap;", "", "weakRefQueue", "<init>", "(Z)V", "key", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "value", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "remove", "", "clear", "()V", "runWeakRefQueueCleaningLoopUntilInterrupted", "", "getSize", "()I", "size", "", "getKeys", "()Ljava/util/Set;", "keys", "", "getEntries", "entries", "Lkotlinx/atomicfu/AtomicInt;", "_size", "Lkotlinx/atomicfu/AtomicRef;", "L둣둔돳땃돠땣땍땍듬듔뎨됩뒻돶돶도돠됫딄둬뎠돶땧땠두돰딽딻뒻돸딻돶될뎡돶둥둥듌둥돝딸땱땄뎠땜땫땁뒤땰돛돛됫듸땥뒬둠돰뒉뒻됴돰땀딅딠딸득땥땝뒬땹땄땬뒷듰딨뒋뒨딌뒷뒋땭뒬땐듬뒵득뎨땃돳땜딄됨땠둑땁돴듸땨뒉딀됐뒐땄디듰딀땋듼땱듼딁된딸돳딅들듟드돛둣땝땄뒙땫됨딸딌돤뎬땮;", "core", "둣듬듌뎨뒝땱뒉땻땀땻뒈뒈뒉둔두딃땠됩뒷뒀땱딀땥됴뒋딠듻뒾딹뒝뒼땻뒵땃드땅돳딁딠돵됨땸딹땍땱뒝딁딹뎸땱땯땐듻땠딻땧됴들땱둠땥듻땤따돵딁뒛돵땁듨뎹둡듨딟뎽딜땦드딄땲뒈뒾딤땍돵뒀뎨됩돳딜땯땳땜도뒀땯듻땤땋딎둘든땣듰둥돛뒹뒙듨뎨뎰땵돼땤따땧둣돴딞땋땅땫땟땐땹땔땫딀땐딄", "둣딀돵땨뎬둥둠땠듟뒾딄딻땋땳뎻딎뒼됴둑딽돴뒬땸땝둑뒬땹도딐땬두뒈돰돴땀됩땲됩땩딄돛될뒈뒤뒨뒉됨땸땸돨딠됩둥땣됩됐돷딁뒻된땀뒐두듽뎹됩딅땨됨땥딌딅딠따됩뎹듼뎡땩뒵땧땩듼땍둑땯땡듼땨땔뒙뒀둥돳땅둔돵땱땫딎돤돳딎딠땀됩땮딜뒨따땨뎸땄돨땐돳땭땅듽뒐돴뎨땳뎡땩뒙뒹뒤딄땍", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"})
/* loaded from: classes3.dex */
public final class ConcurrentWeakMap<K, V> extends AbstractMutableMap<K, V> {

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f1866x3271d0aa = AtomicIntegerFieldUpdater.newUpdater(ConcurrentWeakMap.class, "_size$volatile");

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f1867x1378447b = AtomicReferenceFieldUpdater.newUpdater(ConcurrentWeakMap.class, Object.class, "core$volatile");
    private volatile /* synthetic */ int _size$volatile;
    private volatile /* synthetic */ Object core$volatile;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ReferenceQueue f1868xfbe0c504;

    public ConcurrentWeakMap() {
        this(false, 1, null);
    }

    public static final void access$decrementSize(ConcurrentWeakMap concurrentWeakMap) {
        concurrentWeakMap.getClass();
        f1866x3271d0aa.decrementAndGet(concurrentWeakMap);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Iterator<K> it = keySet().iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V get(@Nullable Object key) {
        if (key == null) {
            return null;
        }
        C0631x9c5d4812 c0631x9c5d4812 = (C0631x9c5d4812) f1867x1378447b.get(this);
        c0631x9c5d4812.getClass();
        int hashCode = (key.hashCode() * (-1640531527)) >>> c0631x9c5d4812.f4406x3271d0aa;
        while (true) {
            HashedWeakRef hashedWeakRef = (HashedWeakRef) c0631x9c5d4812.f4408x75d576dc.get(hashCode);
            if (hashedWeakRef == null) {
                return null;
            }
            T t = hashedWeakRef.get();
            if (Intrinsics.areEqual(key, t)) {
                Object obj = c0631x9c5d4812.f4409x9738a56c.get(hashCode);
                if (obj instanceof C0965x5a4c2fb3) {
                    obj = ((C0965x5a4c2fb3) obj).f5137xfbe0c504;
                }
                return (V) obj;
            }
            if (t == 0) {
                c0631x9c5d4812.m3228x1378447b(hashCode);
            }
            if (hashCode == 0) {
                hashCode = c0631x9c5d4812.f4405xfbe0c504;
            }
            hashCode--;
        }
    }

    @Override // kotlin.collections.AbstractMutableMap
    @NotNull
    public Set<Map.Entry<K, V>> getEntries() {
        return new C0633xa590e0c9(this, new C0538x3d8fea2c(3));
    }

    @Override // kotlin.collections.AbstractMutableMap
    @NotNull
    public Set<K> getKeys() {
        return new C0633xa590e0c9(this, new C0538x3d8fea2c(2));
    }

    @Override // kotlin.collections.AbstractMutableMap
    public int getSize() {
        return f1866x3271d0aa.get(this);
    }

    @Override // kotlin.collections.AbstractMutableMap, java.util.AbstractMap, java.util.Map
    @Nullable
    public V put(@NotNull K key, @NotNull V value) {
        Symbol symbol;
        C0631x9c5d4812 c0631x9c5d4812 = (C0631x9c5d4812) f1867x1378447b.get(this);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = C0631x9c5d4812.f4404x34271fae;
        V v = (V) c0631x9c5d4812.m3226xfbe0c504(key, value, null);
        symbol = ConcurrentWeakMapKt.f1869xfbe0c504;
        if (v == symbol) {
            v = (V) m2305x1378447b(key, value);
        }
        if (v == null) {
            f1866x3271d0aa.incrementAndGet(this);
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V remove(@Nullable Object key) {
        Symbol symbol;
        if (key == null) {
            return null;
        }
        C0631x9c5d4812 c0631x9c5d4812 = (C0631x9c5d4812) f1867x1378447b.get(this);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = C0631x9c5d4812.f4404x34271fae;
        V v = (V) c0631x9c5d4812.m3226xfbe0c504(key, null, null);
        symbol = ConcurrentWeakMapKt.f1869xfbe0c504;
        if (v == symbol) {
            v = (V) m2305x1378447b(key, null);
        }
        if (v != null) {
            f1866x3271d0aa.decrementAndGet(this);
        }
        return v;
    }

    public final void runWeakRefQueueCleaningLoopUntilInterrupted() {
        ReferenceQueue referenceQueue = this.f1868xfbe0c504;
        if (referenceQueue == null) {
            throw new IllegalStateException("Must be created with weakRefQueue = true");
        }
        while (true) {
            try {
                Reference remove = referenceQueue.remove();
                Intrinsics.checkNotNull(remove, "null cannot be cast to non-null type kotlinx.coroutines.debug.internal.HashedWeakRef<*>");
                HashedWeakRef hashedWeakRef = (HashedWeakRef) remove;
                C0631x9c5d4812 c0631x9c5d4812 = (C0631x9c5d4812) f1867x1378447b.get(this);
                c0631x9c5d4812.getClass();
                int i = (hashedWeakRef.hash * (-1640531527)) >>> c0631x9c5d4812.f4406x3271d0aa;
                while (true) {
                    HashedWeakRef hashedWeakRef2 = (HashedWeakRef) c0631x9c5d4812.f4408x75d576dc.get(i);
                    if (hashedWeakRef2 != null) {
                        if (hashedWeakRef2 == hashedWeakRef) {
                            c0631x9c5d4812.m3228x1378447b(i);
                            break;
                        } else {
                            if (i == 0) {
                                i = c0631x9c5d4812.f4405xfbe0c504;
                            }
                            i--;
                        }
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return;
            }
        }
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final synchronized Object m2305x1378447b(Object obj, Object obj2) {
        Object m3226xfbe0c504;
        Symbol symbol;
        C0631x9c5d4812 c0631x9c5d4812 = (C0631x9c5d4812) f1867x1378447b.get(this);
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = C0631x9c5d4812.f4404x34271fae;
            m3226xfbe0c504 = c0631x9c5d4812.m3226xfbe0c504(obj, obj2, null);
            symbol = ConcurrentWeakMapKt.f1869xfbe0c504;
            if (m3226xfbe0c504 == symbol) {
                c0631x9c5d4812 = c0631x9c5d4812.m3227x3271d0aa();
                f1867x1378447b.set(this, c0631x9c5d4812);
            }
        }
        return m3226xfbe0c504;
    }

    public /* synthetic */ ConcurrentWeakMap(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }

    public ConcurrentWeakMap(boolean z) {
        this.core$volatile = new C0631x9c5d4812(this, 16);
        this.f1868xfbe0c504 = z ? new ReferenceQueue() : null;
    }
}
