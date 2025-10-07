package com.v2ray.ang.dto;

import androidx.core.app.NotificationCompat;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001c\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0016J:\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020\u00032\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\bHÖ\u0001J\t\u0010#\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0012R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006$"}, d2 = {"Lcom/v2ray/ang/dto/ConfigResult;", "", NotificationCompat.CATEGORY_STATUS, "", "guid", "", "content", "socksPort", "", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getStatus", "()Z", "setStatus", "(Z)V", "getGuid", "()Ljava/lang/String;", "setGuid", "(Ljava/lang/String;)V", "getContent", "setContent", "getSocksPort", "()Ljava/lang/Integer;", "setSocksPort", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "copy", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/v2ray/ang/dto/ConfigResult;", "equals", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ConfigResult {

    @NotNull
    private String content;

    @Nullable
    private String guid;

    @Nullable
    private Integer socksPort;
    private boolean status;

    public ConfigResult(boolean z, @Nullable String str, @NotNull String str2, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{3656906547654843416L, -8072860856716783511L}).toString());
        this.status = z;
        this.guid = str;
        this.content = str2;
        this.socksPort = num;
    }

    public static /* synthetic */ ConfigResult copy$default(ConfigResult configResult, boolean z, String str, String str2, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            z = configResult.status;
        }
        if ((i & 2) != 0) {
            str = configResult.guid;
        }
        if ((i & 4) != 0) {
            str2 = configResult.content;
        }
        if ((i & 8) != 0) {
            num = configResult.socksPort;
        }
        return configResult.copy(z, str, str2, num);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getStatus() {
        return this.status;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getGuid() {
        return this.guid;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final Integer getSocksPort() {
        return this.socksPort;
    }

    @NotNull
    public final ConfigResult copy(boolean status, @Nullable String guid, @NotNull String content, @Nullable Integer socksPort) {
        Intrinsics.checkNotNullParameter(content, new ObfuscatedString(new long[]{7930671117086046777L, -3598136990118212001L}).toString());
        return new ConfigResult(status, guid, content, socksPort);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfigResult)) {
            return false;
        }
        ConfigResult configResult = (ConfigResult) other;
        return this.status == configResult.status && Intrinsics.areEqual(this.guid, configResult.guid) && Intrinsics.areEqual(this.content, configResult.content) && Intrinsics.areEqual(this.socksPort, configResult.socksPort);
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final String getGuid() {
        return this.guid;
    }

    @Nullable
    public final Integer getSocksPort() {
        return this.socksPort;
    }

    public final boolean getStatus() {
        return this.status;
    }

    public int hashCode() {
        int i;
        int hashCode;
        if (this.status) {
            i = 1231;
        } else {
            i = 1237;
        }
        int i2 = i * 31;
        String str = this.guid;
        int i3 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int m2927x1378447b = AbstractC0362x4440ab85.m2927x1378447b((i2 + hashCode) * 31, 31, this.content);
        Integer num = this.socksPort;
        if (num != null) {
            i3 = num.hashCode();
        }
        return m2927x1378447b + i3;
    }

    public final void setContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-5241266379913983871L, -395672061420578129L}).toString());
        this.content = str;
    }

    public final void setGuid(@Nullable String str) {
        this.guid = str;
    }

    public final void setSocksPort(@Nullable Integer num) {
        this.socksPort = num;
    }

    public final void setStatus(boolean z) {
        this.status = z;
    }

    @NotNull
    public String toString() {
        return "ConfigResult(status=" + this.status + ", guid=" + this.guid + ", content=" + this.content + ", socksPort=" + this.socksPort + ")";
    }

    public /* synthetic */ ConfigResult(boolean z, String str, String str2, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i & 2) != 0 ? null : str, (i & 4) != 0 ? new ObfuscatedString(new long[]{-8277096495600559438L}).toString() : str2, (i & 8) != 0 ? null : num);
    }
}
