package com.v2ray.ang.dto;

import defpackage.AbstractC0749x8313616e;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003JM\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00032\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\r¨\u0006\u001f"}, d2 = {"Lcom/v2ray/ang/dto/CheckUpdateResult;", "", "hasUpdate", "", "latestVersion", "", "releaseNotes", "downloadUrl", "error", "isPreRelease", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getHasUpdate", "()Z", "getLatestVersion", "()Ljava/lang/String;", "getReleaseNotes", "getDownloadUrl", "getError", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class CheckUpdateResult {

    @Nullable
    private final String downloadUrl;

    @Nullable
    private final String error;
    private final boolean hasUpdate;
    private final boolean isPreRelease;

    @Nullable
    private final String latestVersion;

    @Nullable
    private final String releaseNotes;

    public CheckUpdateResult(boolean z, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, boolean z2) {
        this.hasUpdate = z;
        this.latestVersion = str;
        this.releaseNotes = str2;
        this.downloadUrl = str3;
        this.error = str4;
        this.isPreRelease = z2;
    }

    public static /* synthetic */ CheckUpdateResult copy$default(CheckUpdateResult checkUpdateResult, boolean z, String str, String str2, String str3, String str4, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = checkUpdateResult.hasUpdate;
        }
        if ((i & 2) != 0) {
            str = checkUpdateResult.latestVersion;
        }
        String str5 = str;
        if ((i & 4) != 0) {
            str2 = checkUpdateResult.releaseNotes;
        }
        String str6 = str2;
        if ((i & 8) != 0) {
            str3 = checkUpdateResult.downloadUrl;
        }
        String str7 = str3;
        if ((i & 16) != 0) {
            str4 = checkUpdateResult.error;
        }
        String str8 = str4;
        if ((i & 32) != 0) {
            z2 = checkUpdateResult.isPreRelease;
        }
        return checkUpdateResult.copy(z, str5, str6, str7, str8, z2);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getHasUpdate() {
        return this.hasUpdate;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getLatestVersion() {
        return this.latestVersion;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getReleaseNotes() {
        return this.releaseNotes;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final String getError() {
        return this.error;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getIsPreRelease() {
        return this.isPreRelease;
    }

    @NotNull
    public final CheckUpdateResult copy(boolean hasUpdate, @Nullable String latestVersion, @Nullable String releaseNotes, @Nullable String downloadUrl, @Nullable String error, boolean isPreRelease) {
        return new CheckUpdateResult(hasUpdate, latestVersion, releaseNotes, downloadUrl, error, isPreRelease);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CheckUpdateResult)) {
            return false;
        }
        CheckUpdateResult checkUpdateResult = (CheckUpdateResult) other;
        return this.hasUpdate == checkUpdateResult.hasUpdate && Intrinsics.areEqual(this.latestVersion, checkUpdateResult.latestVersion) && Intrinsics.areEqual(this.releaseNotes, checkUpdateResult.releaseNotes) && Intrinsics.areEqual(this.downloadUrl, checkUpdateResult.downloadUrl) && Intrinsics.areEqual(this.error, checkUpdateResult.error) && this.isPreRelease == checkUpdateResult.isPreRelease;
    }

    @Nullable
    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    @Nullable
    public final String getError() {
        return this.error;
    }

    public final boolean getHasUpdate() {
        return this.hasUpdate;
    }

    @Nullable
    public final String getLatestVersion() {
        return this.latestVersion;
    }

    @Nullable
    public final String getReleaseNotes() {
        return this.releaseNotes;
    }

    public int hashCode() {
        int i;
        int hashCode;
        int hashCode2;
        int hashCode3;
        int i2 = 1237;
        if (this.hasUpdate) {
            i = 1231;
        } else {
            i = 1237;
        }
        int i3 = i * 31;
        String str = this.latestVersion;
        int i4 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i5 = (i3 + hashCode) * 31;
        String str2 = this.releaseNotes;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i6 = (i5 + hashCode2) * 31;
        String str3 = this.downloadUrl;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i7 = (i6 + hashCode3) * 31;
        String str4 = this.error;
        if (str4 != null) {
            i4 = str4.hashCode();
        }
        int i8 = (i7 + i4) * 31;
        if (this.isPreRelease) {
            i2 = 1231;
        }
        return i8 + i2;
    }

    public final boolean isPreRelease() {
        return this.isPreRelease;
    }

    @NotNull
    public String toString() {
        boolean z = this.hasUpdate;
        String str = this.latestVersion;
        String str2 = this.releaseNotes;
        String str3 = this.downloadUrl;
        String str4 = this.error;
        boolean z2 = this.isPreRelease;
        StringBuilder sb = new StringBuilder("CheckUpdateResult(hasUpdate=");
        sb.append(z);
        sb.append(", latestVersion=");
        sb.append(str);
        sb.append(", releaseNotes=");
        AbstractC0749x8313616e.m3350x5ac5058d(sb, str2, ", downloadUrl=", str3, ", error=");
        sb.append(str4);
        sb.append(", isPreRelease=");
        sb.append(z2);
        sb.append(")");
        return sb.toString();
    }

    public /* synthetic */ CheckUpdateResult(boolean z, String str, String str2, String str3, String str4, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) == 0 ? str4 : null, (i & 32) != 0 ? false : z2);
    }
}
