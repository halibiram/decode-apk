package com.v2ray.ang.plugin;

import android.graphics.drawable.Drawable;
import com.panda912.muddy.ObfuscatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u001e\u001a\u00020\u001b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010 \u001a\u00020\rH\u0016R\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0012\u0010\f\u001a\u00020\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0007R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0007R\u0014\u0010\u0018\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0007R\u0014\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006!"}, d2 = {"Lcom/v2ray/ang/plugin/Plugin;", "", "<init>", "()V", "id", "", "getId", "()Ljava/lang/String;", "label", "", "getLabel", "()Ljava/lang/CharSequence;", "version", "", "getVersion", "()I", "versionName", "getVersionName", "icon", "Landroid/graphics/drawable/Drawable;", "getIcon", "()Landroid/graphics/drawable/Drawable;", "defaultConfig", "getDefaultConfig", "packageName", "getPackageName", "directBootAware", "", "getDirectBootAware", "()Z", "equals", "other", "hashCode", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class Plugin {
    public boolean equals(@Nullable Object other) {
        Class<?> cls;
        if (this == other) {
            return true;
        }
        Class<?> cls2 = getClass();
        if (other != null) {
            cls = other.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(cls2, cls)) {
            return false;
        }
        String id = getId();
        Intrinsics.checkNotNull(other, new ObfuscatedString(new long[]{-6438063023414644292L, 6799602458082646389L, -3365758197316843936L, -4034170207852041738L, 2777289724395109868L, -5089655247565144810L, -4180506642033453807L, -2931907666145945950L, -4948704312364057090L}).toString());
        return Intrinsics.areEqual(id, ((Plugin) other).getId());
    }

    @Nullable
    public String getDefaultConfig() {
        return null;
    }

    public boolean getDirectBootAware() {
        return true;
    }

    @Nullable
    public Drawable getIcon() {
        return null;
    }

    @NotNull
    public abstract String getId();

    @NotNull
    public abstract CharSequence getLabel();

    @NotNull
    public String getPackageName() {
        return new ObfuscatedString(new long[]{4778575220838001785L}).toString();
    }

    public abstract int getVersion();

    @NotNull
    public abstract String getVersionName();

    public int hashCode() {
        return getId().hashCode();
    }
}
