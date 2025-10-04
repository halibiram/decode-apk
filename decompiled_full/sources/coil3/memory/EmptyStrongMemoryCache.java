package coil3.memory;

import coil3.Image;
import coil3.memory.MemoryCache;
import defpackage.AbstractC1145xfc271605;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\"\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ;\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0012\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u001eR\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060!8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Lcoil3/memory/EmptyStrongMemoryCache;", "Lcoil3/memory/StrongMemoryCache;", "Lcoil3/memory/WeakMemoryCache;", "weakMemoryCache", "<init>", "(Lcoil3/memory/WeakMemoryCache;)V", "Lcoil3/memory/MemoryCache$Key;", "key", "Lcoil3/memory/MemoryCache$Value;", "get", "(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;", "Lcoil3/Image;", "image", "", "", "", "extras", "", "size", "", "set", "(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V", "", "remove", "(Lcoil3/memory/MemoryCache$Key;)Z", "trimToSize", "(J)V", "clear", "()V", "getSize", "()J", "getMaxSize", "maxSize", "", "getKeys", "()Ljava/util/Set;", "keys", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EmptyStrongMemoryCache implements StrongMemoryCache {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final WeakMemoryCache f669xfbe0c504;

    public EmptyStrongMemoryCache(@NotNull WeakMemoryCache weakMemoryCache) {
        this.f669xfbe0c504 = weakMemoryCache;
    }

    @Override // coil3.memory.StrongMemoryCache
    public void clear() {
    }

    @Override // coil3.memory.StrongMemoryCache
    @Nullable
    public MemoryCache.Value get(@NotNull MemoryCache.Key key) {
        return null;
    }

    @Override // coil3.memory.StrongMemoryCache
    @NotNull
    public Set<MemoryCache.Key> getKeys() {
        return AbstractC1145xfc271605.emptySet();
    }

    @Override // coil3.memory.StrongMemoryCache
    public long getMaxSize() {
        return 0L;
    }

    @Override // coil3.memory.StrongMemoryCache
    public long getSize() {
        return 0L;
    }

    @Override // coil3.memory.StrongMemoryCache
    public boolean remove(@NotNull MemoryCache.Key key) {
        return false;
    }

    @Override // coil3.memory.StrongMemoryCache
    public void set(@NotNull MemoryCache.Key key, @NotNull Image image, @NotNull Map<String, ? extends Object> extras, long size) {
        this.f669xfbe0c504.set(key, image, extras, size);
    }

    @Override // coil3.memory.StrongMemoryCache
    public void trimToSize(long size) {
    }
}
