package coil3.request;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.Lifecycle;
import coil3.BitmapImage;
import coil3.Extras;
import coil3.Image;
import coil3.ImageLoader;
import coil3.content.BitmapsKt;
import coil3.content.HardwareBitmapService;
import coil3.content.HardwareBitmapsKt;
import coil3.content.Logger;
import coil3.content.SystemCallbacks;
import coil3.content.Utils_androidKt;
import coil3.memory.MemoryCache;
import coil3.request.ImageRequest;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.size.SizeResolver;
import coil3.size.ViewSizeResolver;
import coil3.size.ViewSizeResolverKt;
import coil3.target.Target;
import coil3.target.ViewTarget;
import defpackage.AbstractC0962xa4a1ff52;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Job;
import okio.FileSystem;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ'\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcoil3/request/AndroidRequestService;", "Lcoil3/request/RequestService;", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/util/SystemCallbacks;", "systemCallbacks", "Lcoil3/util/Logger;", "logger", "<init>", "(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/util/Logger;)V", "Lcoil3/request/ImageRequest;", "request", "Lkotlinx/coroutines/Job;", "job", "", "findLifecycle", "Lcoil3/request/RequestDelegate;", "requestDelegate", "(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/Job;Z)Lcoil3/request/RequestDelegate;", "updateRequest", "(Lcoil3/request/ImageRequest;)Lcoil3/request/ImageRequest;", "Lcoil3/size/Size;", "size", "Lcoil3/request/Options;", "options", "(Lcoil3/request/ImageRequest;Lcoil3/size/Size;)Lcoil3/request/Options;", "updateOptions", "(Lcoil3/request/Options;)Lcoil3/request/Options;", "Lcoil3/memory/MemoryCache$Value;", "cacheValue", "isCacheValueValidForHardware", "(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Value;)Z", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRequestService.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestService.android.kt\ncoil3/request/AndroidRequestService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,258:1\n1#2:259\n*E\n"})
/* loaded from: classes.dex */
public final class AndroidRequestService implements RequestService {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ImageLoader f691xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final SystemCallbacks f692x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Logger f693x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final HardwareBitmapService f694x75d576dc;

