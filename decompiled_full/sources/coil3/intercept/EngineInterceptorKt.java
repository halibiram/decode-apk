package coil3.intercept;

import android.graphics.Bitmap;
import coil3.BitmapImage;
import coil3.EventListener;
import coil3.Image;
import coil3.Image_androidKt;
import coil3.content.Logger;
import coil3.intercept.EngineInterceptor;
import coil3.request.ImageRequest;
import coil3.request.ImageRequestsKt;
import coil3.request.Options;
import coil3.size.Size;
import coil3.transform.Transformation;
import defpackage.AbstractC0892xc141c517;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a8\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0080@¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"transform", "Lcoil3/intercept/EngineInterceptor$ExecuteResult;", "result", "request", "Lcoil3/request/ImageRequest;", "options", "Lcoil3/request/Options;", "eventListener", "Lcoil3/EventListener;", "logger", "Lcoil3/util/Logger;", "(Lcoil3/intercept/EngineInterceptor$ExecuteResult;Lcoil3/request/ImageRequest;Lcoil3/request/Options;Lcoil3/EventListener;Lcoil3/util/Logger;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEngineInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineInterceptor.kt\ncoil3/intercept/EngineInterceptorKt\n+ 2 logging.kt\ncoil3/util/LoggingKt\n+ 3 collections.kt\ncoil3/util/CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,272:1\n68#2,4:273\n78#3,3:277\n82#3:281\n1#4:280\n*S KotlinDebug\n*F\n+ 1 EngineInterceptor.kt\ncoil3/intercept/EngineInterceptorKt\n*L\n248#1:273,4\n258#1:277,3\n258#1:281\n*E\n"})
/* loaded from: classes.dex */
public final class EngineInterceptorKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x00e0 -> B:10:0x00e7). Please report as a decompilation issue!!! */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object transform(@NotNull EngineInterceptor.ExecuteResult executeResult, @NotNull ImageRequest imageRequest, @NotNull Options options, @NotNull EventListener eventListener, @Nullable Logger logger, @NotNull Continuation<? super EngineInterceptor.ExecuteResult> continuation) {
        C0200x75d576dc c0200x75d576dc;
        int i;
        Options options2;
        ImageRequest imageRequest2;
        EventListener eventListener2;
        EngineInterceptor.ExecuteResult executeResult2;
        List<Transformation> list;
        Bitmap bitmap;
        int i2;
        int i3;
        if (continuation instanceof C0200x75d576dc) {
            C0200x75d576dc c0200x75d576dc2 = (C0200x75d576dc) continuation;
            int i4 = c0200x75d576dc2.f668x3db60231;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c0200x75d576dc2.f668x3db60231 = i4 - Integer.MIN_VALUE;
                c0200x75d576dc = c0200x75d576dc2;
                Object obj = c0200x75d576dc.f667x95f25580;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0200x75d576dc.f668x3db60231;
                if (i == 0) {
                    if (i == 1) {
                        i2 = c0200x75d576dc.f666x34271fae;
                        int i5 = c0200x75d576dc.f665x9e171bf9;
                        List<Transformation> list2 = c0200x75d576dc.f664x9738a56c;
                        eventListener2 = c0200x75d576dc.f663x75d576dc;
                        Options options3 = c0200x75d576dc.f662x1378447b;
                        ImageRequest imageRequest3 = c0200x75d576dc.f661x3271d0aa;
                        EngineInterceptor.ExecuteResult executeResult3 = c0200x75d576dc.f660xfbe0c504;
                        ResultKt.throwOnFailure(obj);
                        List<Transformation> list3 = list2;
                        options2 = options3;
                        bitmap = (Bitmap) obj;
                        JobKt.ensureActive(c0200x75d576dc.getContext());
                        List<Transformation> list4 = list3;
                        i3 = i5 + 1;
                        imageRequest2 = imageRequest3;
                        executeResult2 = executeResult3;
                        list = list4;
                        if (i3 < i2) {
                            Transformation transformation = list.get(i3);
                            Size size = options2.getSize();
                            c0200x75d576dc.f660xfbe0c504 = executeResult2;
                            c0200x75d576dc.f661x3271d0aa = imageRequest2;
                            c0200x75d576dc.f662x1378447b = options2;
                            c0200x75d576dc.f663x75d576dc = eventListener2;
                            c0200x75d576dc.f664x9738a56c = list;
                            c0200x75d576dc.f665x9e171bf9 = i3;
                            c0200x75d576dc.f666x34271fae = i2;
                            c0200x75d576dc.f668x3db60231 = 1;
                            obj = transformation.transform(bitmap, size, c0200x75d576dc);
                            if (obj == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            EngineInterceptor.ExecuteResult executeResult4 = executeResult2;
                            imageRequest3 = imageRequest2;
                            i5 = i3;
                            list3 = list;
                            executeResult3 = executeResult4;
                            bitmap = (Bitmap) obj;
                            JobKt.ensureActive(c0200x75d576dc.getContext());
                            List<Transformation> list42 = list3;
                            i3 = i5 + 1;
                            imageRequest2 = imageRequest3;
                            executeResult2 = executeResult3;
                            list = list42;
                            if (i3 < i2) {
                                eventListener2.transformEnd(imageRequest2, bitmap);
                                return EngineInterceptor.ExecuteResult.copy$default(executeResult2, Image_androidKt.asImage$default(bitmap, false, 1, null), false, null, null, 14, null);
                            }
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    List<Transformation> transformations = ImageRequestsKt.getTransformations(imageRequest);
                    if (transformations.isEmpty()) {
                        return executeResult;
                    }
                    Image image = executeResult.getImage();
                    if (!(image instanceof BitmapImage) && !ImageRequestsKt.getAllowConversionToBitmap(imageRequest)) {
                        if (logger != null) {
                            Logger.Level level = Logger.Level.Info;
                            if (logger.getMinLevel().compareTo(level) <= 0) {
                                logger.log(EngineInterceptor.TAG, level, "allowConversionToBitmap=false, skipping transformations for type " + Reflection.getOrCreateKotlinClass(executeResult.getImage().getClass()).getSimpleName() + '.', null);
                            }
                        }
                        return executeResult;
                    }
                    options2 = options;
                    Bitmap convertImageToBitmap = EngineInterceptor_androidKt.convertImageToBitmap(image, options2, transformations, logger);
                    imageRequest2 = imageRequest;
                    eventListener2 = eventListener;
                    eventListener2.transformStart(imageRequest2, convertImageToBitmap);
                    int size2 = transformations.size();
                    executeResult2 = executeResult;
                    list = transformations;
                    bitmap = convertImageToBitmap;
                    i2 = size2;
                    i3 = 0;
                    if (i3 < i2) {
                    }
                }
            }
        }
        c0200x75d576dc = new ContinuationImpl(continuation);
        Object obj2 = c0200x75d576dc.f667x95f25580;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0200x75d576dc.f668x3db60231;
        if (i == 0) {
        }
    }
}
