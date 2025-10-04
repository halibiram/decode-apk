package coil3;

import android.content.Context;
import coil3.Extras;
import coil3.ImageLoader;
import coil3.RealImageLoader;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0019\u0010\u0004\u001a\u00020\u00032\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0019\u0010\t\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n\"\u0018\u0010\t\u001a\u00020\u0007*\u00020\u000b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroid/content/Context;", "Lcoil3/PlatformContext;", "context", "Lcoil3/ImageLoader;", "ImageLoader", "(Landroid/content/Context;)Lcoil3/ImageLoader;", "Lcoil3/ImageLoader$Builder;", "", "enable", "serviceLoaderEnabled", "(Lcoil3/ImageLoader$Builder;Z)Lcoil3/ImageLoader$Builder;", "Lcoil3/RealImageLoader$Options;", "getServiceLoaderEnabled", "(Lcoil3/RealImageLoader$Options;)Z", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ImageLoadersKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Extras.Key f470xfbe0c504 = new Extras.Key(Boolean.TRUE);

    @NotNull
    public static final ImageLoader ImageLoader(@NotNull Context context) {
        return new ImageLoader.Builder(context).build();
    }

    public static final boolean getServiceLoaderEnabled(@NotNull RealImageLoader.Options options) {
        return ((Boolean) ExtrasKt.getOrDefault(options.getDefaults().getExtras(), f470xfbe0c504)).booleanValue();
    }

    @NotNull
    public static final ImageLoader.Builder serviceLoaderEnabled(@NotNull ImageLoader.Builder builder, boolean z) {
        builder.getExtras().set(f470xfbe0c504, Boolean.valueOf(z));
        return builder;
    }
}
