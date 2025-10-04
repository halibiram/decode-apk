package coil3.decode;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Size;
import androidx.annotation.RequiresApi;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.content.BitmapsKt;
import coil3.content.IntPair;
import coil3.decode.Decoder;
import coil3.fetch.SourceFetchResult;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Scale;
import defpackage.AbstractC0892xc141c517;
import defpackage.AbstractC0975x7c3950e5;
import defpackage.C1182xeb635c00;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@RequiresApi(29)
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0010B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rH\u0096@¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcoil3/decode/StaticImageDecoder;", "Lcoil3/decode/Decoder;", "Landroid/graphics/ImageDecoder$Source;", "source", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "closeable", "Lcoil3/request/Options;", "options", "Lkotlinx/coroutines/sync/Semaphore;", "parallelismLock", "<init>", "(Landroid/graphics/ImageDecoder$Source;Ljava/lang/AutoCloseable;Lcoil3/request/Options;Lkotlinx/coroutines/sync/Semaphore;)V", "Lcoil3/decode/DecodeResult;", "decode", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Factory", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStaticImageDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaticImageDecoder.kt\ncoil3/decode/StaticImageDecoder\n+ 2 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreKt\n+ 3 ImageDecoder.kt\nandroidx/core/graphics/ImageDecoderKt\n*L\n1#1,167:1\n81#2,3:168\n85#2,2:172\n38#3:171\n*S KotlinDebug\n*F\n+ 1 StaticImageDecoder.kt\ncoil3/decode/StaticImageDecoder\n*L\n41#1:168,3\n41#1:172,2\n44#1:171\n*E\n"})
/* loaded from: classes.dex */
public final class StaticImageDecoder implements Decoder {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ImageDecoder.Source f536xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final AutoCloseable f537x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Options f538x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Semaphore f539x75d576dc;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J)\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcoil3/decode/StaticImageDecoder$Factory;", "Lcoil3/decode/Decoder$Factory;", "Lkotlinx/coroutines/sync/Semaphore;", "parallelismLock", "<init>", "(Lkotlinx/coroutines/sync/Semaphore;)V", "Lcoil3/fetch/SourceFetchResult;", "result", "Lcoil3/request/Options;", "options", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/decode/Decoder;", "create", "(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/decode/Decoder;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Factory implements Decoder.Factory {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final Semaphore f542xfbe0c504;

        /* JADX WARN: Multi-variable type inference failed */
        public Factory() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @Override // coil3.decode.Decoder.Factory
        @Nullable
        public Decoder create(@NotNull SourceFetchResult result, @NotNull Options options, @NotNull ImageLoader imageLoader) {
            Bitmap.Config config2;
            Bitmap.Config bitmapConfig = ImageRequests_androidKt.getBitmapConfig(options);
            if (bitmapConfig != Bitmap.Config.ARGB_8888) {
                config2 = Bitmap.Config.HARDWARE;
                if (bitmapConfig != config2) {
                    return null;
                }
            }
            ImageDecoder.Source imageDecoderSourceOrNull = StaticImageDecoderKt.toImageDecoderSourceOrNull(result.getSource(), options, false);
            if (imageDecoderSourceOrNull == null) {
                return null;
            }
            return new StaticImageDecoder(imageDecoderSourceOrNull, result.getSource(), options, this.f542xfbe0c504);
        }

        public Factory(@NotNull Semaphore semaphore) {
            this.f542xfbe0c504 = semaphore;
        }

        public /* synthetic */ Factory(Semaphore semaphore, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? SemaphoreKt.Semaphore$default(4, 0, 2, null) : semaphore);
        }
    }

    public StaticImageDecoder(@NotNull ImageDecoder.Source source, @NotNull AutoCloseable autoCloseable, @NotNull Options options, @NotNull Semaphore semaphore) {
        this.f536xfbe0c504 = source;
        this.f537x3271d0aa = autoCloseable;
        this.f538x1378447b = options;
        this.f539x75d576dc = semaphore;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [땤뒋따땁뒈뎨될땭딽뎰딃땡돠딄듼득땸땰될땋돰돤땧따돛뒹딄땬뎨딀든돰돛땰뎹듰디뒋딠뒈될따돶됫땋뎨땪됴뒝됐딝듐드돨뒹됐딽뎨도둠땪됨됐돼딤될됫듟땯디딄뒤뒤됴땸딤딝돸땤둠딠뒹뒼땥듟땭든딅든땧땫든돠땠되됐돷땮따뒬뒷딄돨뒬됫딄뒾땠땔됐땮땰둠둬뒾뎨딃돴땟뒤땐땧돳땱돨땨듼돴땋뒻, java.lang.Object] */
    public static final void access$configureImageDecoderProperties(StaticImageDecoder staticImageDecoder, ImageDecoder imageDecoder) {
        int i;
        staticImageDecoder.getClass();
        imageDecoder.setOnPartialImageListener(new Object());
        Options options = staticImageDecoder.f538x1378447b;
        if (BitmapsKt.isHardware(ImageRequests_androidKt.getBitmapConfig(options))) {
            i = 3;
        } else {
            i = 1;
        }
        imageDecoder.setAllocator(i);
        imageDecoder.setMemorySizePolicy(!ImageRequests_androidKt.getAllowRgb565(options) ? 1 : 0);
        if (ImageRequests_androidKt.getColorSpace(options) != null) {
            imageDecoder.setTargetColorSpace(ImageRequests_androidKt.getColorSpace(options));
        }
        imageDecoder.setUnpremultipliedRequired(!ImageRequests_androidKt.getPremultipliedAlpha(options));
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // coil3.decode.Decoder
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object decode(@NotNull Continuation<? super DecodeResult> continuation) {
        C1182xeb635c00 c1182xeb635c00;
        int i;
        final StaticImageDecoder staticImageDecoder;
        Semaphore semaphore;
        Bitmap decodeBitmap;
        try {
            try {
                if (continuation instanceof C1182xeb635c00) {
                    c1182xeb635c00 = (C1182xeb635c00) continuation;
                    int i2 = c1182xeb635c00.f5571x9738a56c;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        c1182xeb635c00.f5571x9738a56c = i2 - Integer.MIN_VALUE;
                        Object obj = c1182xeb635c00.f5569x1378447b;
                        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                        i = c1182xeb635c00.f5571x9738a56c;
                        if (i == 0) {
                            if (i == 1) {
                                semaphore = c1182xeb635c00.f5568x3271d0aa;
                                staticImageDecoder = c1182xeb635c00.f5567xfbe0c504;
                                ResultKt.throwOnFailure(obj);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            ResultKt.throwOnFailure(obj);
                            c1182xeb635c00.f5567xfbe0c504 = this;
                            Semaphore semaphore2 = this.f539x75d576dc;
                            c1182xeb635c00.f5568x3271d0aa = semaphore2;
                            c1182xeb635c00.f5571x9738a56c = 1;
                            if (semaphore2.acquire(c1182xeb635c00) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            staticImageDecoder = this;
                            semaphore = semaphore2;
                        }
                        AutoCloseable autoCloseable = staticImageDecoder.f537x3271d0aa;
                        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                        decodeBitmap = ImageDecoder.decodeBitmap(staticImageDecoder.f536xfbe0c504, new ImageDecoder.OnHeaderDecodedListener() { // from class: coil3.decode.StaticImageDecoder$decode$lambda$2$lambda$1$$inlined$decodeBitmap$1
                            /* JADX WARN: Code restructure failed: missing block: B:12:0x0067, code lost:
                            
                                if (r2.getPrecision() == coil3.size.Precision.EXACT) goto L15;
                             */
                            @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                                Size size;
                                Options options;
                                Options options2;
                                Options options3;
                                Options options4;
                                boolean z;
                                Options options5;
                                size = imageInfo.getSize();
                                int width = size.getWidth();
                                int height = size.getHeight();
                                options = StaticImageDecoder.this.f538x1378447b;
                                coil3.size.Size size2 = options.getSize();
                                options2 = StaticImageDecoder.this.f538x1378447b;
                                Scale scale = options2.getScale();
                                options3 = StaticImageDecoder.this.f538x1378447b;
                                long m929computeDstSizesEdh43o = DecodeUtils.m929computeDstSizesEdh43o(width, height, size2, scale, ImageRequestsKt.getMaxBitmapSize(options3));
                                int m976getFirstimpl = IntPair.m976getFirstimpl(m929computeDstSizesEdh43o);
                                int m977getSecondimpl = IntPair.m977getSecondimpl(m929computeDstSizesEdh43o);
                                if (width > 0 && height > 0 && (width != m976getFirstimpl || height != m977getSecondimpl)) {
                                    options4 = StaticImageDecoder.this.f538x1378447b;
                                    double computeSizeMultiplier = DecodeUtils.computeSizeMultiplier(width, height, m976getFirstimpl, m977getSecondimpl, options4.getScale());
                                    Ref.BooleanRef booleanRef2 = booleanRef;
                                    if (computeSizeMultiplier < 1.0d) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    booleanRef2.element = z;
                                    if (!z) {
                                        options5 = StaticImageDecoder.this.f538x1378447b;
                                    }
                                    imageDecoder.setTargetSize(AbstractC0975x7c3950e5.roundToInt(width * computeSizeMultiplier), AbstractC0975x7c3950e5.roundToInt(computeSizeMultiplier * height));
                                }
                                StaticImageDecoder.access$configureImageDecoderProperties(StaticImageDecoder.this, imageDecoder);
                            }
                        });
                        DecodeResult decodeResult = new DecodeResult(Image_androidKt.asImage$default(decodeBitmap, false, 1, null), booleanRef.element);
                        AutoCloseableKt.closeFinally(autoCloseable, null);
                        return decodeResult;
                    }
                }
                final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
                decodeBitmap = ImageDecoder.decodeBitmap(staticImageDecoder.f536xfbe0c504, new ImageDecoder.OnHeaderDecodedListener() { // from class: coil3.decode.StaticImageDecoder$decode$lambda$2$lambda$1$$inlined$decodeBitmap$1
                    /* JADX WARN: Code restructure failed: missing block: B:12:0x0067, code lost:
                    
                        if (r2.getPrecision() == coil3.size.Precision.EXACT) goto L15;
                     */
                    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                        Size size;
                        Options options;
                        Options options2;
                        Options options3;
                        Options options4;
                        boolean z;
                        Options options5;
                        size = imageInfo.getSize();
                        int width = size.getWidth();
                        int height = size.getHeight();
                        options = StaticImageDecoder.this.f538x1378447b;
                        coil3.size.Size size2 = options.getSize();
                        options2 = StaticImageDecoder.this.f538x1378447b;
                        Scale scale = options2.getScale();
                        options3 = StaticImageDecoder.this.f538x1378447b;
                        long m929computeDstSizesEdh43o = DecodeUtils.m929computeDstSizesEdh43o(width, height, size2, scale, ImageRequestsKt.getMaxBitmapSize(options3));
                        int m976getFirstimpl = IntPair.m976getFirstimpl(m929computeDstSizesEdh43o);
                        int m977getSecondimpl = IntPair.m977getSecondimpl(m929computeDstSizesEdh43o);
                        if (width > 0 && height > 0 && (width != m976getFirstimpl || height != m977getSecondimpl)) {
                            options4 = StaticImageDecoder.this.f538x1378447b;
                            double computeSizeMultiplier = DecodeUtils.computeSizeMultiplier(width, height, m976getFirstimpl, m977getSecondimpl, options4.getScale());
                            Ref.BooleanRef booleanRef22 = booleanRef2;
                            if (computeSizeMultiplier < 1.0d) {
                                z = true;
                            } else {
                                z = false;
                            }
                            booleanRef22.element = z;
                            if (!z) {
                                options5 = StaticImageDecoder.this.f538x1378447b;
                            }
                            imageDecoder.setTargetSize(AbstractC0975x7c3950e5.roundToInt(width * computeSizeMultiplier), AbstractC0975x7c3950e5.roundToInt(computeSizeMultiplier * height));
                        }
                        StaticImageDecoder.access$configureImageDecoderProperties(StaticImageDecoder.this, imageDecoder);
                    }
                });
                DecodeResult decodeResult2 = new DecodeResult(Image_androidKt.asImage$default(decodeBitmap, false, 1, null), booleanRef2.element);
                AutoCloseableKt.closeFinally(autoCloseable, null);
                return decodeResult2;
            } finally {
            }
            AutoCloseable autoCloseable2 = staticImageDecoder.f537x3271d0aa;
        } finally {
            semaphore.release();
        }
        c1182xeb635c00 = new C1182xeb635c00(this, continuation);
        Object obj2 = c1182xeb635c00.f5569x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c1182xeb635c00.f5571x9738a56c;
        if (i == 0) {
        }
    }
}
