package coil3.memory;

import coil3.memory.MemoryCache;
import defpackage.AbstractC1146x849d236e;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\"\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ \u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\nH\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0015\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001bR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\b0\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcoil3/memory/RealMemoryCache;", "Lcoil3/memory/MemoryCache;", "Lcoil3/memory/StrongMemoryCache;", "strongMemoryCache", "Lcoil3/memory/WeakMemoryCache;", "weakMemoryCache", "<init>", "(Lcoil3/memory/StrongMemoryCache;Lcoil3/memory/WeakMemoryCache;)V", "Lcoil3/memory/MemoryCache$Key;", "key", "Lcoil3/memory/MemoryCache$Value;", "get", "(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;", "value", "", "set", "(Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/MemoryCache$Value;)V", "", "remove", "(Lcoil3/memory/MemoryCache$Key;)Z", "", "size", "trimToSize", "(J)V", "clear", "()V", "getSize", "()J", "getMaxSize", "maxSize", "", "getKeys", "()Ljava/util/Set;", "keys", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealMemoryCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealMemoryCache.kt\ncoil3/memory/RealMemoryCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,64:1\n1#2:65\n*E\n"})
/* loaded from: classes.dex */
public final class RealMemoryCache implements MemoryCache {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final StrongMemoryCache f680xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final WeakMemoryCache f681x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Object f682x1378447b = new Object();

    public RealMemoryCache(@NotNull StrongMemoryCache strongMemoryCache, @NotNull WeakMemoryCache weakMemoryCache) {
        this.f680xfbe0c504 = strongMemoryCache;
        this.f681x3271d0aa = weakMemoryCache;
    }

    @Override // coil3.memory.MemoryCache
    public void clear() {
        synchronized (this.f682x1378447b) {
            this.f680xfbe0c504.clear();
            this.f681x3271d0aa.clear();
        }
    }

    @Override // coil3.memory.MemoryCache
    @Nullable
    public MemoryCache.Value get(@NotNull MemoryCache.Key key) {
        MemoryCache.Value value;
        synchronized (this.f682x1378447b) {
            try {
                value = this.f680xfbe0c504.get(key);
                if (value == null) {
                    value = this.f681x3271d0aa.get(key);
                }
                if (value != null && !value.getImage().getShareable()) {
                    remove(key);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return value;
    }

    @Override // coil3.memory.MemoryCache
    @NotNull
    public Set<MemoryCache.Key> getKeys() {
        Set<MemoryCache.Key> plus;
        synchronized (this.f682x1378447b) {
            plus = AbstractC1146x849d236e.plus((Set) this.f680xfbe0c504.getKeys(), (Iterable) this.f681x3271d0aa.getKeys());
        }
        return plus;
    }

    @Override // coil3.memory.MemoryCache
    public long getMaxSize() {
        long maxSize;
        synchronized (this.f682x1378447b) {
            maxSize = this.f680xfbe0c504.getMaxSize();
        }
        return maxSize;
    }

    @Override // coil3.memory.MemoryCache
    public long getSize() {
        long size;
        synchronized (this.f682x1378447b) {
            size = this.f680xfbe0c504.getSize();
        }
        return size;
    }

    @Override // coil3.memory.MemoryCache
    public boolean remove(@NotNull MemoryCache.Key key) {
        boolean z;
        synchronized (this.f682x1378447b) {
            boolean remove = this.f680xfbe0c504.remove(key);
            boolean remove2 = this.f681x3271d0aa.remove(key);
            if (!remove && !remove2) {
                z = false;
            } else {
                z = true;
            }
        }
        return z;
    }

    @Override // coil3.memory.MemoryCache
    public void set(@NotNull MemoryCache.Key key, @NotNull MemoryCache.Value value) {
        synchronized (this.f682x1378447b) {
            long size = value.getImage().getSize();
            if (size >= 0) {
                this.f680xfbe0c504.set(key, value.getImage(), value.getExtras(), size);
            } else {
                throw new IllegalStateException(("Image size must be non-negative: " + size).toString());
            }
        }
    }

    @Override // coil3.memory.MemoryCache
    public void trimToSize(long size) {
        synchronized (this.f682x1378447b) {
            this.f680xfbe0c504.trimToSize(size);
        }
    }
}
