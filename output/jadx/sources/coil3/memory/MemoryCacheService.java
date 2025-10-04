package coil3.memory;

import coil3.BitmapImage;
import coil3.EventListener;
import coil3.Image;
import coil3.ImageLoader;
import coil3.content.Logger;
import coil3.content.UtilsKt;
import coil3.decode.DataSource;
import coil3.intercept.EngineInterceptor;
import coil3.intercept.Interceptor;
import coil3.memory.MemoryCache;
import coil3.request.ImageRequest;
import coil3.request.ImageRequestsKt;
import coil3.request.Options;
import coil3.request.RequestService;
import coil3.request.SuccessResult;
import coil3.size.Dimension;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.size.SizeKt;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0962xa4a1ff52;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 *2\u00020\u0001:\u0001*B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ/\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J/\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ7\u0010 \u001a\u00020\u001d2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ'\u0010#\u001a\u00020\u001d2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J-\u0010(\u001a\u00020'2\u0006\u0010&\u001a\u00020%2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0019¢\u0006\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lcoil3/memory/MemoryCacheService;", "", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/request/RequestService;", "requestService", "Lcoil3/util/Logger;", "logger", "<init>", "(Lcoil3/ImageLoader;Lcoil3/request/RequestService;Lcoil3/util/Logger;)V", "Lcoil3/request/ImageRequest;", "request", "mappedData", "Lcoil3/request/Options;", "options", "Lcoil3/EventListener;", "eventListener", "Lcoil3/memory/MemoryCache$Key;", "newCacheKey", "(Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;)Lcoil3/memory/MemoryCache$Key;", "cacheKey", "Lcoil3/size/Size;", "size", "Lcoil3/size/Scale;", "scale", "Lcoil3/memory/MemoryCache$Value;", "getCacheValue", "(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/size/Size;Lcoil3/size/Scale;)Lcoil3/memory/MemoryCache$Value;", "cacheValue", "", "isCacheValueValid$coil_core_release", "(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/MemoryCache$Value;Lcoil3/size/Size;Lcoil3/size/Scale;)Z", "isCacheValueValid", "Lcoil3/intercept/EngineInterceptor$ExecuteResult;", "result", "setCacheValue", "(Lcoil3/memory/MemoryCache$Key;Lcoil3/request/ImageRequest;Lcoil3/intercept/EngineInterceptor$ExecuteResult;)Z", "Lcoil3/intercept/Interceptor$Chain;", "chain", "Lcoil3/request/SuccessResult;", "newResult", "(Lcoil3/intercept/Interceptor$Chain;Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/MemoryCache$Value;)Lcoil3/request/SuccessResult;", "Companion", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMemoryCacheService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryCacheService.kt\ncoil3/memory/MemoryCacheService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 logging.kt\ncoil3/util/LoggingKt\n+ 4 Dimension.kt\ncoil3/size/DimensionKt\n*L\n1#1,249:1\n1#2:250\n68#3,4:251\n68#3,4:255\n68#3,4:263\n68#3,4:267\n43#4:259\n43#4:260\n43#4:261\n43#4:262\n*S KotlinDebug\n*F\n+ 1 MemoryCacheService.kt\ncoil3/memory/MemoryCacheService\n*L\n86#1:251,4\n111#1:255,4\n177#1:263,4\n187#1:267,4\n133#1:259\n134#1:260\n137#1:261\n138#1:262\n*E\n"})
/* loaded from: classes.dex */
public final class MemoryCacheService {

    @NotNull
    public static final String EXTRA_DISK_CACHE_KEY = "coil#disk_cache_key";

    @NotNull
    public static final String EXTRA_IS_SAMPLED = "coil#is_sampled";

