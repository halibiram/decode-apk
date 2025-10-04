package androidx.camera.video;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.auto.value.AutoValue;
import com.tknetwork.tunnel.core.VpnProfile;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class Quality {
    public static final Quality FHD;
    public static final Quality HD;
    public static final Quality HIGHEST;
    public static final Quality LOWEST;
    static final Quality NONE;
    private static final Set<Quality> QUALITIES;
    private static final List<Quality> QUALITIES_ORDER_BY_SIZE;
    public static final Quality SD;
    public static final Quality UHD;

    @AutoValue
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static abstract class ConstantQuality extends Quality {
        public ConstantQuality() {
            super();
        }

        @NonNull
        public static ConstantQuality of(int i, @NonNull String str, @NonNull List<Size> list) {
            return new AutoValue_Quality_ConstantQuality(i, str, list);
        }

        @NonNull
        public abstract String getName();

        @NonNull
        public abstract List<Size> getTypicalSizes();

        public abstract int getValue();
    }

    static {
        ConstantQuality of = ConstantQuality.of(4, "SD", DesugarCollections.unmodifiableList(Arrays.asList(new Size(720, 480), new Size(640, 480))));
        SD = of;
        ConstantQuality of2 = ConstantQuality.of(5, "HD", Collections.singletonList(new Size(VpnProfile.DEFAULT_MSSFIX_SIZE, 720)));
        HD = of2;
        ConstantQuality of3 = ConstantQuality.of(6, "FHD", Collections.singletonList(new Size(1920, 1080)));
        FHD = of3;
        ConstantQuality of4 = ConstantQuality.of(8, "UHD", Collections.singletonList(new Size(3840, 2160)));
        UHD = of4;
        ConstantQuality of5 = ConstantQuality.of(0, "LOWEST", Collections.emptyList());
        LOWEST = of5;
        ConstantQuality of6 = ConstantQuality.of(1, "HIGHEST", Collections.emptyList());
        HIGHEST = of6;
        NONE = ConstantQuality.of(-1, "NONE", Collections.emptyList());
        QUALITIES = new HashSet(Arrays.asList(of5, of6, of, of2, of3, of4));
        QUALITIES_ORDER_BY_SIZE = Arrays.asList(of4, of3, of2, of);
    }

    public static boolean containsQuality(@NonNull Quality quality) {
        return QUALITIES.contains(quality);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static List<Quality> getSortedQualities() {
        return new ArrayList(QUALITIES_ORDER_BY_SIZE);
    }

    private Quality() {
    }
}
