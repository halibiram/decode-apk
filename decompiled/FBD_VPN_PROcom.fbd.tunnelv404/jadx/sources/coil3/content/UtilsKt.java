package coil3.content;

import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.Image;
import coil3.Uri;
import coil3.content.Logger;
import coil3.decode.DataSource;
import coil3.decode.Decoder;
import coil3.fetch.Fetcher;
import coil3.intercept.Interceptor;
import coil3.intercept.RealInterceptorChain;
import coil3.key.Keyer;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.NullRequestDataException;
import coil3.request.Options;
import defpackage.C0625xb5f90305;
import defpackage.C0626xc050f747;
import defpackage.C0719x8b801f1b;
import java.io.Closeable;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.coroutines.CoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0017\u0010\u0003\u001a\u00020\u0002*\u00060\u0000j\u0002`\u0001H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0017\u0010\u0003\u001a\u00020\u0002*\u00060\u0005j\u0002`\u0006H\u0000¢\u0006\u0004\b\u0003\u0010\u0007\u001a7\u0010\u0011\u001a\u0004\u0018\u00010\u000f*\u00020\b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a1\u0010\u0018\u001a\u00020\u0013*\u00020\u00132\u001c\u0010\u0017\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0015\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0016\u0018\u00010\u0014H\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001d\u0010\u0018\u001a\u00020\u0013*\u00020\u00132\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0000¢\u0006\u0004\b\u0018\u0010\u001c\u001a\u0013\u0010\u001f\u001a\u00020\u001e*\u00020\u001dH\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u0017\u0010#\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020!H\u0000¢\u0006\u0004\b#\u0010$\u001a\u001f\u0010*\u001a\u00020)2\u0006\u0010&\u001a\u00020%2\u0006\u0010(\u001a\u00020'H\u0000¢\u0006\u0004\b*\u0010+\"\u0014\u0010,\u001a\u00020\u000f8\u0000X\u0080T¢\u0006\u0006\n\u0004\b,\u0010-\"\u0014\u0010.\u001a\u00020\u000f8\u0000X\u0080T¢\u0006\u0006\n\u0004\b.\u0010-\"\u0014\u0010/\u001a\u00020\u000f8\u0000X\u0080T¢\u0006\u0006\n\u0004\b/\u0010-\"\u0014\u00100\u001a\u00020\u000f8\u0000X\u0080T¢\u0006\u0006\n\u0004\b0\u0010-\"\u0014\u00101\u001a\u00020\u000f8\u0000X\u0080T¢\u0006\u0006\n\u0004\b1\u0010-\"\u0014\u00102\u001a\u00020\u000f8\u0000X\u0080T¢\u0006\u0006\n\u0004\b2\u0010-\"\u0018\u00106\u001a\u00020\u000f*\u0002038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b4\u00105\"(\u00109\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0006\u0012\u0004\u0018\u000108078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0018\u0010>\u001a\u00020\u001e*\u00020=8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?\"\u0018\u0010C\u001a\u00020@*\u00020=8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bA\u0010B\" \u0010J\u001a\u0004\u0018\u00010E*\u00020D8@X\u0080\u0004¢\u0006\f\u0012\u0004\bH\u0010I\u001a\u0004\bF\u0010G¨\u0006K"}, d2 = {"Ljava/io/Closeable;", "Lokio/Closeable;", "", "closeQuietly", "(Ljava/io/Closeable;)V", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "(Ljava/lang/AutoCloseable;)V", "Lcoil3/ComponentRegistry;", "", "data", "Lcoil3/request/Options;", "options", "Lcoil3/util/Logger;", "logger", "", "tag", "key", "(Lcoil3/ComponentRegistry;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/util/Logger;Ljava/lang/String;)Ljava/lang/String;", "Lcoil3/ComponentRegistry$Builder;", "Lkotlin/Pair;", "Lcoil3/fetch/Fetcher$Factory;", "Lkotlin/reflect/KClass;", "pair", "addFirst", "(Lcoil3/ComponentRegistry$Builder;Lkotlin/Pair;)Lcoil3/ComponentRegistry$Builder;", "Lcoil3/decode/Decoder$Factory;", "factory", "(Lcoil3/ComponentRegistry$Builder;Lcoil3/decode/Decoder$Factory;)Lcoil3/ComponentRegistry$Builder;", "", "", "isMinOrMax", "(I)Z", "Lcoil3/Uri;", "uri", "isFileUri", "(Lcoil3/Uri;)Z", "Lcoil3/request/ImageRequest;", "request", "", "throwable", "Lcoil3/request/ErrorResult;", "ErrorResult", "(Lcoil3/request/ImageRequest;Ljava/lang/Throwable;)Lcoil3/request/ErrorResult;", "MIME_TYPE_JPEG", "Ljava/lang/String;", "MIME_TYPE_WEBP", "MIME_TYPE_HEIC", "MIME_TYPE_HEIF", "MIME_TYPE_XML", "SCHEME_FILE", "Lcoil3/decode/DataSource;", "getEmoji", "(Lcoil3/decode/DataSource;)Ljava/lang/String;", "emoji", "Lkotlin/Function1;", "Lcoil3/Image;", "EMPTY_IMAGE_FACTORY", "Lkotlin/jvm/functions/Function1;", "getEMPTY_IMAGE_FACTORY", "()Lkotlin/jvm/functions/Function1;", "Lcoil3/intercept/Interceptor$Chain;", "isPlaceholderCached", "(Lcoil3/intercept/Interceptor$Chain;)Z", "Lcoil3/EventListener;", "getEventListener", "(Lcoil3/intercept/Interceptor$Chain;)Lcoil3/EventListener;", "eventListener", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/CoroutineDispatcher;", "getDispatcher", "(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineDispatcher;", "getDispatcher$annotations", "(Lkotlin/coroutines/CoroutineContext;)V", "dispatcher", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nutils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 utils.kt\ncoil3/util/UtilsKt\n+ 2 collections.kt\ncoil3/util/CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 logging.kt\ncoil3/util/LoggingKt\n*L\n1#1,133:1\n43#2,2:134\n46#2:137\n1#3:136\n68#4,4:138\n*S KotlinDebug\n*F\n+ 1 utils.kt\ncoil3/util/UtilsKt\n*L\n60#1:134,2\n60#1:137\n67#1:138,4\n*E\n"})
/* loaded from: classes.dex */
public final class UtilsKt {

