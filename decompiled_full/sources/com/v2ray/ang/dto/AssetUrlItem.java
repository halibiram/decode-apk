package com.v2ray.ang.dto;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001c\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0006HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0018JB\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020\t2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0013\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006("}, d2 = {"Lcom/v2ray/ang/dto/AssetUrlItem;", "", "remarks", "", "url", "addedTime", "", "lastUpdated", "locked", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Boolean;)V", "getRemarks", "()Ljava/lang/String;", "setRemarks", "(Ljava/lang/String;)V", "getUrl", "setUrl", "getAddedTime", "()J", "getLastUpdated", "setLastUpdated", "(J)V", "getLocked", "()Ljava/lang/Boolean;", "setLocked", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Boolean;)Lcom/v2ray/ang/dto/AssetUrlItem;", "equals", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class AssetUrlItem {
    private final long addedTime;
    private long lastUpdated;

    @Nullable
    private Boolean locked;

    @NotNull
    private String remarks;

    @NotNull
    private String url;

    public AssetUrlItem() {
        this(null, null, 0L, 0L, null, 31, null);
    }

    public static /* synthetic */ AssetUrlItem copy$default(AssetUrlItem assetUrlItem, String str, String str2, long j, long j2, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            str = assetUrlItem.remarks;
        }
        if ((i & 2) != 0) {
            str2 = assetUrlItem.url;
        }
        String str3 = str2;
        if ((i & 4) != 0) {
            j = assetUrlItem.addedTime;
        }
        long j3 = j;
        if ((i & 8) != 0) {
            j2 = assetUrlItem.lastUpdated;
        }
        long j4 = j2;
        if ((i & 16) != 0) {
            bool = assetUrlItem.locked;
        }
        return assetUrlItem.copy(str, str3, j3, j4, bool);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getRemarks() {
        return this.remarks;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* renamed from: component3, reason: from getter */
    public final long getAddedTime() {
        return this.addedTime;
    }

    /* renamed from: component4, reason: from getter */
    public final long getLastUpdated() {
        return this.lastUpdated;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final Boolean getLocked() {
        return this.locked;
    }

    @NotNull
    public final AssetUrlItem copy(@NotNull String remarks, @NotNull String url, long addedTime, long lastUpdated, @Nullable Boolean locked) {
        Intrinsics.checkNotNullParameter(remarks, new ObfuscatedString(new long[]{-6466830725110951207L, 7467811200887315265L}).toString());
        Intrinsics.checkNotNullParameter(url, new ObfuscatedString(new long[]{1001407922011539867L, 6101985124902383020L}).toString());
        return new AssetUrlItem(remarks, url, addedTime, lastUpdated, locked);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AssetUrlItem)) {
            return false;
        }
        AssetUrlItem assetUrlItem = (AssetUrlItem) other;
        return Intrinsics.areEqual(this.remarks, assetUrlItem.remarks) && Intrinsics.areEqual(this.url, assetUrlItem.url) && this.addedTime == assetUrlItem.addedTime && this.lastUpdated == assetUrlItem.lastUpdated && Intrinsics.areEqual(this.locked, assetUrlItem.locked);
    }

    public final long getAddedTime() {
        return this.addedTime;
    }

    public final long getLastUpdated() {
        return this.lastUpdated;
    }

    @Nullable
    public final Boolean getLocked() {
        return this.locked;
    }

    @NotNull
    public final String getRemarks() {
        return this.remarks;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode;
        int m2927x1378447b = AbstractC0362x4440ab85.m2927x1378447b(this.remarks.hashCode() * 31, 31, this.url);
        long j = this.addedTime;
        int i = (m2927x1378447b + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.lastUpdated;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        Boolean bool = this.locked;
        if (bool == null) {
            hashCode = 0;
        } else {
            hashCode = bool.hashCode();
        }
        return i2 + hashCode;
    }

    public final void setLastUpdated(long j) {
        this.lastUpdated = j;
    }

    public final void setLocked(@Nullable Boolean bool) {
        this.locked = bool;
    }

    public final void setRemarks(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{826426760649939971L, -7785900749451117726L}).toString());
        this.remarks = str;
    }

    public final void setUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-7693467467624405996L, -7205280682145383697L}).toString());
        this.url = str;
    }

    @NotNull
    public String toString() {
        String str = this.remarks;
        String str2 = this.url;
        long j = this.addedTime;
        long j2 = this.lastUpdated;
        Boolean bool = this.locked;
        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("AssetUrlItem(remarks=", str, ", url=", str2, ", addedTime=");
        m2944x4440ab85.append(j);
        m2944x4440ab85.append(", lastUpdated=");
        m2944x4440ab85.append(j2);
        m2944x4440ab85.append(", locked=");
        m2944x4440ab85.append(bool);
        m2944x4440ab85.append(")");
        return m2944x4440ab85.toString();
    }

    public AssetUrlItem(@NotNull String str, @NotNull String str2, long j, long j2, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{8703430267191882041L, -500097889053049548L}).toString());
        Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{3343875062566915488L, 4487097015147587599L}).toString());
        this.remarks = str;
        this.url = str2;
        this.addedTime = j;
        this.lastUpdated = j2;
        this.locked = bool;
    }

    public /* synthetic */ AssetUrlItem(String str, String str2, long j, long j2, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ObfuscatedString(new long[]{-4442266879429133457L}).toString() : str, (i & 2) != 0 ? new ObfuscatedString(new long[]{1817863207756701474L}).toString() : str2, (i & 4) != 0 ? System.currentTimeMillis() : j, (i & 8) != 0 ? -1L : j2, (i & 16) != 0 ? Boolean.FALSE : bool);
    }
}
