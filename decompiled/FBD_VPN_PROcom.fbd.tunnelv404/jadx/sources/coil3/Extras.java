package coil3;

import androidx.exifinterface.media.ExifInterface;
import coil3.content.Collections_jvmCommonKt;
import defpackage.AbstractC0962xa4a1ff52;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \r2\u00020\u0001:\u0003\u000e\u000f\rJ&\u0010\u0005\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0086\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\b\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcoil3/Extras;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lcoil3/Extras$Key;", "key", "get", "(Lcoil3/Extras$Key;)Ljava/lang/Object;", "", "asMap", "()Ljava/util/Map;", "Lcoil3/Extras$Builder;", "newBuilder", "()Lcoil3/Extras$Builder;", "Companion", "Key", "Builder", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Extras {

    @JvmField
    @NotNull
    public static final Extras EMPTY = new Builder().build();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Map f458xfbe0c504;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\t\u0018\u0000 \n*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\nB\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00028\u00008\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcoil3/Extras$Key;", ExifInterface.GPS_DIRECTION_TRUE, "", "default", "<init>", "(Ljava/lang/Object;)V", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Ljava/lang/Object;", "getDefault", "()Ljava/lang/Object;", "Companion", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Key<T> {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final Object default;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcoil3/Extras$Key$Companion;", "", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        public Key(T t) {
            this.default = t;
        }

        public final T getDefault() {
            return (T) this.default;
        }
    }

    public Extras(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this.f458xfbe0c504 = map;
    }

    @NotNull
    public final Map<Key<?>, Object> asMap() {
        return this.f458xfbe0c504;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Extras) && Intrinsics.areEqual(this.f458xfbe0c504, ((Extras) obj).f458xfbe0c504);
    }

    @Nullable
    public final <T> T get(@NotNull Key<T> key) {
        return (T) this.f458xfbe0c504.get(key);
    }

    public int hashCode() {
        return this.f458xfbe0c504.hashCode();
    }

    @NotNull
    public final Builder newBuilder() {
        return new Builder(this);
    }

    @NotNull
    public String toString() {
        return "Extras(data=" + this.f458xfbe0c504 + ')';
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B!\b\u0016\u0012\u0016\u0010\u0006\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0004\b\u0002\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0002\u0010\nJ.\u0010\u000e\u001a\u00020\u0000\"\u0004\b\u0000\u0010\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0010\r\u001a\u0004\u0018\u00018\u0000H\u0086\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcoil3/Extras$Builder;", "", "<init>", "()V", "", "Lcoil3/Extras$Key;", "map", "(Ljava/util/Map;)V", "Lcoil3/Extras;", "extras", "(Lcoil3/Extras;)V", ExifInterface.GPS_DIRECTION_TRUE, "key", "value", "set", "(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;", "setAll", "(Lcoil3/Extras;)Lcoil3/Extras$Builder;", "build", "()Lcoil3/Extras;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final Map f459xfbe0c504;

        public Builder() {
            this.f459xfbe0c504 = new LinkedHashMap();
        }

        @NotNull
        public final Extras build() {
            return new Extras(Collections_jvmCommonKt.toImmutableMap(this.f459xfbe0c504), null);
        }

        @NotNull
        public final <T> Builder set(@NotNull Key<T> key, @Nullable T value) {
            Map map = this.f459xfbe0c504;
            if (value != null) {
                map.put(key, value);
            } else {
                map.remove(key);
            }
            return this;
        }

        @NotNull
        public final Builder setAll(@NotNull Extras extras) {
            for (Map.Entry entry : extras.f458xfbe0c504.entrySet()) {
                Key key = (Key) entry.getKey();
                Object value = entry.getValue();
                Intrinsics.checkNotNull(key, "null cannot be cast to non-null type coil3.Extras.Key<kotlin.Any>");
                set(key, value);
            }
            return this;
        }

        public Builder(@NotNull Map<Key<?>, ? extends Object> map) {
            this.f459xfbe0c504 = AbstractC0962xa4a1ff52.toMutableMap(map);
        }

        public Builder(@NotNull Extras extras) {
            this.f459xfbe0c504 = AbstractC0962xa4a1ff52.toMutableMap(extras.f458xfbe0c504);
        }
    }
}
