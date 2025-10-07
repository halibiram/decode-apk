package coil3.request;

import coil3.Extras;
import coil3.ExtrasKt;
import coil3.ImageLoader;
import coil3.content.Collections_jvmCommonKt;
import coil3.request.ImageRequest;
import coil3.size.Size;
import coil3.size.SizeKt;
import coil3.transform.Transformation;
import defpackage.C0346x75d576dc;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001a\u0019\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0019\u0010\u0003\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0006\u001a%\u0010\t\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0007\"\u00020\b¢\u0006\u0004\b\t\u0010\n\u001a\u001f\u0010\t\u001a\u00020\u0000*\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u000b¢\u0006\u0004\b\t\u0010\f\u001a\u0019\u0010\u000f\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0019\u0010\u000f\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0011\u001a\u0019\u0010\u0012\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0012\u0010\u0004\u001a\u0019\u0010\u0012\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0012\u0010\u0006\u001a\u0019\u0010\u0013\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0013\u0010\u0004\u001a\u0019\u0010\u0013\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0013\u0010\u0006\"\u0014\u0010\u0015\u001a\u00020\u00148\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016\"\u001b\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u000b*\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\"\u001b\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u000b*\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001b\"!\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u000b0\u001d*\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001e\"\u0015\u0010\u000f\u001a\u00020\r*\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u001f\u0010 \"\u0015\u0010\u000f\u001a\u00020\r*\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010!\"\u001b\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\u001d*\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u001e\"\u0015\u0010\u0012\u001a\u00020\u0001*\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\"\u0010#\"\u0015\u0010\u0012\u001a\u00020\u0001*\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\"\u0010$\"\u001b\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00010\u001d*\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b\"\u0010\u001e\"\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00178F¢\u0006\u0006\u001a\u0004\b%\u0010#\"\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b%\u0010$\"\u001b\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u001d*\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b%\u0010\u001e¨\u0006&"}, d2 = {"Lcoil3/request/ImageRequest$Builder;", "", "enable", "crossfade", "(Lcoil3/request/ImageRequest$Builder;Z)Lcoil3/request/ImageRequest$Builder;", "Lcoil3/ImageLoader$Builder;", "(Lcoil3/ImageLoader$Builder;Z)Lcoil3/ImageLoader$Builder;", "", "Lcoil3/transform/Transformation;", "transformations", "(Lcoil3/request/ImageRequest$Builder;[Lcoil3/transform/Transformation;)Lcoil3/request/ImageRequest$Builder;", "", "(Lcoil3/request/ImageRequest$Builder;Ljava/util/List;)Lcoil3/request/ImageRequest$Builder;", "Lcoil3/size/Size;", "size", "maxBitmapSize", "(Lcoil3/request/ImageRequest$Builder;Lcoil3/size/Size;)Lcoil3/request/ImageRequest$Builder;", "(Lcoil3/ImageLoader$Builder;Lcoil3/size/Size;)Lcoil3/ImageLoader$Builder;", "addLastModifiedToFileCacheKey", "allowConversionToBitmap", "", "DEFAULT_CROSSFADE_MILLIS", "I", "Lcoil3/request/ImageRequest;", "getTransformations", "(Lcoil3/request/ImageRequest;)Ljava/util/List;", "Lcoil3/request/Options;", "(Lcoil3/request/Options;)Ljava/util/List;", "Lcoil3/Extras$Key$Companion;", "Lcoil3/Extras$Key;", "(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;", "getMaxBitmapSize", "(Lcoil3/request/ImageRequest;)Lcoil3/size/Size;", "(Lcoil3/request/Options;)Lcoil3/size/Size;", "getAddLastModifiedToFileCacheKey", "(Lcoil3/request/ImageRequest;)Z", "(Lcoil3/request/Options;)Z", "getAllowConversionToBitmap", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ImageRequestsKt {
    public static final int DEFAULT_CROSSFADE_MILLIS = 200;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Extras.Key f789xfbe0c504 = new Extras.Key(CollectionsKt__CollectionsKt.emptyList());

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final Extras.Key f790x3271d0aa = new Extras.Key(SizeKt.Size(4096, 4096));

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final Extras.Key f791x1378447b = new Extras.Key(Boolean.FALSE);

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final Extras.Key f792x75d576dc = new Extras.Key(Boolean.TRUE);

    @NotNull
    public static final ImageRequest.Builder addLastModifiedToFileCacheKey(@NotNull ImageRequest.Builder builder, boolean z) {
        builder.getExtras().set(f791x1378447b, Boolean.valueOf(z));
        return builder;
    }

    @NotNull
    public static final ImageRequest.Builder allowConversionToBitmap(@NotNull ImageRequest.Builder builder, boolean z) {
        builder.getExtras().set(f792x75d576dc, Boolean.valueOf(z));
        return builder;
    }

    @NotNull
    public static final ImageRequest.Builder crossfade(@NotNull ImageRequest.Builder builder, boolean z) {
        return ImageRequests_androidKt.crossfade(builder, z ? 200 : 0);
    }

    public static final boolean getAddLastModifiedToFileCacheKey(@NotNull ImageRequest imageRequest) {
        return ((Boolean) ExtrasKt.getExtra(imageRequest, f791x1378447b)).booleanValue();
    }

    public static final boolean getAllowConversionToBitmap(@NotNull ImageRequest imageRequest) {
        return ((Boolean) ExtrasKt.getExtra(imageRequest, f792x75d576dc)).booleanValue();
    }

    @NotNull
    public static final Size getMaxBitmapSize(@NotNull ImageRequest imageRequest) {
        return (Size) ExtrasKt.getExtra(imageRequest, f790x3271d0aa);
    }

    @NotNull
    public static final List<Transformation> getTransformations(@NotNull ImageRequest imageRequest) {
        return (List) ExtrasKt.getExtra(imageRequest, f789xfbe0c504);
    }

    @NotNull
    public static final ImageRequest.Builder maxBitmapSize(@NotNull ImageRequest.Builder builder, @NotNull Size size) {
        builder.getExtras().set(f790x3271d0aa, size);
        return builder;
    }

    @NotNull
    public static final ImageRequest.Builder transformations(@NotNull ImageRequest.Builder builder, @NotNull Transformation... transformationArr) {
        return transformations(builder, (List<? extends Transformation>) ArraysKt___ArraysKt.toList(transformationArr));
    }

    @NotNull
    public static final ImageLoader.Builder addLastModifiedToFileCacheKey(@NotNull ImageLoader.Builder builder, boolean z) {
        builder.getExtras().set(f791x1378447b, Boolean.valueOf(z));
        return builder;
    }

    @NotNull
    public static final ImageLoader.Builder allowConversionToBitmap(@NotNull ImageLoader.Builder builder, boolean z) {
        builder.getExtras().set(f792x75d576dc, Boolean.valueOf(z));
        return builder;
    }

    @NotNull
    public static final ImageLoader.Builder crossfade(@NotNull ImageLoader.Builder builder, boolean z) {
        return ImageRequests_androidKt.crossfade(builder, z ? 200 : 0);
    }

    public static final boolean getAddLastModifiedToFileCacheKey(@NotNull Options options) {
        return ((Boolean) ExtrasKt.getExtra(options, f791x1378447b)).booleanValue();
    }

    public static final boolean getAllowConversionToBitmap(@NotNull Options options) {
        return ((Boolean) ExtrasKt.getExtra(options, f792x75d576dc)).booleanValue();
    }

    @NotNull
    public static final Size getMaxBitmapSize(@NotNull Options options) {
        return (Size) ExtrasKt.getExtra(options, f790x3271d0aa);
    }

    @NotNull
    public static final List<Transformation> getTransformations(@NotNull Options options) {
        return (List) ExtrasKt.getExtra(options, f789xfbe0c504);
    }

    @NotNull
    public static final ImageLoader.Builder maxBitmapSize(@NotNull ImageLoader.Builder builder, @NotNull Size size) {
        builder.getExtras().set(f790x3271d0aa, size);
        return builder;
    }

    @NotNull
    public static final ImageRequest.Builder transformations(@NotNull ImageRequest.Builder builder, @NotNull List<? extends Transformation> list) {
        builder.getExtras().set(f789xfbe0c504, Collections_jvmCommonKt.toImmutableList(list));
        builder.memoryCacheKeyExtra("coil#transformations", CollectionsKt___CollectionsKt.joinToString$default(list, null, null, null, 0, null, new C0346x75d576dc(new Ref.IntRef(), 8), 31, null));
        return builder;
    }

    @NotNull
    public static final Extras.Key<Boolean> getAddLastModifiedToFileCacheKey(@NotNull Extras.Key.Companion companion) {
        return f791x1378447b;
    }

    @NotNull
    public static final Extras.Key<Boolean> getAllowConversionToBitmap(@NotNull Extras.Key.Companion companion) {
        return f792x75d576dc;
    }

    @NotNull
    public static final Extras.Key<Size> getMaxBitmapSize(@NotNull Extras.Key.Companion companion) {
        return f790x3271d0aa;
    }

    @NotNull
    public static final Extras.Key<List<Transformation>> getTransformations(@NotNull Extras.Key.Companion companion) {
        return f789xfbe0c504;
    }
}
