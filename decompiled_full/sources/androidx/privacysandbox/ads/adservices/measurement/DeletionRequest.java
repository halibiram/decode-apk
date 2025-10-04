package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import androidx.annotation.RequiresApi;
import defpackage.AbstractC0362x4440ab85;
import j$.time.Instant;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@RequiresApi(33)
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0007\u0018\u0000 \"2\u00020\u0001:\u0002#\"BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0017\u001a\u0004\b\u0018\u0010\u000fR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0017\u001a\u0004\b\u0019\u0010\u000fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0007\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001a\u001a\u0004\b\u001d\u0010\u001cR\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001e\u001a\u0004\b!\u0010 ¨\u0006$"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", "", "", "deletionMode", "matchBehavior", "j$/time/Instant", "start", "end", "", "Landroid/net/Uri;", "domainUris", "originUris", "<init>", "(IILj$/time/Instant;Lj$/time/Instant;Ljava/util/List;Ljava/util/List;)V", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "toString", "()Ljava/lang/String;", "I", "getDeletionMode", "getMatchBehavior", "Lj$/time/Instant;", "getStart", "()Lj$/time/Instant;", "getEnd", "Ljava/util/List;", "getDomainUris", "()Ljava/util/List;", "getOriginUris", "Companion", "Builder", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DeletionRequest {
    public static final int DELETION_MODE_ALL = 0;
    public static final int DELETION_MODE_EXCLUDE_INTERNAL_DATA = 1;
    public static final int MATCH_BEHAVIOR_DELETE = 0;
    public static final int MATCH_BEHAVIOR_PRESERVE = 1;
    private final int deletionMode;

    @NotNull
    private final List<Uri> domainUris;

    @NotNull
    private final Instant end;
    private final int matchBehavior;

    @NotNull
    private final List<Uri> originUris;

    @NotNull
    private final Instant start;

    @RequiresApi(33)
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\nJ\u001b\u0010\u0010\u001a\u00020\u00002\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0013\u001a\u00020\u00002\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u0013\u0010\u0011J\r\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0017R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0017R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u0018R\u0016\u0010\u000b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u0018R\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0019R\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0019¨\u0006\u001a"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;", "", "", "deletionMode", "matchBehavior", "<init>", "(II)V", "j$/time/Instant", "start", "setStart", "(Lj$/time/Instant;)Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;", "end", "setEnd", "", "Landroid/net/Uri;", "domainUris", "setDomainUris", "(Ljava/util/List;)Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;", "originUris", "setOriginUris", "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", "build", "()Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", "I", "Lj$/time/Instant;", "Ljava/util/List;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder {
        private final int deletionMode;

        @NotNull
        private List<? extends Uri> domainUris;

        @NotNull
        private Instant end;
        private final int matchBehavior;

        @NotNull
        private List<? extends Uri> originUris;

        @NotNull
        private Instant start;

        public Builder(int i, int i2) {
            this.deletionMode = i;
            this.matchBehavior = i2;
            Instant MIN = Instant.MIN;
            Intrinsics.checkNotNullExpressionValue(MIN, "MIN");
            this.start = MIN;
            Instant MAX = Instant.MAX;
            Intrinsics.checkNotNullExpressionValue(MAX, "MAX");
            this.end = MAX;
            this.domainUris = CollectionsKt__CollectionsKt.emptyList();
            this.originUris = CollectionsKt__CollectionsKt.emptyList();
        }

        @NotNull
        public final DeletionRequest build() {
            return new DeletionRequest(this.deletionMode, this.matchBehavior, this.start, this.end, this.domainUris, this.originUris);
        }

        @NotNull
        public final Builder setDomainUris(@NotNull List<? extends Uri> domainUris) {
            Intrinsics.checkNotNullParameter(domainUris, "domainUris");
            this.domainUris = domainUris;
            return this;
        }

        @NotNull
        public final Builder setEnd(@NotNull Instant end) {
            Intrinsics.checkNotNullParameter(end, "end");
            this.end = end;
            return this;
        }

        @NotNull
        public final Builder setOriginUris(@NotNull List<? extends Uri> originUris) {
            Intrinsics.checkNotNullParameter(originUris, "originUris");
            this.originUris = originUris;
            return this;
        }

        @NotNull
        public final Builder setStart(@NotNull Instant start) {
            Intrinsics.checkNotNullParameter(start, "start");
            this.start = start;
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DeletionRequest(int i, int i2, @NotNull Instant start, @NotNull Instant end, @NotNull List<? extends Uri> domainUris, @NotNull List<? extends Uri> originUris) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(domainUris, "domainUris");
        Intrinsics.checkNotNullParameter(originUris, "originUris");
        this.deletionMode = i;
        this.matchBehavior = i2;
        this.start = start;
        this.end = end;
        this.domainUris = domainUris;
        this.originUris = originUris;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DeletionRequest)) {
            return false;
        }
        DeletionRequest deletionRequest = (DeletionRequest) other;
        if (this.deletionMode == deletionRequest.deletionMode && Intrinsics.areEqual(new HashSet(this.domainUris), new HashSet(deletionRequest.domainUris)) && Intrinsics.areEqual(new HashSet(this.originUris), new HashSet(deletionRequest.originUris)) && Intrinsics.areEqual(this.start, deletionRequest.start) && Intrinsics.areEqual(this.end, deletionRequest.end) && this.matchBehavior == deletionRequest.matchBehavior) {
            return true;
        }
        return false;
    }

    public final int getDeletionMode() {
        return this.deletionMode;
    }

    @NotNull
    public final List<Uri> getDomainUris() {
        return this.domainUris;
    }

    @NotNull
    public final Instant getEnd() {
        return this.end;
    }

    public final int getMatchBehavior() {
        return this.matchBehavior;
    }

    @NotNull
    public final List<Uri> getOriginUris() {
        return this.originUris;
    }

    @NotNull
    public final Instant getStart() {
        return this.start;
    }

    public int hashCode() {
        return ((this.end.hashCode() + ((this.start.hashCode() + ((this.originUris.hashCode() + ((this.domainUris.hashCode() + (this.deletionMode * 31)) * 31)) * 31)) * 31)) * 31) + this.matchBehavior;
    }

    @NotNull
    public String toString() {
        String str;
        String str2;
        if (this.deletionMode == 0) {
            str = "DELETION_MODE_ALL";
        } else {
            str = "DELETION_MODE_EXCLUDE_INTERNAL_DATA";
        }
        if (this.matchBehavior == 0) {
            str2 = "MATCH_BEHAVIOR_DELETE";
        } else {
            str2 = "MATCH_BEHAVIOR_PRESERVE";
        }
        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("DeletionRequest { DeletionMode=", str, ", MatchBehavior=", str2, ", Start=");
        m2944x4440ab85.append(this.start);
        m2944x4440ab85.append(", End=");
        m2944x4440ab85.append(this.end);
        m2944x4440ab85.append(", DomainUris=");
        m2944x4440ab85.append(this.domainUris);
        m2944x4440ab85.append(", OriginUris=");
        m2944x4440ab85.append(this.originUris);
        m2944x4440ab85.append(" }");
        return m2944x4440ab85.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ DeletionRequest(int i, int i2, Instant MIN, Instant MAX, List list, List list2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, r3, MAX, (i3 & 16) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i3 & 32) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list2);
        if ((i3 & 4) != 0) {
            MIN = Instant.MIN;
            Intrinsics.checkNotNullExpressionValue(MIN, "MIN");
        }
        Instant instant = MIN;
        if ((i3 & 8) != 0) {
            MAX = Instant.MAX;
            Intrinsics.checkNotNullExpressionValue(MAX, "MAX");
        }
    }
}
