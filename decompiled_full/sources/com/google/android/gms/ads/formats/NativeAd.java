package com.google.android.gms.ads.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

@Deprecated
/* loaded from: classes2.dex */
public abstract class NativeAd {

    @NonNull
    public static final String ASSET_ADCHOICES_CONTAINER_VIEW = new ObfuscatedString(new long[]{1495494273717418638L, 5311932646253637495L}).toString();

    @Deprecated
    /* loaded from: classes2.dex */
    public static abstract class AdChoicesInfo {
        @NonNull
        public abstract List<Image> getImages();

        @NonNull
        public abstract CharSequence getText();
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public static abstract class Image {
        @NonNull
        public abstract Drawable getDrawable();

        public abstract double getScale();

        @NonNull
        public abstract Uri getUri();

        public int zza() {
            return -1;
        }

        public int zzb() {
            return -1;
        }
    }

    @Deprecated
    public abstract void performClick(@NonNull Bundle bundle);

    @Deprecated
    public abstract boolean recordImpression(@NonNull Bundle bundle);

    @Deprecated
    public abstract void reportTouchEvent(@NonNull Bundle bundle);
}
