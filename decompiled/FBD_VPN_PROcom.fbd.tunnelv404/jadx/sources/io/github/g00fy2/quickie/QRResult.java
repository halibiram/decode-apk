package io.github.g00fy2.quickie;

import io.github.g00fy2.quickie.content.QRContent;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lio/github/g00fy2/quickie/QRResult;", "", "QRSuccess", "QRUserCanceled", "QRMissingPermission", "QRError", "Lio/github/g00fy2/quickie/QRResult$QRError;", "Lio/github/g00fy2/quickie/QRResult$QRMissingPermission;", "Lio/github/g00fy2/quickie/QRResult$QRSuccess;", "Lio/github/g00fy2/quickie/QRResult$QRUserCanceled;", "quickie-foss_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class QRResult {

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\b\u0000\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0014\u0010\u0007\u001a\u00060\u0002j\u0002`\u0003HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u001e\u0010\t\u001a\u00020\u00002\f\b\u0002\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0004\u001a\u00060\u0002j\u0002`\u00038\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\b¨\u0006\u0019"}, d2 = {"Lio/github/g00fy2/quickie/QRResult$QRError;", "Lio/github/g00fy2/quickie/QRResult;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "<init>", "(Ljava/lang/Exception;)V", "component1", "()Ljava/lang/Exception;", "copy", "(Ljava/lang/Exception;)Lio/github/g00fy2/quickie/QRResult$QRError;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Ljava/lang/Exception;", "getException", "quickie-foss_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class QRError extends QRResult {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final Exception exception;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public QRError(@NotNull Exception exception) {
            super(null);
            Intrinsics.checkNotNullParameter(exception, "exception");
            this.exception = exception;
        }

        public static /* synthetic */ QRError copy$default(QRError qRError, Exception exc, int i, Object obj) {
            if ((i & 1) != 0) {
                exc = qRError.exception;
            }
            return qRError.copy(exc);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final Exception getException() {
            return this.exception;
        }

        @NotNull
        public final QRError copy(@NotNull Exception exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            return new QRError(exception);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof QRError) && Intrinsics.areEqual(this.exception, ((QRError) other).exception);
        }

        @NotNull
        public final Exception getException() {
            return this.exception;
        }

        public int hashCode() {
            return this.exception.hashCode();
        }

        @NotNull
        public String toString() {
            return "QRError(exception=" + this.exception + ")";
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bHÖ\u0003¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lio/github/g00fy2/quickie/QRResult$QRMissingPermission;", "Lio/github/g00fy2/quickie/QRResult;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "quickie-foss_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class QRMissingPermission extends QRResult {

        @NotNull
        public static final QRMissingPermission INSTANCE = new QRResult(null);

        public boolean equals(@Nullable Object other) {
            return this == other || (other instanceof QRMissingPermission);
        }

        public int hashCode() {
            return -451247076;
        }

        @NotNull
        public String toString() {
            return "QRMissingPermission";
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0007¨\u0006\u0018"}, d2 = {"Lio/github/g00fy2/quickie/QRResult$QRSuccess;", "Lio/github/g00fy2/quickie/QRResult;", "Lio/github/g00fy2/quickie/content/QRContent;", "content", "<init>", "(Lio/github/g00fy2/quickie/content/QRContent;)V", "component1", "()Lio/github/g00fy2/quickie/content/QRContent;", "copy", "(Lio/github/g00fy2/quickie/content/QRContent;)Lio/github/g00fy2/quickie/QRResult$QRSuccess;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lio/github/g00fy2/quickie/content/QRContent;", "getContent", "quickie-foss_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class QRSuccess extends QRResult {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final QRContent content;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public QRSuccess(@NotNull QRContent content) {
            super(null);
            Intrinsics.checkNotNullParameter(content, "content");
            this.content = content;
        }

        public static /* synthetic */ QRSuccess copy$default(QRSuccess qRSuccess, QRContent qRContent, int i, Object obj) {
            if ((i & 1) != 0) {
                qRContent = qRSuccess.content;
            }
            return qRSuccess.copy(qRContent);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final QRContent getContent() {
            return this.content;
        }

        @NotNull
        public final QRSuccess copy(@NotNull QRContent content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return new QRSuccess(content);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof QRSuccess) && Intrinsics.areEqual(this.content, ((QRSuccess) other).content);
        }

        @NotNull
        public final QRContent getContent() {
            return this.content;
        }

        public int hashCode() {
            return this.content.hashCode();
        }

        @NotNull
        public String toString() {
            return "QRSuccess(content=" + this.content + ")";
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bHÖ\u0003¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lio/github/g00fy2/quickie/QRResult$QRUserCanceled;", "Lio/github/g00fy2/quickie/QRResult;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "quickie-foss_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class QRUserCanceled extends QRResult {

        @NotNull
        public static final QRUserCanceled INSTANCE = new QRResult(null);

        public boolean equals(@Nullable Object other) {
            return this == other || (other instanceof QRUserCanceled);
        }

        public int hashCode() {
            return 1573134557;
        }

        @NotNull
        public String toString() {
            return "QRUserCanceled";
        }
    }

    public QRResult(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
