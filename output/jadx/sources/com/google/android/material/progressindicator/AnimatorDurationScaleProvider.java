package com.google.android.material.progressindicator;

import android.content.ContentResolver;
import android.provider.Settings;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class AnimatorDurationScaleProvider {
    private static float defaultSystemAnimatorDurationScale = 1.0f;

    @VisibleForTesting
    public static void setDefaultSystemAnimatorDurationScale(float f) {
        defaultSystemAnimatorDurationScale = f;
    }

    public float getSystemAnimatorDurationScale(@NonNull ContentResolver contentResolver) {
        return Settings.Global.getFloat(contentResolver, new ObfuscatedString(new long[]{-8860611393979832814L, -7825420452888815145L, 8807413072945195810L, 8166344843102815911L}).toString(), 1.0f);
    }
}