    @NotNull
    public static final String MIME_TYPE_HEIC = "image/heic";

    @NotNull
    public static final String MIME_TYPE_HEIF = "image/heif";

    @NotNull
    public static final String MIME_TYPE_JPEG = "image/jpeg";

    @NotNull
    public static final String MIME_TYPE_WEBP = "image/webp";

    @NotNull
    public static final String MIME_TYPE_XML = "text/xml";

    @NotNull
    public static final String SCHEME_FILE = "file";

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DataSource.values().length];
            try {
                iArr[DataSource.MEMORY_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DataSource.MEMORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DataSource.DISK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DataSource.NETWORK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public static final ErrorResult ErrorResult(@NotNull ImageRequest imageRequest, @NotNull Throwable th) {
        Image error;
        if (th instanceof NullRequestDataException) {
            error = imageRequest.fallback();
            if (error == null) {
                error = imageRequest.error();
            }
        } else {
            error = imageRequest.error();
        }
        return new ErrorResult(error, imageRequest, th);
    }

    @NotNull
    public static final ComponentRegistry.Builder addFirst(@NotNull ComponentRegistry.Builder builder, @Nullable Pair<? extends Fetcher.Factory<?>, ? extends KClass<?>> pair) {
        if (pair != null) {
            builder.getLazyFetcherFactories$coil_core_release().add(0, new C0625xb5f90305(pair, 1));
        }
        return builder;
    }

    public static final void closeQuietly(@NotNull Closeable closeable) {
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    @Nullable
    public static final CoroutineDispatcher getDispatcher(@NotNull CoroutineContext coroutineContext) {
        return (CoroutineDispatcher) coroutineContext.get(CoroutineDispatcher.INSTANCE);
    }

    public static /* synthetic */ void getDispatcher$annotations(CoroutineContext coroutineContext) {
    }

    @NotNull
    public static final Function1<ImageRequest, Image> getEMPTY_IMAGE_FACTORY() {
        return C0719x8b801f1b.f4614x1378447b;
    }

    @NotNull
    public static final String getEmoji(@NotNull DataSource dataSource) {
        int i = WhenMappings.$EnumSwitchMapping$0[dataSource.ordinal()];
        if (i != 1 && i != 2) {
            if (i != 3) {
                if (i == 4) {
                    return "☁️";
                }
                throw new NoWhenBranchMatchedException();
            }
            return "💾";
        }
        return "🧠";
    }

    @NotNull
    public static final EventListener getEventListener(@NotNull Interceptor.Chain chain) {
        if (chain instanceof RealInterceptorChain) {
            return ((RealInterceptorChain) chain).getEventListener();
        }
        return EventListener.NONE;
    }

    public static final boolean isFileUri(@NotNull Uri uri) {
        if ((uri.getScheme() == null || Intrinsics.areEqual(uri.getScheme(), SCHEME_FILE)) && uri.getPath() != null && !Utils_androidKt.isAssetUri(uri)) {
            return true;
        }
        return false;
    }

    public static final boolean isMinOrMax(int i) {
        return i == Integer.MIN_VALUE || i == Integer.MAX_VALUE;
    }

    public static final boolean isPlaceholderCached(@NotNull Interceptor.Chain chain) {
        if ((chain instanceof RealInterceptorChain) && ((RealInterceptorChain) chain).getIsPlaceholderCached()) {
            return true;
        }
        return false;
    }

    @Nullable
    public static final String key(@NotNull ComponentRegistry componentRegistry, @NotNull Object obj, @NotNull Options options, @Nullable Logger logger, @NotNull String str) {
        List<Pair<Keyer<? extends Object>, KClass<? extends Object>>> keyers = componentRegistry.getKeyers();
        int size = keyers.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            Pair<Keyer<? extends Object>, KClass<? extends Object>> pair = keyers.get(i);
            Keyer<? extends Object> component1 = pair.component1();
            if (pair.component2().isInstance(obj)) {
                Intrinsics.checkNotNull(component1, "null cannot be cast to non-null type coil3.key.Keyer<kotlin.Any>");
                String key = component1.key(obj, options);
                if (key != null) {
                    return key;
                }
                z = true;
            }
        }
        if (!z && logger != null) {
            Logger.Level level = Logger.Level.Warn;
            if (logger.getMinLevel().compareTo(level) <= 0) {
                logger.log(str, level, "No keyer is registered for data with type '" + Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName() + "'. Register Keyer<" + Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName() + "> in the component registry to cache the output image in the memory cache.", null);
            }
        }
        return null;
    }

    @NotNull
    public static final ComponentRegistry.Builder addFirst(@NotNull ComponentRegistry.Builder builder, @Nullable Decoder.Factory factory) {
        if (factory != null) {
            builder.getLazyDecoderFactories$coil_core_release().add(0, new C0626xc050f747(factory, 2));
        }
        return builder;
    }

    public static final void closeQuietly(@NotNull AutoCloseable autoCloseable) {
        try {
            autoCloseable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }
}
