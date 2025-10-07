package androidx.test.core.app;

import android.app.UiAutomation;
import android.graphics.Bitmap;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.test.core.app.DeviceCapture$takeScreenshotNoSync$1", f = "DeviceCapture.kt", i = {}, l = {113}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class DeviceCapture$takeScreenshotNoSync$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {
    final /* synthetic */ Ref.ObjectRef<Bitmap> $bitmap;
    final /* synthetic */ Ref.ObjectRef<Exception> $exception;
    final /* synthetic */ boolean $hardwareDrawingEnabled;
    final /* synthetic */ UiAutomation $uiAutomation;
    int label;

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.test.core.app.DeviceCapture$takeScreenshotNoSync$1$1", f = "DeviceCapture.kt", i = {}, l = {114, 115}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nDeviceCapture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceCapture.kt\nandroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,160:1\n1#2:161\n*E\n"})
    /* renamed from: androidx.test.core.app.DeviceCapture$takeScreenshotNoSync$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {
        final /* synthetic */ Ref.ObjectRef<Bitmap> $bitmap;
        final /* synthetic */ Ref.ObjectRef<Exception> $exception;
        final /* synthetic */ boolean $hardwareDrawingEnabled;
        final /* synthetic */ UiAutomation $uiAutomation;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Ref.ObjectRef<Bitmap> objectRef, UiAutomation uiAutomation, boolean z, Ref.ObjectRef<Exception> objectRef2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$bitmap = objectRef;
            this.$uiAutomation = uiAutomation;
            this.$hardwareDrawingEnabled = z;
            this.$exception = objectRef2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass1(this.$bitmap, this.$uiAutomation, this.$hardwareDrawingEnabled, this.$exception, continuation);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0050  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            Object forceRedrawGlobalWindowViews;
            Object takeScreenshotOnNextFrame;
            Ref.ObjectRef<Bitmap> objectRef;
            T t;
            Exception exc;
            Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        objectRef = (Ref.ObjectRef) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        t = obj;
                        objectRef.element = t;
                        exc = this.$exception.element;
                        if (exc != null) {
                            Bitmap bitmap = this.$bitmap.element;
                            Intrinsics.checkNotNull(bitmap);
                            return bitmap;
                        }
                        throw exc;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                forceRedrawGlobalWindowViews = DeviceCapture.forceRedrawGlobalWindowViews(this);
                if (forceRedrawGlobalWindowViews == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            Ref.ObjectRef<Bitmap> objectRef2 = this.$bitmap;
            UiAutomation uiAutomation = this.$uiAutomation;
            Intrinsics.checkNotNullExpressionValue(uiAutomation, "uiAutomation");
            boolean z = this.$hardwareDrawingEnabled;
            this.L$0 = objectRef2;
            this.label = 2;
            takeScreenshotOnNextFrame = DeviceCapture.takeScreenshotOnNextFrame(uiAutomation, z, this);
            if (takeScreenshotOnNextFrame == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef2;
            t = takeScreenshotOnNextFrame;
            objectRef.element = t;
            exc = this.$exception.element;
            if (exc != null) {
            }
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Bitmap> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceCapture$takeScreenshotNoSync$1(Ref.ObjectRef<Bitmap> objectRef, UiAutomation uiAutomation, boolean z, Ref.ObjectRef<Exception> objectRef2, Continuation<? super DeviceCapture$takeScreenshotNoSync$1> continuation) {
        super(2, continuation);
        this.$bitmap = objectRef;
        this.$uiAutomation = uiAutomation;
        this.$hardwareDrawingEnabled = z;
        this.$exception = objectRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new DeviceCapture$takeScreenshotNoSync$1(this.$bitmap, this.$uiAutomation, this.$hardwareDrawingEnabled, this.$exception, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            Duration.Companion companion = Duration.INSTANCE;
            long duration = DurationKt.toDuration(5, DurationUnit.SECONDS);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$bitmap, this.$uiAutomation, this.$hardwareDrawingEnabled, this.$exception, null);
            this.label = 1;
            obj = TimeoutKt.m2249withTimeoutKLykuaI(duration, anonymousClass1, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Bitmap> continuation) {
        return ((DeviceCapture$takeScreenshotNoSync$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
