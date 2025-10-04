package com.v2ray.ang.dto;

import android.graphics.drawable.Drawable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0016\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J\t\u0010\u001a\u001a\u00020\nHÆ\u0003J;\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\nHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0012R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006 "}, d2 = {"Lcom/v2ray/ang/dto/AppInfo;", "", "appName", "", "packageName", "appIcon", "Landroid/graphics/drawable/Drawable;", "isSystemApp", "", "isSelected", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V", "getAppName", "()Ljava/lang/String;", "getPackageName", "getAppIcon", "()Landroid/graphics/drawable/Drawable;", "()Z", "()I", "setSelected", "(I)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class AppInfo {

    @NotNull
    private final Drawable appIcon;

    @NotNull
    private final String appName;
    private int isSelected;
    private final boolean isSystemApp;

    @NotNull
    private final String packageName;

    public AppInfo(@NotNull String str, @NotNull String str2, @NotNull Drawable drawable, boolean z, int i) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-606050954723850250L, -8227741891585461003L}).toString());
        Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{7993780652516575755L, 680952947461166562L, 2041984231120468927L}).toString());
        Intrinsics.checkNotNullParameter(drawable, new ObfuscatedString(new long[]{6648076648709736085L, 8904150894078411251L}).toString());
        this.appName = str;
        this.packageName = str2;
        this.appIcon = drawable;
        this.isSystemApp = z;
        this.isSelected = i;
    }

    public static /* synthetic */ AppInfo copy$default(AppInfo appInfo, String str, String str2, Drawable drawable, boolean z, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = appInfo.appName;
        }
        if ((i2 & 2) != 0) {
            str2 = appInfo.packageName;
        }
        String str3 = str2;
        if ((i2 & 4) != 0) {
            drawable = appInfo.appIcon;
        }
        Drawable drawable2 = drawable;
        if ((i2 & 8) != 0) {
            z = appInfo.isSystemApp;
        }
        boolean z2 = z;
        if ((i2 & 16) != 0) {
            i = appInfo.isSelected;
        }
        return appInfo.copy(str, str3, drawable2, z2, i);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getAppName() {
        return this.appName;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final Drawable getAppIcon() {
        return this.appIcon;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsSystemApp() {
        return this.isSystemApp;
    }

    /* renamed from: component5, reason: from getter */
    public final int getIsSelected() {
        return this.isSelected;
    }

    @NotNull
    public final AppInfo copy(@NotNull String appName, @NotNull String packageName, @NotNull Drawable appIcon, boolean isSystemApp, int isSelected) {
        Intrinsics.checkNotNullParameter(appName, new ObfuscatedString(new long[]{-7244377963920530982L, 466022564490883438L}).toString());
        Intrinsics.checkNotNullParameter(packageName, new ObfuscatedString(new long[]{-313520783340227734L, 4268154509012492860L, -2604340909521053348L}).toString());
        Intrinsics.checkNotNullParameter(appIcon, new ObfuscatedString(new long[]{2475610990915679330L, 3849182742773288096L}).toString());
        return new AppInfo(appName, packageName, appIcon, isSystemApp, isSelected);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppInfo)) {
            return false;
        }
        AppInfo appInfo = (AppInfo) other;
        return Intrinsics.areEqual(this.appName, appInfo.appName) && Intrinsics.areEqual(this.packageName, appInfo.packageName) && Intrinsics.areEqual(this.appIcon, appInfo.appIcon) && this.isSystemApp == appInfo.isSystemApp && this.isSelected == appInfo.isSelected;
    }

    @NotNull
    public final Drawable getAppIcon() {
        return this.appIcon;
    }

    @NotNull
    public final String getAppName() {
        return this.appName;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    public int hashCode() {
        int i;
        int hashCode = (this.appIcon.hashCode() + AbstractC0362x4440ab85.m2927x1378447b(this.appName.hashCode() * 31, 31, this.packageName)) * 31;
        if (this.isSystemApp) {
            i = 1231;
        } else {
            i = 1237;
        }
        return ((hashCode + i) * 31) + this.isSelected;
    }

    public final int isSelected() {
        return this.isSelected;
    }

    public final boolean isSystemApp() {
        return this.isSystemApp;
    }

    public final void setSelected(int i) {
        this.isSelected = i;
    }

    @NotNull
    public String toString() {
        String str = this.appName;
        String str2 = this.packageName;
        Drawable drawable = this.appIcon;
        boolean z = this.isSystemApp;
        int i = this.isSelected;
        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("AppInfo(appName=", str, ", packageName=", str2, ", appIcon=");
        m2944x4440ab85.append(drawable);
        m2944x4440ab85.append(", isSystemApp=");
        m2944x4440ab85.append(z);
        m2944x4440ab85.append(", isSelected=");
        return AbstractC0362x4440ab85.m2935x1db10c9d(m2944x4440ab85, ")", i);
    }
}
