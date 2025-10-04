package coil3;

import coil3.Extras;
import coil3.ImageLoader;
import coil3.RealImageLoader;
import coil3.decode.ExifOrientationStrategy;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0019\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0019\u0010\u0007\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b\u001a\u0019\u0010\u000b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f\"\u0018\u0010\u0003\u001a\u00020\u0001*\u00020\r8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f\"\u0018\u0010\u0007\u001a\u00020\u0005*\u00020\r8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\"\u0018\u0010\u000b\u001a\u00020\t*\u00020\r8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcoil3/ImageLoader$Builder;", "", "maxParallelism", "bitmapFactoryMaxParallelism", "(Lcoil3/ImageLoader$Builder;I)Lcoil3/ImageLoader$Builder;", "Lcoil3/decode/ExifOrientationStrategy;", "strategy", "bitmapFactoryExifOrientationStrategy", "(Lcoil3/ImageLoader$Builder;Lcoil3/decode/ExifOrientationStrategy;)Lcoil3/ImageLoader$Builder;", "", "enabled", "imageDecoderEnabled", "(Lcoil3/ImageLoader$Builder;Z)Lcoil3/ImageLoader$Builder;", "Lcoil3/RealImageLoader$Options;", "getBitmapFactoryMaxParallelism", "(Lcoil3/RealImageLoader$Options;)I", "getBitmapFactoryExifOrientationStrategy", "(Lcoil3/RealImageLoader$Options;)Lcoil3/decode/ExifOrientationStrategy;", "getImageDecoderEnabled", "(Lcoil3/RealImageLoader$Options;)Z", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nimageLoaders.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 imageLoaders.android.kt\ncoil3/ImageLoaders_androidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"})
/* loaded from: classes.dex */
public final class ImageLoaders_androidKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Extras.Key f471xfbe0c504 = new Extras.Key(4);

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final Extras.Key f472x3271d0aa = new Extras.Key(ExifOrientationStrategy.RESPECT_PERFORMANCE);

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final Extras.Key f473x1378447b = new Extras.Key(Boolean.TRUE);

    @NotNull
    public static final ImageLoader.Builder bitmapFactoryExifOrientationStrategy(@NotNull ImageLoader.Builder builder, @NotNull ExifOrientationStrategy exifOrientationStrategy) {
        builder.getExtras().set(f472x3271d0aa, exifOrientationStrategy);
        return builder;
    }

    @NotNull
    public static final ImageLoader.Builder bitmapFactoryMaxParallelism(@NotNull ImageLoader.Builder builder, int i) {
        if (i > 0) {
            builder.getExtras().set(f471xfbe0c504, Integer.valueOf(i));
            return builder;
        }
        throw new IllegalArgumentException("maxParallelism must be > 0.");
    }

    @NotNull
    public static final ExifOrientationStrategy getBitmapFactoryExifOrientationStrategy(@NotNull RealImageLoader.Options options) {
        return (ExifOrientationStrategy) ExtrasKt.getOrDefault(options.getDefaults().getExtras(), f472x3271d0aa);
    }

    public static final int getBitmapFactoryMaxParallelism(@NotNull RealImageLoader.Options options) {
        return ((Number) ExtrasKt.getOrDefault(options.getDefaults().getExtras(), f471xfbe0c504)).intValue();
    }

    public static final boolean getImageDecoderEnabled(@NotNull RealImageLoader.Options options) {
        return ((Boolean) ExtrasKt.getOrDefault(options.getDefaults().getExtras(), f473x1378447b)).booleanValue();
    }

    @NotNull
    public static final ImageLoader.Builder imageDecoderEnabled(@NotNull ImageLoader.Builder builder, boolean z) {
        builder.getExtras().set(f473x1378447b, Boolean.valueOf(z));
        return builder;
    }
}
