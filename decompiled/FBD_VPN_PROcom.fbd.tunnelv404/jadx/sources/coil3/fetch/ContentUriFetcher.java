package coil3.fetch;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import coil3.ImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.Uri_androidKt;
import coil3.decode.ContentMetadata;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import coil3.size.Dimension;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0011B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\u000f\u0010\r¨\u0006\u0012"}, d2 = {"Lcoil3/fetch/ContentUriFetcher;", "Lcoil3/fetch/Fetcher;", "Lcoil3/Uri;", "data", "Lcoil3/request/Options;", "options", "<init>", "(Lcoil3/Uri;Lcoil3/request/Options;)V", "Lcoil3/fetch/FetchResult;", "fetch", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "isContactPhotoUri$coil_core_release", "(Lcoil3/Uri;)Z", "isContactPhotoUri", "isMusicThumbnailUri$coil_core_release", "isMusicThumbnailUri", "Factory", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nContentUriFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentUriFetcher.kt\ncoil3/fetch/ContentUriFetcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"})
/* loaded from: classes.dex */
public final class ContentUriFetcher implements Fetcher {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Uri f606xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Options f607x3271d0aa;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J)\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcoil3/fetch/ContentUriFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Lcoil3/Uri;", "<init>", "()V", "data", "Lcoil3/request/Options;", "options", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/fetch/Fetcher;", "create", "(Lcoil3/Uri;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/fetch/Fetcher;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        @Nullable
        public Fetcher create(@NotNull Uri data, @NotNull Options options, @NotNull ImageLoader imageLoader) {
            if (Intrinsics.areEqual(data.getScheme(), "content")) {
                return new ContentUriFetcher(data, options);
            }
            return null;
        }
    }

    public ContentUriFetcher(@NotNull Uri uri, @NotNull Options options) {
        this.f606xfbe0c504 = uri;
        this.f607x3271d0aa = options;
    }

    @Override // coil3.fetch.Fetcher
    @Nullable
    public Object fetch(@NotNull Continuation<? super FetchResult> continuation) {
        AssetFileDescriptor openAssetFileDescriptor;
        Dimension.Pixels pixels;
        Dimension.Pixels pixels2;
        Uri uri = this.f606xfbe0c504;
        android.net.Uri androidUri = Uri_androidKt.toAndroidUri(uri);
        Options options = this.f607x3271d0aa;
        ContentResolver contentResolver = options.getContext().getContentResolver();
        if (isContactPhotoUri$coil_core_release(uri)) {
            openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(androidUri, "r");
            if (openAssetFileDescriptor == null) {
                throw new IllegalStateException(("Unable to find a contact photo associated with '" + androidUri + "'.").toString());
            }
        } else if (Build.VERSION.SDK_INT >= 29 && isMusicThumbnailUri$coil_core_release(uri)) {
            Dimension width = options.getSize().getWidth();
            Bundle bundle = null;
            if (width instanceof Dimension.Pixels) {
                pixels = (Dimension.Pixels) width;
            } else {
                pixels = null;
            }
            if (pixels != null) {
                int m960unboximpl = pixels.m960unboximpl();
                Dimension height = options.getSize().getHeight();
                if (height instanceof Dimension.Pixels) {
                    pixels2 = (Dimension.Pixels) height;
                } else {
                    pixels2 = null;
                }
                if (pixels2 != null) {
                    int m960unboximpl2 = pixels2.m960unboximpl();
                    bundle = new Bundle(1);
                    bundle.putParcelable("android.content.extra.SIZE", new Point(m960unboximpl, m960unboximpl2));
                }
            }
            openAssetFileDescriptor = contentResolver.openTypedAssetFile(androidUri, "image/*", bundle, null);
            if (openAssetFileDescriptor == null) {
                throw new IllegalStateException(("Unable to find a music thumbnail associated with '" + androidUri + "'.").toString());
            }
        } else {
            openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(androidUri, "r");
            if (openAssetFileDescriptor == null) {
                throw new IllegalStateException(("Unable to open '" + androidUri + "'.").toString());
            }
        }
        return new SourceFetchResult(ImageSourceKt.ImageSource(Okio.buffer(Okio.source(openAssetFileDescriptor.createInputStream())), options.getFileSystem(), new ContentMetadata(uri, openAssetFileDescriptor)), contentResolver.getType(androidUri), DataSource.DISK);
    }

    @VisibleForTesting
    public final boolean isContactPhotoUri$coil_core_release(@NotNull Uri data) {
        if (Intrinsics.areEqual(data.getAuthority(), "com.android.contacts") && Intrinsics.areEqual(CollectionsKt___CollectionsKt.lastOrNull((List) UriKt.getPathSegments(data)), "display_photo")) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    public final boolean isMusicThumbnailUri$coil_core_release(@NotNull Uri data) {
        List<String> pathSegments;
        int size;
        if (!Intrinsics.areEqual(data.getAuthority(), "media") || (size = (pathSegments = UriKt.getPathSegments(data)).size()) < 3 || !Intrinsics.areEqual(pathSegments.get(size - 3), "audio") || !Intrinsics.areEqual(pathSegments.get(size - 2), "albums")) {
            return false;
        }
        return true;
    }
}
