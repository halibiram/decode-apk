package coil3.fetch;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.Uri;
import coil3.UriKt;
import coil3.content.DrawableUtils;
import coil3.content.MimeTypeMap;
import coil3.content.UtilsKt;
import coil3.content.Utils_androidKt;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.decode.ResourceMetadata;
import coil3.fetch.Fetcher;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import defpackage.AbstractC1196x2c4a2948;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcoil3/fetch/ResourceUriFetcher;", "Lcoil3/fetch/Fetcher;", "Lcoil3/Uri;", "data", "Lcoil3/request/Options;", "options", "<init>", "(Lcoil3/Uri;Lcoil3/request/Options;)V", "Lcoil3/fetch/FetchResult;", "fetch", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Factory", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nResourceUriFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceUriFetcher.kt\ncoil3/fetch/ResourceUriFetcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 bitmaps.kt\ncoil3/util/BitmapsKt\n+ 4 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,99:1\n1#2:100\n51#3:101\n27#4:102\n*S KotlinDebug\n*F\n+ 1 ResourceUriFetcher.kt\ncoil3/fetch/ResourceUriFetcher\n*L\n61#1:101\n61#1:102\n*E\n"})
/* loaded from: classes.dex */
public final class ResourceUriFetcher implements Fetcher {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Uri f619xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Options f620x3271d0aa;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J)\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcoil3/fetch/ResourceUriFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Lcoil3/Uri;", "<init>", "()V", "data", "Lcoil3/request/Options;", "options", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/fetch/Fetcher;", "create", "(Lcoil3/Uri;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/fetch/Fetcher;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        @Nullable
        public Fetcher create(@NotNull Uri data, @NotNull Options options, @NotNull ImageLoader imageLoader) {
            if (Intrinsics.areEqual(data.getScheme(), "android.resource")) {
                return new ResourceUriFetcher(data, options);
            }
            return null;
        }
    }

    public ResourceUriFetcher(@NotNull Uri uri, @NotNull Options options) {
        this.f619xfbe0c504 = uri;
        this.f620x3271d0aa = options;
    }

    @Override // coil3.fetch.Fetcher
    @Nullable
    public Object fetch(@NotNull Continuation<? super FetchResult> continuation) {
        Integer intOrNull;
        Resources resourcesForApplication;
        Drawable xmlDrawableCompat;
        boolean z;
        Uri uri = this.f619xfbe0c504;
        String authority = uri.getAuthority();
        if (authority != null) {
            if (StringsKt__StringsKt.isBlank(authority)) {
                authority = null;
            }
            if (authority != null) {
                String str = (String) CollectionsKt___CollectionsKt.lastOrNull((List) UriKt.getPathSegments(uri));
                if (str != null && (intOrNull = AbstractC1196x2c4a2948.toIntOrNull(str)) != null) {
                    int intValue = intOrNull.intValue();
                    Options options = this.f620x3271d0aa;
                    Context context = options.getContext();
                    if (Intrinsics.areEqual(authority, context.getPackageName())) {
                        resourcesForApplication = context.getResources();
                    } else {
                        resourcesForApplication = context.getPackageManager().getResourcesForApplication(authority);
                    }
                    TypedValue typedValue = new TypedValue();
                    resourcesForApplication.getValue(intValue, typedValue, true);
                    String mimeTypeFromUrl = MimeTypeMap.INSTANCE.getMimeTypeFromUrl(typedValue.string.toString());
                    if (Intrinsics.areEqual(mimeTypeFromUrl, UtilsKt.MIME_TYPE_XML)) {
                        if (Intrinsics.areEqual(authority, context.getPackageName())) {
                            xmlDrawableCompat = coil3.content.Context.getDrawableCompat(context, intValue);
                        } else {
                            xmlDrawableCompat = coil3.content.Context.getXmlDrawableCompat(context, resourcesForApplication, intValue);
                        }
                        Drawable drawable = xmlDrawableCompat;
                        boolean isVector = Utils_androidKt.isVector(drawable);
                        if (isVector) {
                            DrawableUtils drawableUtils = DrawableUtils.INSTANCE;
                            Bitmap.Config bitmapConfig = ImageRequests_androidKt.getBitmapConfig(options);
                            Size size = options.getSize();
                            Scale scale = options.getScale();
                            if (options.getPrecision() == Precision.INEXACT) {
                                z = true;
                            } else {
                                z = false;
                            }
                            drawable = new BitmapDrawable(context.getResources(), drawableUtils.convertToBitmap(drawable, bitmapConfig, size, scale, z));
                        }
                        return new ImageFetchResult(Image_androidKt.asImage(drawable), isVector, DataSource.DISK);
                    }
                    TypedValue typedValue2 = new TypedValue();
                    return new SourceFetchResult(ImageSourceKt.ImageSource(Okio.buffer(Okio.source(resourcesForApplication.openRawResource(intValue, typedValue2))), options.getFileSystem(), new ResourceMetadata(authority, intValue, typedValue2.density)), mimeTypeFromUrl, DataSource.DISK);
                }
                throw new IllegalStateException("Invalid android.resource URI: " + uri);
            }
        }
        throw new IllegalStateException("Invalid android.resource URI: " + uri);
    }
}
