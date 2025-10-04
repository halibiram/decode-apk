package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0087@\u0018\u0000 #*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0003$%#B\u0013\b\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0006\u0010\u0005J\r\u0010\t\u001a\u00028\u0000¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u0012\u0004\b\u001b\u0010\u001cR\u0011\u0010\u001e\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0018R\u0011\u0010 \u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0018R\u0011\u0010\"\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b!\u0010\u0018\u0088\u0001\u0003\u0092\u0001\u0004\u0018\u00010\u0002¨\u0006&"}, d2 = {"Lkotlinx/coroutines/channels/ChannelResult;", ExifInterface.GPS_DIRECTION_TRUE, "", "holder", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "getOrNull-impl", "getOrNull", "getOrThrow-impl", "getOrThrow", "", "exceptionOrNull-impl", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "exceptionOrNull", "", "toString-impl", "(Ljava/lang/Object;)Ljava/lang/String;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Ljava/lang/Object;", "getHolder$annotations", "()V", "isSuccess-impl", "isSuccess", "isFailure-impl", "isFailure", "isClosed-impl", "isClosed", "Companion", "Failed", "Closed", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
@SourceDebugExtension({"SMAP\nChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channel.kt\nkotlinx/coroutines/channels/ChannelResult\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1485:1\n1#2:1486\n*E\n"})
/* loaded from: classes3.dex */
public final class ChannelResult<T> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final Failed f1843x3271d0aa = new Failed();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final Object holder;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0096\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/channels/ChannelResult$Closed;", "Lkotlinx/coroutines/channels/ChannelResult$Failed;", "cause", "", "<init>", "(Ljava/lang/Throwable;)V", "equals", "", "other", "", "hashCode", "", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Closed extends Failed {

        @JvmField
        @Nullable
        public final Throwable cause;

        public Closed(@Nullable Throwable th) {
            this.cause = th;
        }

        public boolean equals(@Nullable Object other) {
            if ((other instanceof Closed) && Intrinsics.areEqual(this.cause, ((Closed) other).cause)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            Throwable th = this.cause;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // kotlinx.coroutines.channels.ChannelResult.Failed
        @NotNull
        public String toString() {
            return "Closed(" + this.cause + ')';
        }
    }

    @InternalCoroutinesApi
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0003\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u00022\u0006\u0010\u0003\u001a\u00028\u0001H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u0002H\u0007¢\u0006\u0004\b\b\u0010\tJ%\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/channels/ChannelResult$Companion;", "", ExifInterface.LONGITUDE_EAST, "value", "Lkotlinx/coroutines/channels/ChannelResult;", "success-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "success", "failure-PtdJZtk", "()Ljava/lang/Object;", "failure", "", "cause", "closed-JP2dKIU", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "closed", "Lkotlinx/coroutines/channels/ChannelResult$Failed;", "failed", "Lkotlinx/coroutines/channels/ChannelResult$Failed;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @InternalCoroutinesApi
        @NotNull
        /* renamed from: closed-JP2dKIU, reason: not valid java name */
        public final <E> Object m2298closedJP2dKIU(@Nullable Throwable cause) {
            return ChannelResult.m2286constructorimpl(new Closed(cause));
        }

        @InternalCoroutinesApi
        @NotNull
        /* renamed from: failure-PtdJZtk, reason: not valid java name */
        public final <E> Object m2299failurePtdJZtk() {
            return ChannelResult.m2286constructorimpl(ChannelResult.f1843x3271d0aa);
        }

        @InternalCoroutinesApi
        @NotNull
        /* renamed from: success-JP2dKIU, reason: not valid java name */
        public final <E> Object m2300successJP2dKIU(E value) {
            return ChannelResult.m2286constructorimpl(value);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/channels/ChannelResult$Failed;", "", "<init>", "()V", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static class Failed {
        @NotNull
        public String toString() {
            return "Failed";
        }
    }

    public /* synthetic */ ChannelResult(Object obj) {
        this.holder = obj;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ChannelResult m2285boximpl(Object obj) {
        return new ChannelResult(obj);
    }

    @PublishedApi
    @NotNull
    /* renamed from: constructor-impl, reason: not valid java name */
    public static <T> Object m2286constructorimpl(@Nullable Object obj) {
        return obj;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2287equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof ChannelResult) && Intrinsics.areEqual(obj, ((ChannelResult) obj2).getHolder());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2288equalsimpl0(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    @Nullable
    /* renamed from: exceptionOrNull-impl, reason: not valid java name */
    public static final Throwable m2289exceptionOrNullimpl(Object obj) {
        Closed closed;
        if (obj instanceof Closed) {
            closed = (Closed) obj;
        } else {
            closed = null;
        }
        if (closed == null) {
            return null;
        }
        return closed.cause;
    }

    @PublishedApi
    public static /* synthetic */ void getHolder$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    /* renamed from: getOrNull-impl, reason: not valid java name */
    public static final T m2290getOrNullimpl(Object obj) {
        if (obj instanceof Failed) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOrThrow-impl, reason: not valid java name */
    public static final T m2291getOrThrowimpl(Object obj) {
        if (!(obj instanceof Failed)) {
            return obj;
        }
        if (obj instanceof Closed) {
            Throwable th = ((Closed) obj).cause;
            if (th != null) {
                throw th;
            }
            throw new IllegalStateException("Trying to call 'getOrThrow' on a channel closed without a cause");
        }
        throw new IllegalStateException("Trying to call 'getOrThrow' on a failed result of a non-closed channel");
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2292hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* renamed from: isClosed-impl, reason: not valid java name */
    public static final boolean m2293isClosedimpl(Object obj) {
        return obj instanceof Closed;
    }

    /* renamed from: isFailure-impl, reason: not valid java name */
    public static final boolean m2294isFailureimpl(Object obj) {
        return obj instanceof Failed;
    }

    /* renamed from: isSuccess-impl, reason: not valid java name */
    public static final boolean m2295isSuccessimpl(Object obj) {
        return !(obj instanceof Failed);
    }

    @NotNull
    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2296toStringimpl(Object obj) {
        if (obj instanceof Closed) {
            return ((Closed) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object other) {
        return m2287equalsimpl(this.holder, other);
    }

    public int hashCode() {
        return m2292hashCodeimpl(this.holder);
    }

    @NotNull
    public String toString() {
        return m2296toStringimpl(this.holder);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ Object getHolder() {
        return this.holder;
    }
}
