package defpackage;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* renamed from: 뒙땦뒘돝딀돵땭딜돴뒈땀뒐딹뎠둣돝듻딹뒾돨듻돳듽딽디땻딃듔딟둔땰둔딀땵둘드뎸땐둘딨디땅뒛뎽딎드듼돴땜뒵돵둬듐되둔딠뒘뎡듔돴뒾듰돰둔딸둬됨땨뒵듐땋땰뎹딄돛뒈둬돝딜됐돰땤뎡듸땠돰뒬뒉돼돼돸딠됫듸뎰듻뎨딀딜됩둡땬둣딃딹돸돴딎뒨될딄뒙뎽됫땍듽뒉돸뒨땐땮딜딌둬듬득땻뎰땻돠, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0700xb39e25f6 implements Map, Serializable, KMappedMarker {
    private static final long serialVersionUID = 8246714829545688274L;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final C0700xb39e25f6 f4546xfbe0c504 = new Object();

    private final Object readResolve() {
        return f4546xfbe0c504;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return false;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        if (!(obj instanceof Void)) {
            return false;
        }
        Void value = (Void) obj;
        Intrinsics.checkNotNullParameter(value, "value");
        return false;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        return EmptySet.INSTANCE;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if ((obj instanceof Map) && ((Map) obj).isEmpty()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        return null;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return 0;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return true;
    }

    @Override // java.util.Map
    public final Set keySet() {
        return EmptySet.INSTANCE;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return 0;
    }

    public final String toString() {
        return "{}";
    }

    @Override // java.util.Map
    public final Collection values() {
        return EmptyList.INSTANCE;
    }
}
