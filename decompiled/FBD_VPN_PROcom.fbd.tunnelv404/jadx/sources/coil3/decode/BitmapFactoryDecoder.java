package coil3.decode;

import coil3.ImageLoader;
import coil3.decode.Decoder;
import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import defpackage.AbstractC0892xc141c517;
import defpackage.C0350x95f25580;
import defpackage.C0446x30b842a6;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InterruptibleKt;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0003\u0010\u0011\u000fB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fH\u0096@¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcoil3/decode/BitmapFactoryDecoder;", "Lcoil3/decode/Decoder;", "Lcoil3/decode/ImageSource;", "source", "Lcoil3/request/Options;", "options", "Lkotlinx/coroutines/sync/Semaphore;", "parallelismLock", "Lcoil3/decode/ExifOrientationStrategy;", "exifOrientationStrategy", "<init>", "(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;)V", "Lcoil3/decode/DecodeResult;", "decode", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "Factory", "돤뒋됫뒘땫뒐땰땰땟돝땲뎻땭뒤땫돝땻뎸딅딟땔돶듰듽뒼땄듰딝듰둣뎬됴딨뒛땐딹뒀땟딻듽땳땸딨도되땱디돷뒬듔두땅둬땄둬듰뎨뒵듐딟듔땧돠땲땳됫뒛듟땤돝들둘뒵돰딄돵뎡딀땜둠딨돤땣땯되땃땔딸딀땧된딹뒵딹돝둬듬뒾딁돴땔땰뎨들뒨땵듻뒼뒾딤딄돴돵땸돷뒙땅땍듸땻둔돸딟딟땰딄둔둔딨돝", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBitmapFactoryDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapFactoryDecoder.kt\ncoil3/decode/BitmapFactoryDecoder\n+ 2 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 bitmaps.kt\ncoil3/util/BitmapsKt\n+ 5 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n+ 6 collections.kt\ncoil3/util/CollectionsKt\n*L\n1#1,211:1\n81#2,6:212\n1#3:218\n51#4:219\n27#5:220\n23#6,3:221\n*S KotlinDebug\n*F\n+ 1 BitmapFactoryDecoder.kt\ncoil3/decode/BitmapFactoryDecoder\n*L\n39#1:212,6\n86#1:219\n86#1:220\n127#1:221,3\n*E\n"})
/* loaded from: classes.dex */
public final class BitmapFactoryDecoder implements Decoder {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int DEFAULT_MAX_PARALLELISM = 4;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ImageSource f500xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Options f501x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Semaphore f502x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final ExifOrientationStrategy f503x75d576dc;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/decode/BitmapFactoryDecoder$Companion;", "", "", "DEFAULT_MAX_PARALLELISM", "I", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J'\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcoil3/decode/BitmapFactoryDecoder$Factory;", "Lcoil3/decode/Decoder$Factory;", "Lkotlinx/coroutines/sync/Semaphore;", "parallelismLock", "Lcoil3/decode/ExifOrientationStrategy;", "exifOrientationStrategy", "<init>", "(Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;)V", "Lcoil3/fetch/SourceFetchResult;", "result", "Lcoil3/request/Options;", "options", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/decode/Decoder;", "create", "(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/decode/Decoder;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Factory implements Decoder.Factory {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final Semaphore f504xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public final ExifOrientationStrategy f505x3271d0aa;

        /* JADX WARN: Multi-variable type inference failed */
        public Factory() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        @Override // coil3.decode.Decoder.Factory
        @NotNull
        public Decoder create(@NotNull SourceFetchResult result, @NotNull Options options, @NotNull ImageLoader imageLoader) {
            return new BitmapFactoryDecoder(result.getSource(), options, this.f504xfbe0c504, this.f505x3271d0aa);
        }

        public Factory(@NotNull Semaphore semaphore, @NotNull ExifOrientationStrategy exifOrientationStrategy) {
            this.f504xfbe0c504 = semaphore;
            this.f505x3271d0aa = exifOrientationStrategy;
        }

        public /* synthetic */ Factory(Semaphore semaphore, ExifOrientationStrategy exifOrientationStrategy, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? SemaphoreKt.Semaphore$default(4, 0, 2, null) : semaphore, (i & 2) != 0 ? ExifOrientationStrategy.RESPECT_PERFORMANCE : exifOrientationStrategy);
        }
    }