    @NotNull
    public static final String EXTRA_SIZE = "coil#size";

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ImageLoader f677xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final RequestService f678x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Logger f679x1378447b;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Scale.values().length];
            try {
                iArr[Scale.FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Scale.FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Precision.values().length];
            try {
                iArr2[Precision.EXACT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Precision.INEXACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public MemoryCacheService(@NotNull ImageLoader imageLoader, @NotNull RequestService requestService, @Nullable Logger logger) {
        this.f677xfbe0c504 = imageLoader;
        this.f678x3271d0aa = requestService;
        this.f679x1378447b = logger;
    }

    @Nullable
    public final MemoryCache.Value getCacheValue(@NotNull ImageRequest request, @NotNull MemoryCache.Key cacheKey, @NotNull Size size, @NotNull Scale scale) {
        MemoryCache.Value value;
        if (!request.getMemoryCachePolicy().getReadEnabled()) {
            return null;
        }
        MemoryCache memoryCache = this.f677xfbe0c504.getMemoryCache();
        if (memoryCache != null) {
            value = memoryCache.get(cacheKey);
        } else {
            value = null;
        }
        if (value == null || !isCacheValueValid$coil_core_release(request, cacheKey, value, size, scale)) {
            return null;
        }
        return value;
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0183  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean isCacheValueValid$coil_core_release(@NotNull ImageRequest request, @NotNull MemoryCache.Key cacheKey, @NotNull MemoryCache.Value cacheValue, @NotNull Size size, @NotNull Scale scale) {
        Boolean bool;
        boolean z;
        Size size2;
        int i;
        int i2;
        int i3;
        int i4;
        Scale scale2;
        int abs;
        int abs2;
        boolean isCacheValueValidForHardware = this.f678x3271d0aa.isCacheValueValidForHardware(request, cacheValue);
        Logger logger = this.f679x1378447b;
        if (!isCacheValueValidForHardware) {
            if (logger != null) {
                Logger.Level level = Logger.Level.Debug;
                if (logger.getMinLevel().compareTo(level) <= 0) {
                    logger.log("MemoryCacheService", level, request.getData() + ": Cached bitmap is hardware-backed, which is incompatible with the request.", null);
                }
            }
            return false;
        }
        String str = cacheKey.getExtras().get(EXTRA_SIZE);
        if (str != null) {
            if (!Intrinsics.areEqual(str, size.toString())) {
                if (logger == null) {
                    return false;
                }
                Logger.Level level2 = Logger.Level.Debug;
                if (logger.getMinLevel().compareTo(level2) > 0) {
                    return false;
                }
                logger.log("MemoryCacheService", level2, request.getData() + ": Memory cached image's size (" + str + ") does not exactly match the target size (" + size + ").", null);
                return false;
            }
        } else {
            Object obj = cacheValue.getExtras().get(EXTRA_IS_SAMPLED);
            if (obj instanceof Boolean) {
                bool = (Boolean) obj;
            } else {
                bool = null;
            }
            if (bool != null) {
                z = bool.booleanValue();
            } else {
                z = false;
            }
            if (z || (!SizeKt.isOriginal(size) && request.getPrecision() != Precision.INEXACT)) {
                int width = cacheValue.getImage().getWidth();
                int height = cacheValue.getImage().getHeight();
                if (cacheValue.getImage() instanceof BitmapImage) {
                    size2 = ImageRequestsKt.getMaxBitmapSize(request);
                } else {
                    size2 = Size.ORIGINAL;
                }
                Dimension width2 = size.getWidth();
                if (width2 instanceof Dimension.Pixels) {
                    i = ((Dimension.Pixels) width2).m960unboximpl();
                } else {
                    i = Integer.MAX_VALUE;
                }
                Dimension width3 = size2.getWidth();
                if (width3 instanceof Dimension.Pixels) {
                    i2 = ((Dimension.Pixels) width3).m960unboximpl();
                } else {
                    i2 = Integer.MAX_VALUE;
                }
                int min = Math.min(i, i2);
                Dimension height2 = size.getHeight();
                if (height2 instanceof Dimension.Pixels) {
                    i3 = ((Dimension.Pixels) height2).m960unboximpl();
                } else {
                    i3 = Integer.MAX_VALUE;
                }
                Dimension height3 = size2.getHeight();
                if (height3 instanceof Dimension.Pixels) {
                    i4 = ((Dimension.Pixels) height3).m960unboximpl();
                } else {
                    i4 = Integer.MAX_VALUE;
                }
                int min2 = Math.min(i3, i4);
                double d = min / width;
                double d2 = min2 / height;
                if (min != Integer.MAX_VALUE && min2 != Integer.MAX_VALUE) {
                    scale2 = scale;
                } else {
                    scale2 = Scale.FIT;
                }
                int i5 = WhenMappings.$EnumSwitchMapping$0[scale2.ordinal()];
                if (i5 != 1) {
                    if (i5 == 2) {
                        if (d < d2) {
                            abs2 = Math.abs(min - width);
                            if (abs2 > 1) {
                                int i6 = WhenMappings.$EnumSwitchMapping$1[request.getPrecision().ordinal()];
                                if (i6 != 1) {
                                    if (i6 == 2) {
                                        if (d > 1.0d) {
                                            if (logger != null) {
                                                Logger.Level level3 = Logger.Level.Debug;
                                                if (logger.getMinLevel().compareTo(level3) <= 0) {
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append(request.getData());
                                                    sb.append(": Memory cached image's size (");
                                                    sb.append(width);
                                                    sb.append(", ");
                                                    sb.append(height);
                                                    sb.append(") is smaller than the target size (");
                                                    sb.append(min);
                                                    sb.append(", ");
                                                    logger.log("MemoryCacheService", level3, AbstractC0362x4440ab85.m2935x1db10c9d(sb, ").", min2), null);
                                                }
                                            }
                                            return false;
                                        }
                                    } else {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                } else if (d != 1.0d) {
                                    if (logger != null) {
                                        Logger.Level level4 = Logger.Level.Debug;
                                        if (logger.getMinLevel().compareTo(level4) <= 0) {
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append(request.getData());
                                            sb2.append(": Memory cached image's size (");
                                            sb2.append(width);
                                            sb2.append(", ");
                                            sb2.append(height);
                                            sb2.append(") does not exactly match the target size (");
                                            sb2.append(min);
                                            sb2.append(", ");
                                            logger.log("MemoryCacheService", level4, AbstractC0362x4440ab85.m2935x1db10c9d(sb2, ").", min2), null);
                                        }
                                    }
                                    return false;
                                }
                            }
                        } else {
                            abs = Math.abs(min2 - height);
                            d = d2;
                            abs2 = abs;
                            if (abs2 > 1) {
                            }
                        }
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                } else if (d > d2) {
                    abs2 = Math.abs(min - width);
                    if (abs2 > 1) {
                    }
                } else {
                    abs = Math.abs(min2 - height);
                    d = d2;
                    abs2 = abs;
                    if (abs2 > 1) {
                    }
                }
            }
        }
        return true;
    }

    @Nullable
    public final MemoryCache.Key newCacheKey(@NotNull ImageRequest request, @NotNull Object mappedData, @NotNull Options options, @NotNull EventListener eventListener) {
        if (request.getMemoryCacheKey() != null) {
            return new MemoryCache.Key(request.getMemoryCacheKey(), request.getMemoryCacheKeyExtras());
        }
        eventListener.keyStart(request, mappedData);
        String key = UtilsKt.key(this.f677xfbe0c504.getComponents(), mappedData, options, this.f679x1378447b, "MemoryCacheService");
        eventListener.keyEnd(request, key);
        if (key == null) {
            return null;
        }
        if (!ImageRequestsKt.getTransformations(request).isEmpty()) {
            Map mutableMap = AbstractC0962xa4a1ff52.toMutableMap(request.getMemoryCacheKeyExtras());
            mutableMap.put(EXTRA_SIZE, options.getSize().toString());
            return new MemoryCache.Key(key, mutableMap);
        }
        return new MemoryCache.Key(key, request.getMemoryCacheKeyExtras());
    }

    @NotNull
    public final SuccessResult newResult(@NotNull Interceptor.Chain chain, @NotNull ImageRequest request, @NotNull MemoryCache.Key cacheKey, @NotNull MemoryCache.Value cacheValue) {
        String str;
        boolean z;
        Image image = cacheValue.getImage();
        DataSource dataSource = DataSource.MEMORY_CACHE;
        Object obj = cacheValue.getExtras().get(EXTRA_DISK_CACHE_KEY);
        Boolean bool = null;
        if (obj instanceof String) {
            str = (String) obj;
        } else {
            str = null;
        }
        Object obj2 = cacheValue.getExtras().get(EXTRA_IS_SAMPLED);
        if (obj2 instanceof Boolean) {
            bool = (Boolean) obj2;
        }
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = false;
        }
        return new SuccessResult(image, request, dataSource, cacheKey, str, z, UtilsKt.isPlaceholderCached(chain));
    }

    public final boolean setCacheValue(@Nullable MemoryCache.Key cacheKey, @NotNull ImageRequest request, @NotNull EngineInterceptor.ExecuteResult result) {
        MemoryCache memoryCache;
        if (cacheKey == null || !request.getMemoryCachePolicy().getWriteEnabled() || !result.getImage().getShareable() || (memoryCache = this.f677xfbe0c504.getMemoryCache()) == null) {
            return false;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EXTRA_IS_SAMPLED, Boolean.valueOf(result.isSampled()));
        String diskCacheKey = result.getDiskCacheKey();
        if (diskCacheKey != null) {
            linkedHashMap.put(EXTRA_DISK_CACHE_KEY, diskCacheKey);
        }
        memoryCache.set(cacheKey, new MemoryCache.Value(result.getImage(), linkedHashMap));
        return true;
    }
}
