package com.v2ray.ang.dto;

import com.panda912.muddy.ObfuscatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/v2ray/ang/dto/ServersCache;", "", "guid", "", "profile", "Lcom/v2ray/ang/dto/ProfileItem;", "<init>", "(Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)V", "getGuid", "()Ljava/lang/String;", "getProfile", "()Lcom/v2ray/ang/dto/ProfileItem;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ServersCache {

    @NotNull
    private final String guid;

    @NotNull
    private final ProfileItem profile;

    public ServersCache(@NotNull String str, @NotNull ProfileItem profileItem) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{6827978890243177489L, 8423981195000041526L}).toString());
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{-6908028219852540792L, 2811981936181719032L}).toString());
        this.guid = str;
        this.profile = profileItem;
    }

    public static /* synthetic */ ServersCache copy$default(ServersCache serversCache, String str, ProfileItem profileItem, int i, Object obj) {
        if ((i & 1) != 0) {
            str = serversCache.guid;
        }
        if ((i & 2) != 0) {
            profileItem = serversCache.profile;
        }
        return serversCache.copy(str, profileItem);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getGuid() {
        return this.guid;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final ProfileItem getProfile() {
        return this.profile;
    }

    @NotNull
    public final ServersCache copy(@NotNull String guid, @NotNull ProfileItem profile) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-5113882951345504075L, 6798620986498953050L}).toString());
        Intrinsics.checkNotNullParameter(profile, new ObfuscatedString(new long[]{6757433886636299435L, 5321004102771941622L}).toString());
        return new ServersCache(guid, profile);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ServersCache)) {
            return false;
        }
        ServersCache serversCache = (ServersCache) other;
        return Intrinsics.areEqual(this.guid, serversCache.guid) && Intrinsics.areEqual(this.profile, serversCache.profile);
    }

    @NotNull
    public final String getGuid() {
        return this.guid;
    }

    @NotNull
    public final ProfileItem getProfile() {
        return this.profile;
    }

    public int hashCode() {
        return this.profile.hashCode() + (this.guid.hashCode() * 31);
    }

    @NotNull
    public String toString() {
        return "ServersCache(guid=" + this.guid + ", profile=" + this.profile + ")";
    }
}
