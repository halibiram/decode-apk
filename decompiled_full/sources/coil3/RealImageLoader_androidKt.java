package coil3;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import coil3.ComponentRegistry;
import coil3.RealImageLoader;
import coil3.decode.BitmapFactoryDecoder;
import coil3.decode.ExifOrientationStrategy;
import coil3.decode.StaticImageDecoder;
import coil3.fetch.AssetUriFetcher;
import coil3.fetch.BitmapFetcher;
import coil3.fetch.ContentUriFetcher;
import coil3.fetch.DrawableFetcher;
import coil3.fetch.ResourceUriFetcher;
import coil3.key.AndroidResourceUriKeyer;
import coil3.map.AndroidUriMapper;
import coil3.map.ResourceIntMapper;
import coil3.request.Disposable;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.ImageResult;
import coil3.request.OneShotDisposable;
import coil3.request.ViewTargetRequestManagerKt;
import coil3.size.ViewSizeResolver;
import coil3.target.Target;
import coil3.target.ViewTarget;
import coil3.transition.NoneTransition;
import coil3.transition.Transition;
import coil3.transition.TransitionTarget;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a%\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0000¢\u0006\u0004\b\t\u0010\n\u001a8\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\b¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001b\u0010\u0018\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0016H\u0000¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcoil3/request/ImageRequest;", "request", "", "needsExecuteOnMainDispatcher", "(Lcoil3/request/ImageRequest;)Z", "Lkotlinx/coroutines/Deferred;", "Lcoil3/request/ImageResult;", "job", "Lcoil3/request/Disposable;", "getDisposable", "(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/Deferred;)Lcoil3/request/Disposable;", "result", "Lcoil3/target/Target;", TypedValues.AttributesType.S_TARGET, "Lcoil3/EventListener;", "eventListener", "Lkotlin/Function0;", "", "setDrawable", "transition", "(Lcoil3/request/ImageResult;Lcoil3/target/Target;Lcoil3/EventListener;Lkotlin/jvm/functions/Function0;)V", "Lcoil3/ComponentRegistry$Builder;", "Lcoil3/RealImageLoader$Options;", "options", "addAndroidComponents", "(Lcoil3/ComponentRegistry$Builder;Lcoil3/RealImageLoader$Options;)Lcoil3/ComponentRegistry$Builder;", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealImageLoader.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealImageLoader.android.kt\ncoil3/RealImageLoader_androidKt\n+ 2 ComponentRegistry.kt\ncoil3/ComponentRegistry$Builder\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n149#2:116\n149#2:117\n157#2:118\n165#2:119\n165#2:120\n165#2:121\n165#2:122\n165#2:123\n1#3:124\n*S KotlinDebug\n*F\n+ 1 RealImageLoader.android.kt\ncoil3/RealImageLoader_androidKt\n*L\n77#1:116\n78#1:117\n81#1:118\n84#1:119\n85#1:120\n86#1:121\n87#1:122\n88#1:123\n*E\n"})
/* loaded from: classes.dex */
public final class RealImageLoader_androidKt {
    @NotNull
    public static final ComponentRegistry.Builder addAndroidComponents(@NotNull ComponentRegistry.Builder builder, @NotNull RealImageLoader.Options options) {
        builder.add(new AndroidUriMapper(), Reflection.getOrCreateKotlinClass(android.net.Uri.class));
        builder.add(new ResourceIntMapper(), Reflection.getOrCreateKotlinClass(Integer.class));
        builder.add(new AndroidResourceUriKeyer(), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new AssetUriFetcher.Factory(), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new ContentUriFetcher.Factory(), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new ResourceUriFetcher.Factory(), Reflection.getOrCreateKotlinClass(Uri.class));
        builder.add(new DrawableFetcher.Factory(), Reflection.getOrCreateKotlinClass(Drawable.class));
        builder.add(new BitmapFetcher.Factory(), Reflection.getOrCreateKotlinClass(Bitmap.class));
        Semaphore Semaphore$default = SemaphoreKt.Semaphore$default(ImageLoaders_androidKt.getBitmapFactoryMaxParallelism(options), 0, 2, null);
        if (Build.VERSION.SDK_INT >= 29 && ImageLoaders_androidKt.getImageDecoderEnabled(options)) {
            ExifOrientationStrategy bitmapFactoryExifOrientationStrategy = ImageLoaders_androidKt.getBitmapFactoryExifOrientationStrategy(options);
            if (Intrinsics.areEqual(bitmapFactoryExifOrientationStrategy, ExifOrientationStrategy.RESPECT_PERFORMANCE) || Intrinsics.areEqual(bitmapFactoryExifOrientationStrategy, ExifOrientationStrategy.RESPECT_ALL)) {
                builder.add(new StaticImageDecoder.Factory(Semaphore$default));
            }
        }
        builder.add(new BitmapFactoryDecoder.Factory(Semaphore$default, ImageLoaders_androidKt.getBitmapFactoryExifOrientationStrategy(options)));
        return builder;
    }

    @NotNull
    public static final Disposable getDisposable(@NotNull ImageRequest imageRequest, @NotNull Deferred<? extends ImageResult> deferred) {
        if (imageRequest.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String() instanceof ViewTarget) {
            return ViewTargetRequestManagerKt.getRequestManager(((ViewTarget) imageRequest.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String()).getView()).getDisposable(deferred);
        }
        return new OneShotDisposable(deferred);
    }

    public static final boolean needsExecuteOnMainDispatcher(@NotNull ImageRequest imageRequest) {
        if (!(imageRequest.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String() instanceof ViewTarget) && !(imageRequest.getSizeResolver() instanceof ViewSizeResolver) && ImageRequests_androidKt.getLifecycle(imageRequest) == null) {
            return false;
        }
        return true;
    }

    public static final void transition(@NotNull ImageResult imageResult, @Nullable Target target, @NotNull EventListener eventListener, @NotNull Function0<Unit> function0) {
        if (!(target instanceof TransitionTarget)) {
            function0.invoke();
            return;
        }
        Transition create = ImageRequests_androidKt.getTransitionFactory(imageResult.getRequest()).create((TransitionTarget) target, imageResult);
        if (create instanceof NoneTransition) {
            function0.invoke();
            return;
        }
        eventListener.transitionStart(imageResult.getRequest(), create);
        create.transition();
        eventListener.transitionEnd(imageResult.getRequest(), create);
    }
}
