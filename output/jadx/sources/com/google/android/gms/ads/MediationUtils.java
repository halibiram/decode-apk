package com.google.android.gms.ads;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbgc;
import java.util.List;

/* loaded from: classes2.dex */
public class MediationUtils {
    protected static final double MIN_HEIGHT_RATIO = 0.7d;
    protected static final double MIN_WIDTH_RATIO = 0.5d;

    /* JADX WARN: Removed duplicated region for block: B:32:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cb A[SYNTHETIC] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AdSize findClosestSize(@NonNull Context context, @NonNull AdSize adSize, @NonNull List<AdSize> list) {
        AdSize adSize2 = null;
        if (list != null && adSize != null) {
            if (!adSize.zzh() && !adSize.zzi()) {
                float f = context.getResources().getDisplayMetrics().density;
                adSize = new AdSize(Math.round(adSize.getWidthInPixels(context) / f), Math.round(adSize.getHeightInPixels(context) / f));
            }
            for (AdSize adSize3 : list) {
                if (adSize3 != null) {
                    int width = adSize.getWidth();
                    int width2 = adSize3.getWidth();
                    int height = adSize.getHeight();
                    double d = width * MIN_WIDTH_RATIO;
                    double d2 = width2;
                    int height2 = adSize3.getHeight();
                    if (d <= d2 && width >= width2) {
                        if (adSize.zzi()) {
                            int zza = adSize.zza();
                            if (((Integer) zzba.zzc().zza(zzbgc.zzhK)).intValue() <= width2) {
                                if (((Integer) zzba.zzc().zza(zzbgc.zzhL)).intValue() <= height2 && zza >= height2) {
                                    if (adSize2 != null) {
                                        if (adSize2.getHeight() * adSize2.getWidth() <= adSize3.getHeight() * adSize3.getWidth()) {
                                        }
                                    }
                                    adSize2 = adSize3;
                                }
                            }
                        } else if (adSize.zzh()) {
                            if (adSize.zzb() >= height2) {
                                if (adSize2 != null) {
                                }
                                adSize2 = adSize3;
                            }
                        } else if (height * MIN_HEIGHT_RATIO <= height2 && height >= height2) {
                            if (adSize2 != null) {
                            }
                            adSize2 = adSize3;
                        }
                    }
                }
            }
        }
        return adSize2;
    }
}
