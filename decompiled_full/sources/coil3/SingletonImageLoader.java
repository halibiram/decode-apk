package coil3;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import coil3.annotation.DelicateCoilApi;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0014J\u001b\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u000e\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000e\u0010\fJ\u000f\u0010\u0010\u001a\u00020\nH\u0007¢\u0006\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00128\u0002X\u0082\u0004¨\u0006\u0015"}, d2 = {"Lcoil3/SingletonImageLoader;", "", "Landroid/content/Context;", "Lcoil3/PlatformContext;", "context", "Lcoil3/ImageLoader;", "get", "(Landroid/content/Context;)Lcoil3/ImageLoader;", "Lcoil3/SingletonImageLoader$Factory;", "factory", "", "setSafe", "(Lcoil3/SingletonImageLoader$Factory;)V", "imageLoader", "setUnsafe", "(Lcoil3/ImageLoader;)V", "reset", "()V", "Lkotlinx/atomicfu/AtomicRef;", TypedValues.Custom.S_REFERENCE, "Factory", "coil_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSingletonImageLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingletonImageLoader.kt\ncoil3/SingletonImageLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,131:1\n1#2:132\n*E\n"})
/* loaded from: classes.dex */
public final class SingletonImageLoader {

    @NotNull
    public static final SingletonImageLoader INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReference f489xfbe0c504 = new AtomicReference(null);

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcoil3/SingletonImageLoader$Factory;", "", "newImageLoader", "Lcoil3/ImageLoader;", "context", "Landroid/content/Context;", "Lcoil3/PlatformContext;", "coil_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface Factory {
        @NotNull
        ImageLoader newImageLoader(@NotNull Context context);
    }

    @JvmStatic
    @NotNull
    public static final ImageLoader get(@NotNull Context context) {
        ImageLoader imageLoader;
        ImageLoader imageLoader2;
        Factory factory;
        Factory factory2;
        SingletonImageLoader singletonImageLoader = INSTANCE;
        singletonImageLoader.getClass();
        AtomicReference atomicReference = f489xfbe0c504;
        Object obj = atomicReference.get();
        if (obj instanceof ImageLoader) {
            imageLoader = (ImageLoader) obj;
        } else {
            imageLoader = null;
        }
        if (imageLoader == null) {
            singletonImageLoader.getClass();
            ImageLoader imageLoader3 = null;
            while (true) {
                Object obj2 = atomicReference.get();
                if (obj2 instanceof ImageLoader) {
                    imageLoader2 = imageLoader3;
                    imageLoader3 = (ImageLoader) obj2;
                } else {
                    if (imageLoader3 == null) {
                        if (obj2 instanceof Factory) {
                            factory = (Factory) obj2;
                        } else {
                            factory = null;
                        }
                        if (factory == null || (imageLoader3 = factory.newImageLoader(context)) == null) {
                            Factory applicationImageLoaderFactory = SingletonImageLoader_androidKt.applicationImageLoaderFactory(context);
                            if (applicationImageLoaderFactory == null) {
                                factory2 = SingletonImageLoaderKt.f490xfbe0c504;
                                imageLoader3 = factory2.newImageLoader(context);
                            } else {
                                imageLoader3 = applicationImageLoaderFactory.newImageLoader(context);
                            }
                        }
                    }
                    imageLoader2 = imageLoader3;
                }
                while (!atomicReference.compareAndSet(obj2, imageLoader3)) {
                    if (atomicReference.get() != obj2) {
                        break;
                    }
                }
                Intrinsics.checkNotNull(imageLoader3, "null cannot be cast to non-null type coil3.ImageLoader");
                return imageLoader3;
                imageLoader3 = imageLoader2;
            }
        } else {
            return imageLoader;
        }
    }

    @JvmStatic
    @DelicateCoilApi
    public static final void reset() {
        INSTANCE.getClass();
        f489xfbe0c504.set(null);
    }

    @JvmStatic
    public static final void setSafe(@NotNull Factory factory) {
        SingletonImageLoader singletonImageLoader = INSTANCE;
        singletonImageLoader.getClass();
        AtomicReference atomicReference = f489xfbe0c504;
        Object obj = atomicReference.get();
        if (obj instanceof ImageLoader) {
            if (!SingletonImageLoaderKt.access$isDefault((ImageLoader) obj)) {
            } else {
                throw new IllegalStateException("The singleton image loader has already been created. This indicates that 'setSafe' is being called after the first 'get' call. Ensure that 'setSafe' is called before any Coil API usages (e.g. `load`, `AsyncImage`, `rememberAsyncImagePainter`, etc.).");
            }
        } else {
            singletonImageLoader.getClass();
            while (!atomicReference.compareAndSet(obj, factory) && atomicReference.get() == obj) {
            }
        }
    }

    @JvmStatic
    @DelicateCoilApi
    public static final void setUnsafe(@NotNull ImageLoader imageLoader) {
        INSTANCE.getClass();
        f489xfbe0c504.set(imageLoader);
    }

    @JvmStatic
    @DelicateCoilApi
    public static final void setUnsafe(@NotNull Factory factory) {
        INSTANCE.getClass();
        f489xfbe0c504.set(factory);
    }
}
