package coil3.memory;

import coil3.Image;
import coil3.content.LruCache;
import coil3.memory.MemoryCache;
import defpackage.C1073xe273ffbe;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\"\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001%B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ;\u0010\u0015\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0013\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0003\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u001fR\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020\b0!8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lcoil3/memory/RealStrongMemoryCache;", "Lcoil3/memory/StrongMemoryCache;", "", "maxSize", "Lcoil3/memory/WeakMemoryCache;", "weakMemoryCache", "<init>", "(JLcoil3/memory/WeakMemoryCache;)V", "Lcoil3/memory/MemoryCache$Key;", "key", "Lcoil3/memory/MemoryCache$Value;", "get", "(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;", "Lcoil3/Image;", "image", "", "", "", "extras", "size", "", "set", "(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V", "", "remove", "(Lcoil3/memory/MemoryCache$Key;)Z", "clear", "()V", "trimToSize", "(J)V", "getSize", "()J", "getMaxSize", "", "getKeys", "()Ljava/util/Set;", "keys", "땃둡뎰뒵땦딄딐땥땍땄땪될땣땱땸땹둬듼뒀됴땄돝딅뒙딌돤뒨땩땋땱땲뒀뒐돸땵땨딜둡뒷돼뎠뒾땤둠돝땀뒹땦둘땹듟땭땡돵듐뎹뒬땅땠듰뎰땝땱듟돨땠딅뒻땰듽땳됫들드돶둑뒝딎땰돤돵둡도땜뎨땁딞따땧뒝돛딁땄땃땀땩딻뒋딻뒛돛딐땔땃딜둑됨땧땫딻땣뎡두돳뒻뎡듽뒬됩둡뒛둑뒋뒤땃뒷되뒈땫딃", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStrongMemoryCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StrongMemoryCache.kt\ncoil3/memory/RealStrongMemoryCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,121:1\n1#2:122\n*E\n"})
/* loaded from: classes.dex */
public final class RealStrongMemoryCache implements StrongMemoryCache {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final WeakMemoryCache f683xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final RealStrongMemoryCache$cache$1 f684x3271d0aa;

    /* JADX WARN: Type inference failed for: r3v1, types: [coil3.memory.RealStrongMemoryCache$cache$1] */
    public RealStrongMemoryCache(final long j, @NotNull WeakMemoryCache weakMemoryCache) {
        this.f683xfbe0c504 = weakMemoryCache;
        this.f684x3271d0aa = new LruCache<MemoryCache.Key, C1073xe273ffbe>(j) { // from class: coil3.memory.RealStrongMemoryCache$cache$1
            @Override // coil3.content.LruCache
            public void entryRemoved(MemoryCache.Key key, C1073xe273ffbe oldValue, C1073xe273ffbe newValue) {
                WeakMemoryCache weakMemoryCache2;
                weakMemoryCache2 = this.f683xfbe0c504;
                weakMemoryCache2.set(key, oldValue.f5357xfbe0c504, oldValue.f5358x3271d0aa, oldValue.f5359x1378447b);
            }

            @Override // coil3.content.LruCache
            public long sizeOf(MemoryCache.Key key, C1073xe273ffbe value) {
                return value.f5359x1378447b;
            }
        };
    }

    @Override // coil3.memory.StrongMemoryCache
    public void clear() {
        clear();
    }

    @Override // coil3.memory.StrongMemoryCache
    @Nullable
    public MemoryCache.Value get(@NotNull MemoryCache.Key key) {
        C1073xe273ffbe c1073xe273ffbe = get(key);
        if (c1073xe273ffbe != null) {
            return new MemoryCache.Value(c1073xe273ffbe.f5357xfbe0c504, c1073xe273ffbe.f5358x3271d0aa);
        }
        return null;
    }

    @Override // coil3.memory.StrongMemoryCache
    @NotNull
    public Set<MemoryCache.Key> getKeys() {
        return getKeys();
    }

    @Override // coil3.memory.StrongMemoryCache
    public long getMaxSize() {
        return getMaxSize();
    }

    @Override // coil3.memory.StrongMemoryCache
    public long getSize() {
        return getSize();
    }

    @Override // coil3.memory.StrongMemoryCache
    public boolean remove(@NotNull MemoryCache.Key key) {
        if (remove(key) != null) {
            return true;
        }
        return false;
    }

    @Override // coil3.memory.StrongMemoryCache
    public void set(@NotNull MemoryCache.Key key, @NotNull Image image, @NotNull Map<String, ? extends Object> extras, long size) {
        long maxSize = getMaxSize();
        RealStrongMemoryCache$cache$1 realStrongMemoryCache$cache$1 = this.f684x3271d0aa;
        if (size <= maxSize) {
            realStrongMemoryCache$cache$1.put(key, new C1073xe273ffbe(image, extras, size));
        } else {
            realStrongMemoryCache$cache$1.remove(key);
            this.f683xfbe0c504.set(key, image, extras, size);
        }
    }

    @Override // coil3.memory.StrongMemoryCache
    public void trimToSize(long size) {
        trimToSize(size);
    }
}
