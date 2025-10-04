package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.PlatformVersion;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzdto {

    @Nullable
    private Context zza;

    @Nullable
    private PopupWindow zzb;

    /* JADX WARN: Removed duplicated region for block: B:18:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(Context context, View view) {
        Window window;
        PopupWindow popupWindow;
        if (PlatformVersion.isAtLeastKitKat() && !PlatformVersion.isAtLeastLollipop()) {
            if (context instanceof Activity) {
                window = ((Activity) context).getWindow();
            } else {
                window = null;
            }
            if (window != null && window.getDecorView() != null && !((Activity) context).isDestroyed()) {
                FrameLayout frameLayout = new FrameLayout(context);
                frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                frameLayout.addView(view, -1, -1);
                popupWindow = new PopupWindow((View) frameLayout, 1, 1, false);
                popupWindow.setOutsideTouchable(true);
                popupWindow.setClippingEnabled(false);
                zzcec.zze(new ObfuscatedString(new long[]{5825520144471702977L, -356904498143315814L, 8649845342567516820L, -1727855072463286655L, -39486587104322539L, 3028874892339818946L}).toString());
                try {
                    popupWindow.showAtLocation(window.getDecorView(), 0, -1, -1);
                } catch (Exception unused) {
                }
                this.zzb = popupWindow;
                if (popupWindow == null) {
                    context = null;
                }
                this.zza = context;
            }
            popupWindow = null;
            this.zzb = popupWindow;
            if (popupWindow == null) {
            }
            this.zza = context;
        }
    }

    public final void zzb() {
        Context context = this.zza;
        if (context != null && this.zzb != null) {
            if ((!(context instanceof Activity) || !((Activity) context).isDestroyed()) && this.zzb.isShowing()) {
                this.zzb.dismiss();
            }
            this.zza = null;
            this.zzb = null;
        }
    }
}
