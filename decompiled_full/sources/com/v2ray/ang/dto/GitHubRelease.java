package com.v2ray.ang.dto;

import com.google.gson.annotations.SerializedName;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001 B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\tHÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003JA\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000e¨\u0006!"}, d2 = {"Lcom/v2ray/ang/dto/GitHubRelease;", "", "tagName", "", "body", "assets", "", "Lcom/v2ray/ang/dto/GitHubRelease$Asset;", "prerelease", "", "publishedAt", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V", "getTagName", "()Ljava/lang/String;", "getBody", "getAssets", "()Ljava/util/List;", "getPrerelease", "()Z", "getPublishedAt", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "Asset", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class GitHubRelease {

    @SerializedName("assets")
    @NotNull
    private final List<Asset> assets;

    @SerializedName("body")
    @NotNull
    private final String body;

    @SerializedName("prerelease")
    private final boolean prerelease;

    @SerializedName("published_at")
    @NotNull
    private final String publishedAt;

    @SerializedName("tag_name")
    @NotNull
    private final String tagName;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/v2ray/ang/dto/GitHubRelease$Asset;", "", "name", "", "browserDownloadUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getBrowserDownloadUrl", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class Asset {

        @SerializedName("browser_download_url")
        @NotNull
        private final String browserDownloadUrl;

        @SerializedName("name")
        @NotNull
        private final String name;

        public Asset(@NotNull String str, @NotNull String str2) {
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-8300311078895558887L, -8587973808812015023L}).toString());
            Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{-3653051194352645041L, 2742860294978840634L, 3119526695747515790L, -8636165433166960040L}).toString());
            this.name = str;
            this.browserDownloadUrl = str2;
        }

        public static /* synthetic */ Asset copy$default(Asset asset, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = asset.name;
            }
            if ((i & 2) != 0) {
                str2 = asset.browserDownloadUrl;
            }
            return asset.copy(str, str2);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final String getBrowserDownloadUrl() {
            return this.browserDownloadUrl;
        }

        @NotNull
        public final Asset copy(@NotNull String name, @NotNull String browserDownloadUrl) {
            Intrinsics.checkNotNullParameter(name, new ObfuscatedString(new long[]{4704251397737256540L, -2199899934248217718L}).toString());
            Intrinsics.checkNotNullParameter(browserDownloadUrl, new ObfuscatedString(new long[]{4162587096968155140L, -2012530759217989401L, -3013884556279009267L, -4537646586083698924L}).toString());
            return new Asset(name, browserDownloadUrl);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Asset)) {
                return false;
            }
            Asset asset = (Asset) other;
            return Intrinsics.areEqual(this.name, asset.name) && Intrinsics.areEqual(this.browserDownloadUrl, asset.browserDownloadUrl);
        }

        @NotNull
        public final String getBrowserDownloadUrl() {
            return this.browserDownloadUrl;
        }

        @NotNull
        public final String getName() {
            return this.name;
        }

        public int hashCode() {
            return this.browserDownloadUrl.hashCode() + (this.name.hashCode() * 31);
        }

        @NotNull
        public String toString() {
            return "Asset(name=" + this.name + ", browserDownloadUrl=" + this.browserDownloadUrl + ")";
        }
    }

    public GitHubRelease(@NotNull String str, @NotNull String str2, @NotNull List<Asset> list, boolean z, @NotNull String str3) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-4038034254707326091L, -8394979205871749039L}).toString());
        Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{7041162890930336639L, 4179172185151597917L}).toString());
        Intrinsics.checkNotNullParameter(list, new ObfuscatedString(new long[]{-3553943862590752008L, -5503435251317002142L}).toString());
        Intrinsics.checkNotNullParameter(str3, new ObfuscatedString(new long[]{8339434588255212972L, -5373259089478152790L, -5825325204496178L}).toString());
        this.tagName = str;
        this.body = str2;
        this.assets = list;
        this.prerelease = z;
        this.publishedAt = str3;
    }

    public static /* synthetic */ GitHubRelease copy$default(GitHubRelease gitHubRelease, String str, String str2, List list, boolean z, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = gitHubRelease.tagName;
        }
        if ((i & 2) != 0) {
            str2 = gitHubRelease.body;
        }
        String str4 = str2;
        if ((i & 4) != 0) {
            list = gitHubRelease.assets;
        }
        List list2 = list;
        if ((i & 8) != 0) {
            z = gitHubRelease.prerelease;
        }
        boolean z2 = z;
        if ((i & 16) != 0) {
            str3 = gitHubRelease.publishedAt;
        }
        return gitHubRelease.copy(str, str4, list2, z2, str3);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getTagName() {
        return this.tagName;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getBody() {
        return this.body;
    }

    @NotNull
    public final List<Asset> component3() {
        return this.assets;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getPrerelease() {
        return this.prerelease;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final String getPublishedAt() {
        return this.publishedAt;
    }

    @NotNull
    public final GitHubRelease copy(@NotNull String tagName, @NotNull String body, @NotNull List<Asset> assets, boolean prerelease, @NotNull String publishedAt) {
        Intrinsics.checkNotNullParameter(tagName, new ObfuscatedString(new long[]{1973505062740751146L, -1032003689068925493L}).toString());
        Intrinsics.checkNotNullParameter(body, new ObfuscatedString(new long[]{7393463579665369736L, -2523691170546286800L}).toString());
        Intrinsics.checkNotNullParameter(assets, new ObfuscatedString(new long[]{-8632350347057934356L, -4705879455002669605L}).toString());
        Intrinsics.checkNotNullParameter(publishedAt, new ObfuscatedString(new long[]{-7437545216723052629L, 3362636368849425591L, -919031806815136186L}).toString());
        return new GitHubRelease(tagName, body, assets, prerelease, publishedAt);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GitHubRelease)) {
            return false;
        }
        GitHubRelease gitHubRelease = (GitHubRelease) other;
        return Intrinsics.areEqual(this.tagName, gitHubRelease.tagName) && Intrinsics.areEqual(this.body, gitHubRelease.body) && Intrinsics.areEqual(this.assets, gitHubRelease.assets) && this.prerelease == gitHubRelease.prerelease && Intrinsics.areEqual(this.publishedAt, gitHubRelease.publishedAt);
    }

    @NotNull
    public final List<Asset> getAssets() {
        return this.assets;
    }

    @NotNull
    public final String getBody() {
        return this.body;
    }

    public final boolean getPrerelease() {
        return this.prerelease;
    }

    @NotNull
    public final String getPublishedAt() {
        return this.publishedAt;
    }

    @NotNull
    public final String getTagName() {
        return this.tagName;
    }

    public int hashCode() {
        int i;
        int hashCode = (this.assets.hashCode() + AbstractC0362x4440ab85.m2927x1378447b(this.tagName.hashCode() * 31, 31, this.body)) * 31;
        if (this.prerelease) {
            i = 1231;
        } else {
            i = 1237;
        }
        return this.publishedAt.hashCode() + ((hashCode + i) * 31);
    }

    @NotNull
    public String toString() {
        String str = this.tagName;
        String str2 = this.body;
        List<Asset> list = this.assets;
        boolean z = this.prerelease;
        String str3 = this.publishedAt;
        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("GitHubRelease(tagName=", str, ", body=", str2, ", assets=");
        m2944x4440ab85.append(list);
        m2944x4440ab85.append(", prerelease=");
        m2944x4440ab85.append(z);
        m2944x4440ab85.append(", publishedAt=");
        return AbstractC0362x4440ab85.m2936xd2bcb0cf(m2944x4440ab85, str3, ")");
    }

    public /* synthetic */ GitHubRelease(String str, String str2, List list, boolean z, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, list, (i & 8) != 0 ? false : z, (i & 16) != 0 ? new ObfuscatedString(new long[]{-746516784342430103L}).toString() : str3);
    }
}
