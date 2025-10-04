package coil3.size;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.exifinterface.media.ExifInterface;
import coil3.size.Dimension;
import coil3.size.ViewSizeResolver;
import defpackage.AbstractC0892xc141c517;
import defpackage.C1291xb7b9aa19;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003J\u000e\u0010\u000b\u001a\u00020\fH\u0096@¢\u0006\u0002\u0010\rJ\n\u0010\u000e\u001a\u0004\u0018\u00010\fH\u0002J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J\"\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J\u0014\u0010\u0017\u001a\u00020\u0018*\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u0012\u0010\u0004\u001a\u00028\u0000X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001cÀ\u0006\u0001"}, d2 = {"Lcoil3/size/ViewSizeResolver;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/view/View;", "Lcoil3/size/SizeResolver;", "view", "getView", "()Landroid/view/View;", "subtractPadding", "", "getSubtractPadding", "()Z", "size", "Lcoil3/size/Size;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getSize", "getWidth", "Lcoil3/size/Dimension;", "getHeight", "getDimension", "paramSize", "", "viewSize", "paddingSize", "removePreDrawListenerSafe", "", "Landroid/view/ViewTreeObserver;", "victim", "Landroid/view/ViewTreeObserver$OnPreDrawListener;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nViewSizeResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewSizeResolver.kt\ncoil3/size/ViewSizeResolver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,115:1\n1#2:116\n426#3,11:117\n*S KotlinDebug\n*F\n+ 1 ViewSizeResolver.kt\ncoil3/size/ViewSizeResolver\n*L\n39#1:117,11\n*E\n"})
/* loaded from: classes.dex */
public interface ViewSizeResolver<T extends View> extends SizeResolver {

    /* renamed from: coil3.size.ViewSizeResolver$-CC, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class CC {
        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public static boolean m961xfbe0c504(ViewSizeResolver viewSizeResolver) {
            return true;
        }

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public static Object m962x3271d0aa(ViewSizeResolver viewSizeResolver, Continuation continuation) {
            return m967x34271fae(viewSizeResolver, continuation);
        }

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
        public static Dimension m963x1378447b(int i, int i2, int i3) {
            if (i == -2) {
                return Dimension.Undefined.INSTANCE;
            }
            int i4 = i - i3;
            if (i4 > 0) {
                return Dimension.Pixels.m954boximpl(DimensionKt.Dimension(i4));
            }
            int i5 = i2 - i3;
            if (i5 > 0) {
                return Dimension.Pixels.m954boximpl(DimensionKt.Dimension(i5));
            }
            return null;
        }

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
        public static Size m964x75d576dc(ViewSizeResolver viewSizeResolver) {
            int i;
            int i2;
            ViewGroup.LayoutParams layoutParams = viewSizeResolver.getView().getLayoutParams();
            int i3 = -1;
            if (layoutParams != null) {
                i = layoutParams.width;
            } else {
                i = -1;
            }
            int width = viewSizeResolver.getView().getWidth();
            int i4 = 0;
            if (viewSizeResolver.getSubtractPadding()) {
                i2 = viewSizeResolver.getView().getPaddingRight() + viewSizeResolver.getView().getPaddingLeft();
            } else {
                i2 = 0;
            }
            Dimension m963x1378447b = m963x1378447b(i, width, i2);
            if (m963x1378447b == null) {
                return null;
            }
            ViewGroup.LayoutParams layoutParams2 = viewSizeResolver.getView().getLayoutParams();
            if (layoutParams2 != null) {
                i3 = layoutParams2.height;
            }
            int height = viewSizeResolver.getView().getHeight();
            if (viewSizeResolver.getSubtractPadding()) {
                i4 = viewSizeResolver.getView().getPaddingTop() + viewSizeResolver.getView().getPaddingBottom();
            }
            Dimension m963x1378447b2 = m963x1378447b(i3, height, i4);
            if (m963x1378447b2 == null) {
                return null;
            }
            return new Size(m963x1378447b, m963x1378447b2);
        }

        /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
        public static void m966x9e171bf9(ViewSizeResolver viewSizeResolver, ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            } else {
                viewSizeResolver.getView().getViewTreeObserver().removeOnPreDrawListener(onPreDrawListener);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [coil3.size.ViewSizeResolver$size$3$preDrawListener$1, android.view.ViewTreeObserver$OnPreDrawListener] */
        /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
        public static /* synthetic */ Object m967x34271fae(final ViewSizeResolver viewSizeResolver, Continuation continuation) {
            Size m964x75d576dc = m964x75d576dc(viewSizeResolver);
            if (m964x75d576dc != null) {
                return m964x75d576dc;
            }
            final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            final ViewTreeObserver viewTreeObserver = viewSizeResolver.getView().getViewTreeObserver();
            ?? r2 = new ViewTreeObserver.OnPreDrawListener() { // from class: coil3.size.ViewSizeResolver$size$3$preDrawListener$1

                /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                public boolean f848xfbe0c504;

                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    Size m964x75d576dc2;
                    ViewSizeResolver viewSizeResolver2 = ViewSizeResolver.this;
                    m964x75d576dc2 = ViewSizeResolver.CC.m964x75d576dc(viewSizeResolver2);
                    if (m964x75d576dc2 != null) {
                        ViewSizeResolver.CC.m966x9e171bf9(viewSizeResolver2, viewTreeObserver, this);
                        if (!this.f848xfbe0c504) {
                            this.f848xfbe0c504 = true;
                            cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(m964x75d576dc2));
                        }
                    }
                    return true;
                }
            };
            viewTreeObserver.addOnPreDrawListener(r2);
            cancellableContinuationImpl.invokeOnCancellation(new C1291xb7b9aa19(viewSizeResolver, viewTreeObserver, r2));
            Object result = cancellableContinuationImpl.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        }
    }

    boolean getSubtractPadding();

    @NotNull
    T getView();

    @Override // coil3.size.SizeResolver
    @Nullable
    Object size(@NotNull Continuation<? super Size> continuation);
}
