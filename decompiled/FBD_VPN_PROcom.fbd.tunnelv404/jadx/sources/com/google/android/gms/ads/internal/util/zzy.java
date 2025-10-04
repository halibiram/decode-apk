package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.zzbgc;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import java.util.Locale;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@TargetApi(28)
/* loaded from: classes2.dex */
public class zzy extends zzw {
    public static final /* synthetic */ WindowInsets zzl(Activity activity, View view, WindowInsets windowInsets) {
        DisplayCutout displayCutout;
        List<Rect> boundingRects;
        if (com.google.android.gms.ads.internal.zzt.zzo().zzi().zzm() == null) {
            displayCutout = windowInsets.getDisplayCutout();
            if (displayCutout != null) {
                zzg zzi = com.google.android.gms.ads.internal.zzt.zzo().zzi();
                boundingRects = displayCutout.getBoundingRects();
                String obfuscatedString = new ObfuscatedString(new long[]{-4363624312926032786L}).toString();
                for (Rect rect : boundingRects) {
                    String format = String.format(Locale.US, new ObfuscatedString(new long[]{-4936337019193415778L, 3822390434893694384L, -321040222191460373L}).toString(), Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                    if (!TextUtils.isEmpty(obfuscatedString)) {
                        obfuscatedString = obfuscatedString.concat(new ObfuscatedString(new long[]{-3790371445302514658L, -814156836361857047L}).toString());
                    }
                    obfuscatedString = obfuscatedString.concat(format);
                }
                zzi.zzC(obfuscatedString);
            } else {
                com.google.android.gms.ads.internal.zzt.zzo().zzi().zzC(new ObfuscatedString(new long[]{-4510505473839900947L}).toString());
            }
        }
        zzn(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    private static final void zzn(boolean z, Activity activity) {
        int i;
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        i = attributes.layoutInDisplayCutoutMode;
        int i2 = 1;
        if (true != z) {
            i2 = 2;
        }
        if (i2 != i) {
            attributes.layoutInDisplayCutoutMode = i2;
            window.setAttributes(attributes);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzab
    public final int zzj(AudioManager audioManager) {
        int streamMinVolume;
        streamMinVolume = audioManager.getStreamMinVolume(3);
        return streamMinVolume;
    }

    @Override // com.google.android.gms.ads.internal.util.zzab
    public final void zzk(final Activity activity) {
        boolean isInMultiWindowMode;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbf)).booleanValue() && com.google.android.gms.ads.internal.zzt.zzo().zzi().zzm() == null) {
            isInMultiWindowMode = activity.isInMultiWindowMode();
            if (!isInMultiWindowMode) {
                zzn(true, activity);
                activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.google.android.gms.ads.internal.util.zzx
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        return zzy.zzl(activity, view, windowInsets);
                    }
                });
            }
        }
    }
}
