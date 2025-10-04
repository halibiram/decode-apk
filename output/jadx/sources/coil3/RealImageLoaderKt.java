package coil3;

import coil3.ComponentRegistry;
import coil3.RealImageLoader;
import coil3.fetch.ByteArrayFetcher;
import coil3.fetch.DataUriFetcher;
import coil3.fetch.FileUriFetcher;
import coil3.key.FileUriKeyer;
import coil3.key.UriKeyer;
import coil3.map.PathMapper;
import coil3.map.StringMapper;
import defpackage.C0396x4a23d5ac;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Path;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u001b\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0013\u0010\u0005\u001a\u00020\u0000*\u00020\u0000H\u0000¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcoil3/ComponentRegistry$Builder;", "Lcoil3/RealImageLoader$Options;", "options", "addServiceLoaderComponents", "(Lcoil3/ComponentRegistry$Builder;Lcoil3/RealImageLoader$Options;)Lcoil3/ComponentRegistry$Builder;", "addCommonComponents", "(Lcoil3/ComponentRegistry$Builder;)Lcoil3/ComponentRegistry$Builder;", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealImageLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealImageLoader.kt\ncoil3/RealImageLoaderKt\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 ComponentRegistry.kt\ncoil3/ComponentRegistry$Builder\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 collections.kt\ncoil3/util/CollectionsKt\n*L\n1#1,308:1\n47#2,4:309\n149#3:313\n149#3:314\n157#3:315\n157#3:316\n165#3:317\n165#3:318\n165#3:319\n1062#4:320\n1062#4:329\n57#5,8:321\n57#5,8:330\n*S KotlinDebug\n*F\n+ 1 RealImageLoader.kt\ncoil3/RealImageLoaderKt\n*L\n232#1:309,4\n294#1:313\n295#1:314\n297#1:315\n298#1:316\n300#1:317\n301#1:318\n302#1:319\n260#1:320\n270#1:329\n261#1:321,8\n271#1:330,8\n*E\n"})
/* loaded from: classes.dex */
public final class RealImageLoaderKt {
    @NotNull
    public static final ComponentRegistry.Builder addCommonComponents(@NotNull ComponentRegistry.Builder builder) {
        return builder.add(new StringMapper(), Reflection.getOrCreateKotlinClass(String.class)).add(new PathMapper(), Reflection.getOrCreateKotlinClass(Path.class)).add(new FileUriKeyer(), Reflection.getOrCreateKotlinClass(Uri.class)).add(new UriKeyer(), Reflection.getOrCreateKotlinClass(Uri.class)).add(new FileUriFetcher.Factory(), Reflection.getOrCreateKotlinClass(Uri.class)).add(new ByteArrayFetcher.Factory(), Reflection.getOrCreateKotlinClass(byte[].class)).add(new DataUriFetcher.Factory(), Reflection.getOrCreateKotlinClass(Uri.class));
    }

    @NotNull
    public static final ComponentRegistry.Builder addServiceLoaderComponents(@NotNull ComponentRegistry.Builder builder, @NotNull RealImageLoader.Options options) {
        if (ImageLoadersKt.getServiceLoaderEnabled(options)) {
            builder.addFetcherFactories(new C0396x4a23d5ac(26));
            builder.addDecoderFactories(new C0396x4a23d5ac(27));
        }
        return builder;
    }
}
