package coil3.content;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import coil3.BitmapImage;
import coil3.Image;
import coil3.Uri;
import coil3.UriKt;
import coil3.content.Logger;
import coil3.request.ImageRequest;
import coil3.size.Scale;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a'\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u000f\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b\t\u0010\n\u001a5\u0010\u0011\u001a\u0004\u0018\u00010\f*\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\fH\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0013\u0010\u0018\u001a\u00020\u0005*\u00020\u0017H\u0000¢\u0006\u0004\b\u0018\u0010\u0019\" \u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u001a\u0010%\u001a\u00020\u001b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0014\u0010&\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b&\u0010'\"\u001c\u0010)\u001a\u0004\u0018\u00010(8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0018\u00100\u001a\u00020\u000e*\u00020-8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/\"\u0018\u00101\u001a\u00020\b*\u00020\f8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b1\u00102\"\u0018\u00105\u001a\u00020\u000e*\u00020\f8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b3\u00104\"\u0018\u00107\u001a\u00020\u000e*\u00020\f8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b6\u00104\"\u0018\u0010<\u001a\u000209*\u0002088@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b:\u0010;\"\u0018\u0010A\u001a\u00020>*\u00020=8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b?\u0010@¨\u0006B"}, d2 = {"Lcoil3/util/Logger$Level;", "level", "", "tag", "message", "", "println", "(Lcoil3/util/Logger$Level;Ljava/lang/String;Ljava/lang/String;)V", "", "isMainThread", "()Z", "Lcoil3/request/ImageRequest;", "Landroid/graphics/drawable/Drawable;", "drawable", "", "resId", "default", "getDrawableCompat", "(Lcoil3/request/ImageRequest;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;", "Lcoil3/Uri;", "uri", "isAssetUri", "(Lcoil3/Uri;)Z", "Lcoil3/Image;", "prepareToDraw", "(Lcoil3/Image;)V", "", "Landroid/graphics/Bitmap$Config;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "[Landroid/graphics/Bitmap$Config;", "getVALID_TRANSFORMATION_CONFIGS", "()[Landroid/graphics/Bitmap$Config;", "VALID_TRANSFORMATION_CONFIGS", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Landroid/graphics/Bitmap$Config;", "getDEFAULT_BITMAP_CONFIG", "()Landroid/graphics/Bitmap$Config;", "DEFAULT_BITMAP_CONFIG", "ASSET_FILE_PATH_ROOT", "Ljava/lang/String;", "Landroid/graphics/ColorSpace;", "NULL_COLOR_SPACE", "Landroid/graphics/ColorSpace;", "getNULL_COLOR_SPACE", "()Landroid/graphics/ColorSpace;", "Landroid/content/res/Configuration;", "getNightMode", "(Landroid/content/res/Configuration;)I", "nightMode", "isVector", "(Landroid/graphics/drawable/Drawable;)Z", "getWidth", "(Landroid/graphics/drawable/Drawable;)I", "width", "getHeight", "height", "Landroid/content/Context;", "Ljava/io/File;", "getSafeCacheDir", "(Landroid/content/Context;)Ljava/io/File;", "safeCacheDir", "Landroid/widget/ImageView;", "Lcoil3/size/Scale;", "getScale", "(Landroid/widget/ImageView;)Lcoil3/size/Scale;", "scale", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nutils.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 utils.android.kt\ncoil3/util/Utils_androidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"})
/* loaded from: classes.dex */
public final class Utils_androidKt {

    @NotNull
    public static final String ASSET_FILE_PATH_ROOT = "android_asset";

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Bitmap.Config[] f896xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final Bitmap.Config f897x3271d0aa;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Logger.Level.values().length];
            try {
                iArr[Logger.Level.Verbose.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Logger.Level.Debug.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Logger.Level.Info.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Logger.Level.Warn.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Logger.Level.Error.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            try {
                iArr2[ImageView.ScaleType.FIT_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[ImageView.ScaleType.FIT_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    static {
        Bitmap.Config[] configArr;
        Bitmap.Config config2;
        Bitmap.Config config3;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            config3 = Bitmap.Config.RGBA_F16;
            configArr = new Bitmap.Config[]{Bitmap.Config.ARGB_8888, config3};
        } else {
            configArr = new Bitmap.Config[]{Bitmap.Config.ARGB_8888};
        }
        f896xfbe0c504 = configArr;
        if (i >= 26) {
            config2 = Bitmap.Config.HARDWARE;
        } else {
            config2 = Bitmap.Config.ARGB_8888;
        }
        f897x3271d0aa = config2;
    }

    @NotNull
    public static final Bitmap.Config getDEFAULT_BITMAP_CONFIG() {
        return f897x3271d0aa;
    }

    @Nullable
    public static final Drawable getDrawableCompat(@NotNull ImageRequest imageRequest, @Nullable Drawable drawable, @DrawableRes @Nullable Integer num, @Nullable Drawable drawable2) {
        if (drawable == null) {
            if (num != null) {
                if (num.intValue() != 0) {
                    return Context.getDrawableCompat(imageRequest.getContext(), num.intValue());
                }
                return null;
            }
            return drawable2;
        }
        return drawable;
    }

    public static final int getHeight(@NotNull Drawable drawable) {
        BitmapDrawable bitmapDrawable;
        Bitmap bitmap;
        if (drawable instanceof BitmapDrawable) {
            bitmapDrawable = (BitmapDrawable) drawable;
        } else {
            bitmapDrawable = null;
        }
        if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
            return bitmap.getHeight();
        }
        return drawable.getIntrinsicHeight();
    }

    @Nullable
    public static final ColorSpace getNULL_COLOR_SPACE() {
        return null;
    }

    public static final int getNightMode(@NotNull Configuration configuration) {
        return configuration.uiMode & 48;
    }

    @NotNull
    public static final File getSafeCacheDir(@NotNull Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir != null) {
            cacheDir.mkdirs();
            return cacheDir;
        }
        throw new IllegalStateException("cacheDir == null");
    }

    @NotNull
    public static final Scale getScale(@NotNull ImageView imageView) {
        int i;
        ImageView.ScaleType scaleType = imageView.getScaleType();
        if (scaleType == null) {
            i = -1;
        } else {
            i = WhenMappings.$EnumSwitchMapping$1[scaleType.ordinal()];
        }
        if (i != 1 && i != 2 && i != 3 && i != 4) {
            return Scale.FILL;
        }
        return Scale.FIT;
    }

    @NotNull
    public static final Bitmap.Config[] getVALID_TRANSFORMATION_CONFIGS() {
        return f896xfbe0c504;
    }

    public static final int getWidth(@NotNull Drawable drawable) {
        BitmapDrawable bitmapDrawable;
        Bitmap bitmap;
        if (drawable instanceof BitmapDrawable) {
            bitmapDrawable = (BitmapDrawable) drawable;
        } else {
            bitmapDrawable = null;
        }
        if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
            return bitmap.getWidth();
        }
        return drawable.getIntrinsicWidth();
    }

    public static final boolean isAssetUri(@NotNull Uri uri) {
        if (Intrinsics.areEqual(uri.getScheme(), UtilsKt.SCHEME_FILE) && Intrinsics.areEqual(CollectionsKt___CollectionsKt.firstOrNull((List) UriKt.getPathSegments(uri)), ASSET_FILE_PATH_ROOT)) {
            return true;
        }
        return false;
    }

    public static final boolean isMainThread() {
        return Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper());
    }

    public static final boolean isVector(@NotNull Drawable drawable) {
        if (!(drawable instanceof VectorDrawable) && !(drawable instanceof VectorDrawableCompat)) {
            return false;
        }
        return true;
    }

    public static final void prepareToDraw(@NotNull Image image) {
        if (image instanceof BitmapImage) {
            ((BitmapImage) image).getBitmap().prepareToDraw();
        }
    }

    public static final void println(@NotNull Logger.Level level, @NotNull String str, @NotNull String str2) {
        int i = WhenMappings.$EnumSwitchMapping$0[level.ordinal()];
        int i2 = 2;
        if (i != 1) {
            if (i != 2) {
                i2 = 4;
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            i2 = 6;
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                    } else {
                        i2 = 5;
                    }
                }
            } else {
                i2 = 3;
            }
        }
        Log.println(i2, str, str2);
    }
}