    public AndroidRequestService(@NotNull ImageLoader imageLoader, @NotNull SystemCallbacks systemCallbacks, @Nullable Logger logger) {
        this.f691xfbe0c504 = imageLoader;
        this.f692x3271d0aa = systemCallbacks;
        this.f693x1378447b = logger;
        this.f694x75d576dc = HardwareBitmapsKt.HardwareBitmapService(logger);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static boolean m944xfbe0c504(ImageRequest imageRequest, Bitmap.Config config2) {
        if (!BitmapsKt.isHardware(config2)) {
            return true;
        }
        if (!ImageRequests_androidKt.getAllowHardware(imageRequest)) {
            return false;
        }
        Target target = imageRequest.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String();
        if (target instanceof ViewTarget) {
            View view = ((ViewTarget) target).getView();
            if (view.isAttachedToWindow() && !view.isHardwareAccelerated()) {
                return false;
            }
        }
        return true;
    }

    @Override // coil3.request.RequestService
    public boolean isCacheValueValidForHardware(@NotNull ImageRequest request, @NotNull MemoryCache.Value cacheValue) {
        BitmapImage bitmapImage;
        Image image = cacheValue.getImage();
        if (image instanceof BitmapImage) {
            bitmapImage = (BitmapImage) image;
        } else {
            bitmapImage = null;
        }
        if (bitmapImage == null) {
            return true;
        }
        return m944xfbe0c504(request, BitmapsKt.getSafeConfig(bitmapImage.getBitmap()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0066, code lost:
    
        if (r17.f694x75d576dc.allowHardwareMainThread(r19) == false) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c3  */
    @Override // coil3.request.RequestService
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Options options(@NotNull ImageRequest request, @NotNull Size size) {
        boolean z;
        boolean z2;
        boolean z3;
        Context context = request.getContext();
        Scale scale = request.getScale();
        Precision precision = request.getPrecision();
        String diskCacheKey = request.getDiskCacheKey();
        FileSystem fileSystem = request.getFileSystem();
        CachePolicy memoryCachePolicy = request.getMemoryCachePolicy();
        CachePolicy diskCachePolicy = request.getDiskCachePolicy();
        CachePolicy networkCachePolicy = request.getNetworkCachePolicy();
        Bitmap.Config bitmapConfig = ImageRequests_androidKt.getBitmapConfig(request);
        boolean allowRgb565 = ImageRequests_androidKt.getAllowRgb565(request);
        if (!ImageRequestsKt.getTransformations(request).isEmpty() && !ArraysKt___ArraysKt.contains(Utils_androidKt.getVALID_TRANSFORMATION_CONFIGS(), ImageRequests_androidKt.getBitmapConfig(request))) {
            z = false;
        } else {
            z = true;
        }
        if (BitmapsKt.isHardware(ImageRequests_androidKt.getBitmapConfig(request))) {
            if (m944xfbe0c504(request, ImageRequests_androidKt.getBitmapConfig(request))) {
            }
            z2 = false;
            if (z || !z2) {
                bitmapConfig = Bitmap.Config.ARGB_8888;
            }
            if (!allowRgb565 && ImageRequestsKt.getTransformations(request).isEmpty() && bitmapConfig != Bitmap.Config.ALPHA_8) {
                z3 = true;
            } else {
                z3 = false;
            }
            Extras.Builder builder = new Extras.Builder((Map<Extras.Key<?>, ? extends Object>) AbstractC0962xa4a1ff52.plus(request.getDefaults().getExtras().asMap(), request.getExtras().asMap()));
            if (bitmapConfig != ImageRequests_androidKt.getBitmapConfig(request)) {
                builder = builder.set(ImageRequests_androidKt.getBitmapConfig(Extras.Key.INSTANCE), bitmapConfig);
            }
            if (z3 != ImageRequests_androidKt.getAllowRgb565(request)) {
                builder = builder.set(ImageRequests_androidKt.getAllowRgb565(Extras.Key.INSTANCE), Boolean.valueOf(z3));
            }
            return new Options(context, size, scale, precision, diskCacheKey, fileSystem, memoryCachePolicy, diskCachePolicy, networkCachePolicy, builder.build());
        }
        z2 = true;
        if (z) {
        }
        bitmapConfig = Bitmap.Config.ARGB_8888;
        if (!allowRgb565) {
        }
        z3 = false;
        Extras.Builder builder2 = new Extras.Builder((Map<Extras.Key<?>, ? extends Object>) AbstractC0962xa4a1ff52.plus(request.getDefaults().getExtras().asMap(), request.getExtras().asMap()));
        if (bitmapConfig != ImageRequests_androidKt.getBitmapConfig(request)) {
        }
        if (z3 != ImageRequests_androidKt.getAllowRgb565(request)) {
        }
        return new Options(context, size, scale, precision, diskCacheKey, fileSystem, memoryCachePolicy, diskCachePolicy, networkCachePolicy, builder2.build());
    }

    @Override // coil3.request.RequestService
    @NotNull
    public RequestDelegate requestDelegate(@NotNull ImageRequest request, @NotNull Job job, boolean findLifecycle) {
        Context context;
        Context context2;
        Target target = request.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String();
        if (target instanceof ViewTarget) {
            Lifecycle lifecycle = ImageRequests_androidKt.getLifecycle(request);
            if (lifecycle == null) {
                Target target2 = request.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String();
                if (target2 instanceof ViewTarget) {
                    context2 = ((ViewTarget) target2).getView().getContext();
                } else {
                    context2 = request.getContext();
                }
                lifecycle = coil3.content.Context.getLifecycle(context2);
            }
            return new ViewTargetRequestDelegate(this.f691xfbe0c504, request, (ViewTarget) target, lifecycle, job);
        }
        Lifecycle lifecycle2 = ImageRequests_androidKt.getLifecycle(request);
        if (lifecycle2 == null) {
            if (findLifecycle) {
                Target target3 = request.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String();
                if (target3 instanceof ViewTarget) {
                    context = ((ViewTarget) target3).getView().getContext();
                } else {
                    context = request.getContext();
                }
                lifecycle2 = coil3.content.Context.getLifecycle(context);
            } else {
                lifecycle2 = null;
            }
        }
        if (lifecycle2 != null) {
            return new LifecycleRequestDelegate(lifecycle2, job);
        }
        return BaseRequestDelegate.m945boximpl(BaseRequestDelegate.m946constructorimpl(job));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0036  */
    @Override // coil3.request.RequestService
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Options updateOptions(@NotNull Options options) {
        boolean z;
        Extras extras = options.getExtras();
        if (BitmapsKt.isHardware(ImageRequests_androidKt.getBitmapConfig(options)) && !this.f694x75d576dc.allowHardwareWorkerThread()) {
            extras = extras.newBuilder().set(ImageRequests_androidKt.getBitmapConfig(Extras.Key.INSTANCE), Bitmap.Config.ARGB_8888).build();
            z = true;
            Extras extras2 = extras;
            if (!z) {
                return Options.copy$default(options, null, null, null, null, null, null, null, null, null, extras2, 511, null);
            }
            return options;
        }
        z = false;
        Extras extras22 = extras;
        if (!z) {
        }
    }

    @Override // coil3.request.RequestService
    @NotNull
    public ImageRequest updateRequest(@NotNull ImageRequest request) {
        Precision precision;
        ViewTarget viewTarget;
        KeyEvent.Callback callback;
        Scale scale;
        ImageView.ScaleType scaleType;
        ImageView imageView = null;
        ImageRequest.Builder defaults = ImageRequest.newBuilder$default(request, null, 1, null).defaults(this.f691xfbe0c504.getDefaults());
        SizeResolver sizeResolver = request.getDefined().getSizeResolver();
        if (sizeResolver == null) {
            if (request.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String() instanceof ViewTarget) {
                View view = ((ViewTarget) request.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String()).getView();
                if ((view instanceof ImageView) && ((scaleType = ((ImageView) view).getScaleType()) == ImageView.ScaleType.CENTER || scaleType == ImageView.ScaleType.MATRIX)) {
                    sizeResolver = SizeResolver.ORIGINAL;
                } else {
                    sizeResolver = ViewSizeResolverKt.ViewSizeResolver$default(view, false, 2, null);
                }
            } else {
                sizeResolver = SizeResolver.ORIGINAL;
            }
            defaults.size(sizeResolver);
        }
        if (request.getDefined().getScale() == null) {
            Target target = request.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String();
            if (target instanceof ViewTarget) {
                viewTarget = (ViewTarget) target;
            } else {
                viewTarget = null;
            }
            if (viewTarget != null) {
                callback = viewTarget.getView();
            } else {
                callback = null;
            }
            if (callback instanceof ImageView) {
                imageView = (ImageView) callback;
            }
            if (imageView != null) {
                scale = Utils_androidKt.getScale(imageView);
            } else {
                scale = request.getScale();
            }
            defaults.scale(scale);
        }
        if (request.getDefined().getPrecision() == null) {
            if (request.getDefined().getSizeResolver() == null && Intrinsics.areEqual(sizeResolver, SizeResolver.ORIGINAL)) {
                precision = Precision.INEXACT;
            } else if ((request.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String() instanceof ViewTarget) && (sizeResolver instanceof ViewSizeResolver) && (((ViewTarget) request.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String()).getView() instanceof ImageView) && ((ViewTarget) request.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String()).getView() == ((ViewSizeResolver) sizeResolver).getView()) {
                precision = Precision.INEXACT;
            } else {
                precision = Precision.EXACT;
            }
            defaults.precision(precision);
        }
        return defaults.build();
    }
}
