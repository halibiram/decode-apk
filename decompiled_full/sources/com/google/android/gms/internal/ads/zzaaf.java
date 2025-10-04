package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;

@RequiresApi(26)
/* loaded from: classes2.dex */
final class zzaaf {
    @DoNotInline
    public static boolean zza(Context context) {
        Display display;
        boolean isHdr;
        Display.HdrCapabilities hdrCapabilities;
        int[] supportedHdrTypes;
        DisplayManager displayManager = (DisplayManager) context.getSystemService(new ObfuscatedString(new long[]{-6290538825555933648L, -1186809745321355952L}).toString());
        if (displayManager != null) {
            display = displayManager.getDisplay(0);
        } else {
            display = null;
        }
        if (display != null) {
            isHdr = display.isHdr();
            if (isHdr) {
                hdrCapabilities = display.getHdrCapabilities();
                supportedHdrTypes = hdrCapabilities.getSupportedHdrTypes();
                for (int i : supportedHdrTypes) {
                    if (i == 1) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
