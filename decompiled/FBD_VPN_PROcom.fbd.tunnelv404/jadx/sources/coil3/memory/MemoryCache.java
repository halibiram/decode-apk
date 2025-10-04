package coil3.memory;

import android.content.Context;
import coil3.Image;
import coil3.content.Collections_jvmCommonKt;
import defpackage.AbstractC0962xa4a1ff52;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001:\u0003\u0017\u0018\u0019J\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\nH¦\u0002J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u000eH¦\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\nH&J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0016\u001a\u00020\u0011H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001aÀ\u0006\u0001"}, d2 = {"Lcoil3/memory/MemoryCache;", "", "size", "", "getSize", "()J", "maxSize", "getMaxSize", "keys", "", "Lcoil3/memory/MemoryCache$Key;", "getKeys", "()Ljava/util/Set;", "get", "Lcoil3/memory/MemoryCache$Value;", "key", "set", "", "value", "remove", "", "trimToSize", "clear", "Key", "Value", "Builder", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public interface MemoryCache {

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\u0006\u001a\u00020\u00002\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0004\b\u0006\u0010\tJ#\u0010\u000f\u001a\u00020\u00002\n\u0010\f\u001a\u00060\nj\u0002`\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0014J\r\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcoil3/memory/MemoryCache$Builder;", "", "<init>", "()V", "", "size", "maxSizeBytes", "(J)Lcoil3/memory/MemoryCache$Builder;", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Lcoil3/memory/MemoryCache$Builder;", "Landroid/content/Context;", "Lcoil3/PlatformContext;", "context", "", "percent", "maxSizePercent", "(Landroid/content/Context;D)Lcoil3/memory/MemoryCache$Builder;", "", "enable", "strongReferencesEnabled", "(Z)Lcoil3/memory/MemoryCache$Builder;", "weakReferencesEnabled", "Lcoil3/memory/MemoryCache;", "build", "()Lcoil3/memory/MemoryCache;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nMemoryCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryCache.kt\ncoil3/memory/MemoryCache$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,189:1\n1#2:190\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public Function0 f670xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public boolean f671x3271d0aa = true;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
        public boolean f672x1378447b = true;

        public static /* synthetic */ Builder maxSizePercent$default(Builder builder, Context context, double d, int i, Object obj) {
            if ((i & 2) != 0) {
                d = coil3.content.Context.defaultMemoryCacheSizePercent(context);
            }
            return builder.maxSizePercent(context, d);
        }

        @NotNull
        public final MemoryCache build() {
            WeakMemoryCache emptyWeakMemoryCache;
            StrongMemoryCache emptyStrongMemoryCache;
            if (this.f672x1378447b) {
                emptyWeakMemoryCache = new RealWeakMemoryCache();
            } else {
                emptyWeakMemoryCache = new EmptyWeakMemoryCache();
            }
            if (this.f671x3271d0aa) {
                Function0 function0 = this.f670xfbe0c504;
                if (function0 != null) {
                    long longValue = ((Number) function0.invoke()).longValue();
                    if (longValue > 0) {
                        emptyStrongMemoryCache = new RealStrongMemoryCache(longValue, emptyWeakMemoryCache);
                    } else {
                        emptyStrongMemoryCache = new EmptyStrongMemoryCache(emptyWeakMemoryCache);
                    }
                } else {
                    throw new IllegalStateException("maxSizeBytesFactory == null");
                }
            } else {
                emptyStrongMemoryCache = new EmptyStrongMemoryCache(emptyWeakMemoryCache);
            }
            return new RealMemoryCache(emptyStrongMemoryCache, emptyWeakMemoryCache);
        }

        @NotNull
        public final Builder maxSizeBytes(final long size) {
            this.f670xfbe0c504 = new Function0() { // from class: 딞뒈땩땡뎻딜딜뒻돛땍땣뒬땐딻딹돳땨드둔듼땀딠돛뎨딸딌뒵둑뒛땭돝땟딄땳땤들뎨뒙뎽돶딽땝돛뒋딄딞든뎬땨딹딃드땅둑딨뒐뒨드뎻땳되딠둔땐되뎬됴되돷돝됫돼땪들듌뒬됫돷땰둣돝득뒾뒝뒀둠두뒤된땜딠됴뒨땥돰둣듐돠땳땁땨뒬됴듨딝땝땪땦돨됴도두뒼둠땜딤돸딃뎠됴뒵땦땬딤뒷들땧뒙땣뒹
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Long.valueOf(size);
                }
            };
            return this;
        }

        @NotNull
        public final Builder maxSizePercent(@NotNull final Context context, final double percent) {
            if (0.0d <= percent && percent <= 1.0d) {
                this.f670xfbe0c504 = new Function0() { // from class: 딝땵듐뎬뒤땫뒬땔땦뒛뒋돶땮됴되땸딄두뒝듟땥돤디뎡둥땦뒈뎹뎬돰땋돛딀딎땟땠뎸드딄듔듻땤둑뒼땦뒵됐따땠뒬딠듟득땬뒾될딃땐딨땫돛땸돸딅듬뒋딹땡뒨돝들듌딐땃땝뒀땯땋땁땍뒛됴뒋땻듻땡뎨딤둑땩땮딐뎡땟땅뒛됩딠땨뎰둡딻뒙됐땧뒛땡딜디땝듟딐땅딎두듟뒨돨뒝돼땨뒐된둔듽땐돵뒉땻땲
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Long.valueOf((long) (percent * coil3.content.Context.totalAvailableMemoryBytes(context)));
                    }
                };
                return this;
            }
            throw new IllegalArgumentException("percent must be in the range [0.0, 1.0].");
        }

        @NotNull
        public final Builder strongReferencesEnabled(boolean enable) {
            this.f671x3271d0aa = enable;
            return this;
        }

        @NotNull
        public final Builder weakReferencesEnabled(boolean enable) {
            this.f672x1378447b = enable;
            return this;
        }

        @NotNull
        public final Builder maxSizeBytes(@NotNull Function0<Long> size) {
            this.f670xfbe0c504 = size;
            return this;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0012R#\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcoil3/memory/MemoryCache$Key;", "", "", "key", "", "extras", "<init>", "(Ljava/lang/String;Ljava/util/Map;)V", "copy", "(Ljava/lang/String;Ljava/util/Map;)Lcoil3/memory/MemoryCache$Key;", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "()Ljava/lang/String;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Ljava/lang/String;", "getKey", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Ljava/util/Map;", "getExtras", "()Ljava/util/Map;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Key {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final String key;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
        public final Map extras;

        /* JADX WARN: Multi-variable type inference failed */
        @JvmOverloads
        public Key(@NotNull String str) {
            this(str, null, 2, 0 == true ? 1 : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Key copy$default(Key key, String str, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                str = key.key;
            }
            if ((i & 2) != 0) {
                map = key.extras;
            }
            return key.copy(str, map);
        }

        @NotNull
        public final Key copy(@NotNull String key, @NotNull Map<String, String> extras) {
            return new Key(key, extras);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (other instanceof Key) {
                Key key = (Key) other;
                if (Intrinsics.areEqual(this.key, key.key) && Intrinsics.areEqual(this.extras, key.extras)) {
                    return true;
                }
            }
            return false;
        }

        @NotNull
        public final Map<String, String> getExtras() {
            return this.extras;
        }

        @NotNull
        public final String getKey() {
            return this.key;
        }

        public int hashCode() {
            return this.extras.hashCode() + (this.key.hashCode() * 31);
        }

        @NotNull
        public String toString() {
            return "Key(key=" + this.key + ", extras=" + this.extras + ')';
        }

        @JvmOverloads
        public Key(@NotNull String str, @NotNull Map<String, String> map) {
            this.key = str;
            this.extras = Collections_jvmCommonKt.toImmutableMap(map);
        }

        public /* synthetic */ Key(String str, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? AbstractC0962xa4a1ff52.emptyMap() : map);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R#\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcoil3/memory/MemoryCache$Value;", "", "Lcoil3/Image;", "image", "", "", "extras", "<init>", "(Lcoil3/Image;Ljava/util/Map;)V", "copy", "(Lcoil3/Image;Ljava/util/Map;)Lcoil3/memory/MemoryCache$Value;", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "()Ljava/lang/String;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lcoil3/Image;", "getImage", "()Lcoil3/Image;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Ljava/util/Map;", "getExtras", "()Ljava/util/Map;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Value {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final Image image;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
        public final Map extras;

        /* JADX WARN: Multi-variable type inference failed */
        @JvmOverloads
        public Value(@NotNull Image image) {
            this(image, null, 2, 0 == true ? 1 : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Value copy$default(Value value, Image image, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                image = value.image;
            }
            if ((i & 2) != 0) {
                map = value.extras;
            }
            return value.copy(image, map);
        }

        @NotNull
        public final Value copy(@NotNull Image image, @NotNull Map<String, ? extends Object> extras) {
            return new Value(image, extras);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (other instanceof Value) {
                Value value = (Value) other;
                if (Intrinsics.areEqual(this.image, value.image) && Intrinsics.areEqual(this.extras, value.extras)) {
                    return true;
                }
            }
            return false;
        }

        @NotNull
        public final Map<String, Object> getExtras() {
            return this.extras;
        }

        @NotNull
        public final Image getImage() {
            return this.image;
        }

        public int hashCode() {
            return this.extras.hashCode() + (this.image.hashCode() * 31);
        }

        @NotNull
        public String toString() {
            return "Value(image=" + this.image + ", extras=" + this.extras + ')';
        }

        @JvmOverloads
        public Value(@NotNull Image image, @NotNull Map<String, ? extends Object> map) {
            this.image = image;
            this.extras = Collections_jvmCommonKt.toImmutableMap(map);
        }

        public /* synthetic */ Value(Image image, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(image, (i & 2) != 0 ? AbstractC0962xa4a1ff52.emptyMap() : map);
        }
    }

    void clear();

    @Nullable
    Value get(@NotNull Key key);

    @NotNull
    Set<Key> getKeys();

    long getMaxSize();

    long getSize();

    boolean remove(@NotNull Key key);

    void set(@NotNull Key key, @NotNull Value value);

    void trimToSize(long size);
}
