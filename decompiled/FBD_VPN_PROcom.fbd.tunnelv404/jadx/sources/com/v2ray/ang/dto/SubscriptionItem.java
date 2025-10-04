package com.v2ray.ang.dto;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b8\b\u0086\b\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\t\u00102\u001a\u00020\u0003HÆ\u0003J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0006HÆ\u0003J\t\u00105\u001a\u00020\bHÆ\u0003J\t\u00106\u001a\u00020\bHÆ\u0003J\t\u00107\u001a\u00020\u0006HÆ\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010&J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010=\u001a\u00020\u0006HÆ\u0003J\u0090\u0001\u0010>\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u0006HÆ\u0001¢\u0006\u0002\u0010?J\u0013\u0010@\u001a\u00020\u00062\b\u0010A\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010B\u001a\u00020\fHÖ\u0001J\t\u0010C\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u0017R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001f\"\u0004\b!\u0010\"R\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001b\"\u0004\b$\u0010\u001dR\u0015\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\n\n\u0002\u0010'\u001a\u0004\b%\u0010&R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0015\"\u0004\b)\u0010\u0017R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0015\"\u0004\b+\u0010\u0017R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0015\"\u0004\b-\u0010\u0017R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0015\"\u0004\b/\u0010\u0017R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u001b\"\u0004\b1\u0010\u001d¨\u0006D"}, d2 = {"Lcom/v2ray/ang/dto/SubscriptionItem;", "", "remarks", "", "url", "enabled", "", "addedTime", "", "lastUpdated", "autoUpdate", "updateInterval", "", "prevProfile", "nextProfile", "filter", "intelligentSelectionFilter", "allowInsecureUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getRemarks", "()Ljava/lang/String;", "setRemarks", "(Ljava/lang/String;)V", "getUrl", "setUrl", "getEnabled", "()Z", "setEnabled", "(Z)V", "getAddedTime", "()J", "getLastUpdated", "setLastUpdated", "(J)V", "getAutoUpdate", "setAutoUpdate", "getUpdateInterval", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPrevProfile", "setPrevProfile", "getNextProfile", "setNextProfile", "getFilter", "setFilter", "getIntelligentSelectionFilter", "setIntelligentSelectionFilter", "getAllowInsecureUrl", "setAllowInsecureUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/v2ray/ang/dto/SubscriptionItem;", "equals", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SubscriptionItem {
    private final long addedTime;
    private boolean allowInsecureUrl;
    private boolean autoUpdate;
    private boolean enabled;

    @Nullable
    private String filter;

    @Nullable
    private String intelligentSelectionFilter;
    private long lastUpdated;

    @Nullable
    private String nextProfile;

    @Nullable
    private String prevProfile;

    @NotNull
    private String remarks;

    @Nullable
    private final Integer updateInterval;

    @NotNull
    private String url;

    public SubscriptionItem() {
        this(null, null, false, 0L, 0L, false, null, null, null, null, null, false, 4095, null);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getRemarks() {
        return this.remarks;
    }

    @Nullable
    /* renamed from: component10, reason: from getter */
    public final String getFilter() {
        return this.filter;
    }

    @Nullable
    /* renamed from: component11, reason: from getter */
    public final String getIntelligentSelectionFilter() {
        return this.intelligentSelectionFilter;
    }

    /* renamed from: component12, reason: from getter */
    public final boolean getAllowInsecureUrl() {
        return this.allowInsecureUrl;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    /* renamed from: component4, reason: from getter */
    public final long getAddedTime() {
        return this.addedTime;
    }

    /* renamed from: component5, reason: from getter */
    public final long getLastUpdated() {
        return this.lastUpdated;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getAutoUpdate() {
        return this.autoUpdate;
    }

    @Nullable
    /* renamed from: component7, reason: from getter */
    public final Integer getUpdateInterval() {
        return this.updateInterval;
    }

    @Nullable
    /* renamed from: component8, reason: from getter */
    public final String getPrevProfile() {
        return this.prevProfile;
    }

    @Nullable
    /* renamed from: component9, reason: from getter */
    public final String getNextProfile() {
        return this.nextProfile;
    }

    @NotNull
    public final SubscriptionItem copy(@NotNull String remarks, @NotNull String url, boolean enabled, long addedTime, long lastUpdated, boolean autoUpdate, @Nullable Integer updateInterval, @Nullable String prevProfile, @Nullable String nextProfile, @Nullable String filter, @Nullable String intelligentSelectionFilter, boolean allowInsecureUrl) {
        Intrinsics.checkNotNullParameter(remarks, new ObfuscatedString(new long[]{869922620435444841L, 8938284857919117162L}).toString());
        Intrinsics.checkNotNullParameter(url, new ObfuscatedString(new long[]{5320569927803449207L, -6706638483103372714L}).toString());
        return new SubscriptionItem(remarks, url, enabled, addedTime, lastUpdated, autoUpdate, updateInterval, prevProfile, nextProfile, filter, intelligentSelectionFilter, allowInsecureUrl);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubscriptionItem)) {
            return false;
        }
        SubscriptionItem subscriptionItem = (SubscriptionItem) other;
        return Intrinsics.areEqual(this.remarks, subscriptionItem.remarks) && Intrinsics.areEqual(this.url, subscriptionItem.url) && this.enabled == subscriptionItem.enabled && this.addedTime == subscriptionItem.addedTime && this.lastUpdated == subscriptionItem.lastUpdated && this.autoUpdate == subscriptionItem.autoUpdate && Intrinsics.areEqual(this.updateInterval, subscriptionItem.updateInterval) && Intrinsics.areEqual(this.prevProfile, subscriptionItem.prevProfile) && Intrinsics.areEqual(this.nextProfile, subscriptionItem.nextProfile) && Intrinsics.areEqual(this.filter, subscriptionItem.filter) && Intrinsics.areEqual(this.intelligentSelectionFilter, subscriptionItem.intelligentSelectionFilter) && this.allowInsecureUrl == subscriptionItem.allowInsecureUrl;
    }

    public final long getAddedTime() {
        return this.addedTime;
    }

    public final boolean getAllowInsecureUrl() {
        return this.allowInsecureUrl;
    }

    public final boolean getAutoUpdate() {
        return this.autoUpdate;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    @Nullable
    public final String getFilter() {
        return this.filter;
    }

    @Nullable
    public final String getIntelligentSelectionFilter() {
        return this.intelligentSelectionFilter;
    }

    public final long getLastUpdated() {
        return this.lastUpdated;
    }

    @Nullable
    public final String getNextProfile() {
        return this.nextProfile;
    }

    @Nullable
    public final String getPrevProfile() {
        return this.prevProfile;
    }

    @NotNull
    public final String getRemarks() {
        return this.remarks;
    }

    @Nullable
    public final Integer getUpdateInterval() {
        return this.updateInterval;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int i;
        int i2;
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int m2927x1378447b = AbstractC0362x4440ab85.m2927x1378447b(this.remarks.hashCode() * 31, 31, this.url);
        int i3 = 1237;
        if (this.enabled) {
            i = 1231;
        } else {
            i = 1237;
        }
        long j = this.addedTime;
        int i4 = (((m2927x1378447b + i) * 31) + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.lastUpdated;
        int i5 = (i4 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        if (this.autoUpdate) {
            i2 = 1231;
        } else {
            i2 = 1237;
        }
        int i6 = (i5 + i2) * 31;
        Integer num = this.updateInterval;
        int i7 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i8 = (i6 + hashCode) * 31;
        String str = this.prevProfile;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i9 = (i8 + hashCode2) * 31;
        String str2 = this.nextProfile;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i10 = (i9 + hashCode3) * 31;
        String str3 = this.filter;
        if (str3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str3.hashCode();
        }
        int i11 = (i10 + hashCode4) * 31;
        String str4 = this.intelligentSelectionFilter;
        if (str4 != null) {
            i7 = str4.hashCode();
        }
        int i12 = (i11 + i7) * 31;
        if (this.allowInsecureUrl) {
            i3 = 1231;
        }
        return i12 + i3;
    }

    public final void setAllowInsecureUrl(boolean z) {
        this.allowInsecureUrl = z;
    }

    public final void setAutoUpdate(boolean z) {
        this.autoUpdate = z;
    }

    public final void setEnabled(boolean z) {
        this.enabled = z;
    }

    public final void setFilter(@Nullable String str) {
        this.filter = str;
    }

    public final void setIntelligentSelectionFilter(@Nullable String str) {
        this.intelligentSelectionFilter = str;
    }

    public final void setLastUpdated(long j) {
        this.lastUpdated = j;
    }

    public final void setNextProfile(@Nullable String str) {
        this.nextProfile = str;
    }

    public final void setPrevProfile(@Nullable String str) {
        this.prevProfile = str;
    }

    public final void setRemarks(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{4673816070905959660L, -2834217415707029799L}).toString());
        this.remarks = str;
    }

    public final void setUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-8336538684242738979L, -8222751134494297128L}).toString());
        this.url = str;
    }

    @NotNull
    public String toString() {
        String str = this.remarks;
        String str2 = this.url;
        boolean z = this.enabled;
        long j = this.addedTime;
        long j2 = this.lastUpdated;
        boolean z2 = this.autoUpdate;
        Integer num = this.updateInterval;
        String str3 = this.prevProfile;
        String str4 = this.nextProfile;
        String str5 = this.filter;
        String str6 = this.intelligentSelectionFilter;
        boolean z3 = this.allowInsecureUrl;
        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("SubscriptionItem(remarks=", str, ", url=", str2, ", enabled=");
        m2944x4440ab85.append(z);
        m2944x4440ab85.append(", addedTime=");
        m2944x4440ab85.append(j);
        m2944x4440ab85.append(", lastUpdated=");
        m2944x4440ab85.append(j2);
        m2944x4440ab85.append(", autoUpdate=");
        m2944x4440ab85.append(z2);
        m2944x4440ab85.append(", updateInterval=");
        m2944x4440ab85.append(num);
        m2944x4440ab85.append(", prevProfile=");
        AbstractC0749x8313616e.m3350x5ac5058d(m2944x4440ab85, str3, ", nextProfile=", str4, ", filter=");
        AbstractC0749x8313616e.m3350x5ac5058d(m2944x4440ab85, str5, ", intelligentSelectionFilter=", str6, ", allowInsecureUrl=");
        m2944x4440ab85.append(z3);
        m2944x4440ab85.append(")");
        return m2944x4440ab85.toString();
    }

    public SubscriptionItem(@NotNull String str, @NotNull String str2, boolean z, long j, long j2, boolean z2, @Nullable Integer num, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, boolean z3) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-8679183757394355304L, -8352443504466246636L}).toString());
        Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{-5893730651727545992L, -8914344709777928884L}).toString());
        this.remarks = str;
        this.url = str2;
        this.enabled = z;
        this.addedTime = j;
        this.lastUpdated = j2;
        this.autoUpdate = z2;
        this.updateInterval = num;
        this.prevProfile = str3;
        this.nextProfile = str4;
        this.filter = str5;
        this.intelligentSelectionFilter = str6;
        this.allowInsecureUrl = z3;
    }

    public /* synthetic */ SubscriptionItem(String str, String str2, boolean z, long j, long j2, boolean z2, Integer num, String str3, String str4, String str5, String str6, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ObfuscatedString(new long[]{3328292568440088644L}).toString() : str, (i & 2) != 0 ? new ObfuscatedString(new long[]{-6335245548397065791L}).toString() : str2, (i & 4) == 0 ? z : true, (i & 8) != 0 ? System.currentTimeMillis() : j, (i & 16) != 0 ? -1L : j2, (i & 32) != 0 ? false : z2, (i & 64) != 0 ? null : num, (i & 128) != 0 ? null : str3, (i & 256) != 0 ? null : str4, (i & 512) != 0 ? null : str5, (i & 1024) == 0 ? str6 : null, (i & 2048) == 0 ? z3 : false);
    }
}