    public BitmapFactoryDecoder(@NotNull ImageSource imageSource, @NotNull Options options, @NotNull Semaphore semaphore, @NotNull ExifOrientationStrategy exifOrientationStrategy) {
        this.f500xfbe0c504 = imageSource;
        this.f501x3271d0aa = options;
        this.f502x1378447b = semaphore;
        this.f503x75d576dc = exifOrientationStrategy;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // coil3.decode.Decoder
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object decode(@NotNull Continuation<? super DecodeResult> continuation) {
        C0446x30b842a6 c0446x30b842a6;
        Object coroutine_suspended;
        int i;
        Semaphore semaphore;
        BitmapFactoryDecoder bitmapFactoryDecoder;
        Semaphore semaphore2;
        Throwable th;
        Object runInterruptible$default;
        try {
            if (continuation instanceof C0446x30b842a6) {
                c0446x30b842a6 = (C0446x30b842a6) continuation;
                int i2 = c0446x30b842a6.f3898x9738a56c;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    c0446x30b842a6.f3898x9738a56c = i2 - Integer.MIN_VALUE;
                    Object obj = c0446x30b842a6.f3896x1378447b;
                    coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = c0446x30b842a6.f3898x9738a56c;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                semaphore2 = (Semaphore) c0446x30b842a6.f3894xfbe0c504;
                                try {
                                    ResultKt.throwOnFailure(obj);
                                    DecodeResult decodeResult = (DecodeResult) obj;
                                    semaphore2.release();
                                    return decodeResult;
                                } catch (Throwable th2) {
                                    th = th2;
                                    semaphore2.release();
                                    throw th;
                                }
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        Semaphore semaphore3 = c0446x30b842a6.f3895x3271d0aa;
                        bitmapFactoryDecoder = (BitmapFactoryDecoder) c0446x30b842a6.f3894xfbe0c504;
                        ResultKt.throwOnFailure(obj);
                        semaphore = semaphore3;
                    } else {
                        ResultKt.throwOnFailure(obj);
                        c0446x30b842a6.f3894xfbe0c504 = this;
                        semaphore = this.f502x1378447b;
                        c0446x30b842a6.f3895x3271d0aa = semaphore;
                        c0446x30b842a6.f3898x9738a56c = 1;
                        if (semaphore.acquire(c0446x30b842a6) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        bitmapFactoryDecoder = this;
                    }
                    C0350x95f25580 c0350x95f25580 = new C0350x95f25580(bitmapFactoryDecoder, 6);
                    c0446x30b842a6.f3894xfbe0c504 = semaphore;
                    c0446x30b842a6.f3895x3271d0aa = null;
                    c0446x30b842a6.f3898x9738a56c = 2;
                    runInterruptible$default = InterruptibleKt.runInterruptible$default(null, c0350x95f25580, c0446x30b842a6, 1, null);
                    if (runInterruptible$default != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    semaphore2 = semaphore;
                    obj = runInterruptible$default;
                    DecodeResult decodeResult2 = (DecodeResult) obj;
                    semaphore2.release();
                    return decodeResult2;
                }
            }
            C0350x95f25580 c0350x95f255802 = new C0350x95f25580(bitmapFactoryDecoder, 6);
            c0446x30b842a6.f3894xfbe0c504 = semaphore;
            c0446x30b842a6.f3895x3271d0aa = null;
            c0446x30b842a6.f3898x9738a56c = 2;
            runInterruptible$default = InterruptibleKt.runInterruptible$default(null, c0350x95f255802, c0446x30b842a6, 1, null);
            if (runInterruptible$default != coroutine_suspended) {
            }
        } catch (Throwable th3) {
            semaphore2 = semaphore;
            th = th3;
            semaphore2.release();
            throw th;
        }
        c0446x30b842a6 = new C0446x30b842a6(this, continuation);
        Object obj2 = c0446x30b842a6.f3896x1378447b;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0446x30b842a6.f3898x9738a56c;
        if (i == 0) {
        }
    }

    public /* synthetic */ BitmapFactoryDecoder(ImageSource imageSource, Options options, Semaphore semaphore, ExifOrientationStrategy exifOrientationStrategy, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(imageSource, options, (i & 4) != 0 ? SemaphoreKt.Semaphore$default(Integer.MAX_VALUE, 0, 2, null) : semaphore, (i & 8) != 0 ? ExifOrientationStrategy.RESPECT_PERFORMANCE : exifOrientationStrategy);
    }
}
