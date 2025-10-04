package coil3.intercept;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import coil3.BitmapImage;
import coil3.Image;
import coil3.Image_androidKt;
import coil3.content.BitmapsKt;
import coil3.content.DrawableUtils;
import coil3.content.Logger;
import coil3.content.Utils_androidKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.transform.Transformation;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0000¨\u0006\u000b"}, d2 = {"convertImageToBitmap", "Landroid/graphics/Bitmap;", "image", "Lcoil3/Image;", "options", "Lcoil3/request/Options;", "transformations", "", "Lcoil3/transform/Transformation;", "logger", "Lcoil3/util/Logger;", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEngineInterceptor.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineInterceptor.android.kt\ncoil3/intercept/EngineInterceptor_androidKt\n+ 2 logging.kt\ncoil3/util/LoggingKt\n*L\n1#1,52:1\n68#2,4:53\n68#2,4:57\n*S KotlinDebug\n*F\n+ 1 EngineInterceptor.android.kt\ncoil3/intercept/EngineInterceptor_androidKt\n*L\n31#1:53,4\n37#1:57,4\n*E\n"})
/* loaded from: classes.dex */
public final class EngineInterceptor_androidKt {
    @NotNull
    public static final Bitmap convertImageToBitmap(@NotNull Image image, @NotNull Options options, @NotNull List<? extends Transformation> list, @Nullable Logger logger) {
        boolean z;
        if (image instanceof BitmapImage) {
            Bitmap bitmap = ((BitmapImage) image).getBitmap();
            Bitmap.Config safeConfig = BitmapsKt.getSafeConfig(bitmap);
            if (ArraysKt___ArraysKt.contains(Utils_androidKt.getVALID_TRANSFORMATION_CONFIGS(), safeConfig)) {
                return bitmap;
            }
            if (logger != null) {
                Logger.Level level = Logger.Level.Info;
                if (logger.getMinLevel().compareTo(level) <= 0) {
                    logger.log(EngineInterceptor.TAG, level, "Converting bitmap with config " + safeConfig + " to apply transformations: " + list + '.', null);
                }
            }
        } else if (logger != null) {
            Logger.Level level2 = Logger.Level.Info;
            if (logger.getMinLevel().compareTo(level2) <= 0) {
                logger.log(EngineInterceptor.TAG, level2, "Converting image of type " + Reflection.getOrCreateKotlinClass(image.getClass()).getQualifiedName() + " to apply transformations: " + list + '.', null);
            }
        }
        DrawableUtils drawableUtils = DrawableUtils.INSTANCE;
        Drawable asDrawable = Image_androidKt.asDrawable(image, options.getContext().getResources());
        Bitmap.Config bitmapConfig = ImageRequests_androidKt.getBitmapConfig(options);
        Size size = options.getSize();
        Scale scale = options.getScale();
        if (options.getPrecision() == Precision.INEXACT) {
            z = true;
        } else {
            z = false;
        }
        return drawableUtils.convertToBitmap(asDrawable, bitmapConfig, size, scale, z);
    }
}
