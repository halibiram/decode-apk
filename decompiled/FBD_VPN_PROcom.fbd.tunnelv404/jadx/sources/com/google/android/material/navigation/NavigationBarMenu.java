package com.google.android.material.navigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class NavigationBarMenu extends MenuBuilder {
    private final int maxItemCount;

    @NonNull
    private final Class<?> viewClass;

    public NavigationBarMenu(@NonNull Context context, @NonNull Class<?> cls, int i) {
        super(context);
        this.viewClass = cls;
        this.maxItemCount = i;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    @NonNull
    public MenuItem addInternal(int i, int i2, int i3, @NonNull CharSequence charSequence) {
        if (size() + 1 <= this.maxItemCount) {
            stopDispatchingItemsChanged();
            MenuItem addInternal = super.addInternal(i, i2, i3, charSequence);
            if (addInternal instanceof MenuItemImpl) {
                ((MenuItemImpl) addInternal).setExclusiveCheckable(true);
            }
            startDispatchingItemsChanged();
            return addInternal;
        }
        String simpleName = this.viewClass.getSimpleName();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-430493441728858013L, 1614863454804367319L, 921366996423426037L, 2586853705280684387L, 259931820442276571L, 1595752705558302646L}).toString());
        sb.append(simpleName);
        sb.append(new ObfuscatedString(new long[]{-8023927631239928291L, -8262573440562250184L}).toString());
        sb.append(this.maxItemCount);
        sb.append(new ObfuscatedString(new long[]{7757865424572699370L, -3925598689967478718L, -3379373341339630539L, 6942730374688291826L, -4416189586151876343L}).toString());
        sb.append(simpleName);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3958775979853476774L, 3230678861089304980L, -2250476992428788885L, 1084120596970780582L}), sb));
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    @NonNull
    public SubMenu addSubMenu(int i, int i2, int i3, @NonNull CharSequence charSequence) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.viewClass.getSimpleName());
        throw new UnsupportedOperationException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2376996313693249852L, -8760563558377594961L, 8279453128843526717L, 9184060547100851722L, 2234963228855103015L}), sb));
    }

    public int getMaxItemCount() {
        return this.maxItemCount;
    }
}
