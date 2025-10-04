package coil3.fetch;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.content.DrawableUtils;
import coil3.content.Utils_androidKt;
import coil3.decode.DataSource;
import coil3.fetch.Fetcher;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcoil3/fetch/DrawableFetcher;", "Lcoil3/fetch/Fetcher;", "Landroid/graphics/drawable/Drawable;", "data", "Lcoil3/request/Options;", "options", "<init>", "(Landroid/graphics/drawable/Drawable;Lcoil3/request/Options;)V", "Lcoil3/fetch/FetchResult;", "fetch", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Factory", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDrawableFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawableFetcher.kt\ncoil3/fetch/DrawableFetcher\n+ 2 bitmaps.kt\ncoil3/util/BitmapsKt\n+ 3 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,45:1\n51#2:46\n27#3:47\n*S KotlinDebug\n*F\n+ 1 DrawableFetcher.kt\ncoil3/fetch/DrawableFetcher\n*L\n29#1:46\n29#1:47\n*E\n"})
/* loaded from: classes.dex */
public final class DrawableFetcher implements Fetcher {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Drawable f610xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Options f611x3271d0aa;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"Lcoil3/fetch/DrawableFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Landroid/graphics/drawable/Drawable;", "<init>", "()V", "create", "Lcoil3/fetch/Fetcher;", "data", "options", "Lcoil3/request/Options;", "imageLoader", "Lcoil3/ImageLoader;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<Drawable> {
        @Override // coil3.fetch.Fetcher.Factory
        @NotNull
        public Fetcher create(@NotNull Drawable data, @NotNull Options options, @NotNull ImageLoader imageLoader) {
            return new DrawableFetcher(data, options);
        }
    }

    public DrawableFetcher(@NotNull Drawable drawable, @NotNull Options options) {
        this.f610xfbe0c504 = drawable;
        this.f611x3271d0aa = options;
    }

    @Override // coil3.fetch.Fetcher
    @Nullable
    public Object fetch(@NotNull Continuation<? super FetchResult> continuation) {
        boolean z;
        Drawable drawable = this.f610xfbe0c504;
        boolean isVector = Utils_androidKt.isVector(drawable);
        if (isVector) {
            DrawableUtils drawableUtils = DrawableUtils.INSTANCE;
            Options options = this.f611x3271d0aa;
            Bitmap.Config bitmapConfig = ImageRequests_androidKt.getBitmapConfig(options);
            Size size = options.getSize();
            Scale scale = options.getScale();
            if (options.getPrecision() == Precision.INEXACT) {
                z = true;
            } else {
                z = false;
            }
            drawable = new BitmapDrawable(options.getContext().getResources(), drawableUtils.convertToBitmap(this.f610xfbe0c504, bitmapConfig, size, scale, z));
        }
        return new ImageFetchResult(Image_androidKt.asImage(drawable), isVector, DataSource.MEMORY);
    }
}
