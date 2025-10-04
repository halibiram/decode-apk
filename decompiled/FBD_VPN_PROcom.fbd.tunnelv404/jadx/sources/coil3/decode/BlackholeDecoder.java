package coil3.decode;

import coil3.ColorImage;
import coil3.Image;
import coil3.ImageLoader;
import coil3.annotation.ExperimentalCoilApi;
import coil3.decode.Decoder;
import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import defpackage.C0396x4a23d5ac;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007H\u0096@¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcoil3/decode/BlackholeDecoder;", "Lcoil3/decode/Decoder;", "Lkotlin/Function0;", "Lcoil3/Image;", "imageFactory", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "Lcoil3/decode/DecodeResult;", "decode", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Factory", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalCoilApi
/* loaded from: classes.dex */
public final class BlackholeDecoder implements Decoder {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Function0 f506xfbe0c504;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcoil3/decode/BlackholeDecoder$Factory;", "Lcoil3/decode/Decoder$Factory;", "Lkotlin/Function0;", "Lcoil3/Image;", "imageFactory", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "Lcoil3/fetch/SourceFetchResult;", "result", "Lcoil3/request/Options;", "options", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/decode/BlackholeDecoder;", "create", "(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/decode/BlackholeDecoder;", "Companion", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Factory implements Decoder.Factory {

        @JvmField
        @NotNull
        public static final Image EMPTY_IMAGE = new ColorImage(0, 0, 0, 0, false, 30, null);

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final Function0 f507xfbe0c504;

        /* JADX WARN: Multi-variable type inference failed */
        public Factory() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public Factory(@NotNull Function0<? extends Image> function0) {
            this.f507xfbe0c504 = function0;
        }

        @Override // coil3.decode.Decoder.Factory
        @NotNull
        public BlackholeDecoder create(@NotNull SourceFetchResult result, @NotNull Options options, @NotNull ImageLoader imageLoader) {
            return new BlackholeDecoder(this.f507xfbe0c504);
        }

        public /* synthetic */ Factory(Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new C0396x4a23d5ac(1) : function0);
        }
    }

    public BlackholeDecoder(@NotNull Function0<? extends Image> function0) {
        this.f506xfbe0c504 = function0;
    }

    @Override // coil3.decode.Decoder
    @Nullable
    public Object decode(@NotNull Continuation<? super DecodeResult> continuation) {
        return new DecodeResult((Image) this.f506xfbe0c504.invoke(), false);
    }
}
