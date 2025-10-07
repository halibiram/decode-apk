package androidx.camera.camera2.internal;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class GuaranteedConfigurationsUtil {
    private GuaranteedConfigurationsUtil() {
    }

    @NonNull
    public static List<SurfaceCombination> generateSupportedCombinationList(int i, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(getLegacySupportedCombinationList());
        if (i == 0 || i == 1 || i == 3) {
            arrayList.addAll(getLimitedSupportedCombinationList());
        }
        if (i == 1 || i == 3) {
            arrayList.addAll(getFullSupportedCombinationList());
        }
        if (z) {
            arrayList.addAll(getRAWSupportedCombinationList());
        }
        if (z2 && i == 0) {
            arrayList.addAll(getBurstSupportedCombinationList());
        }
        if (i == 3) {
            arrayList.addAll(getLevel3SupportedCombinationList());
        }
        return arrayList;
    }

    @NonNull
    public static List<SurfaceCombination> get10BitSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination m3325x1378447b = AbstractC0749x8313616e.m3325x1378447b(configType, configSize, surfaceCombination, arrayList, surfaceCombination);
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceCombination m3325x1378447b2 = AbstractC0749x8313616e.m3325x1378447b(configType2, configSize, m3325x1378447b, arrayList, m3325x1378447b);
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        m3325x1378447b2.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        SurfaceCombination m3325x1378447b3 = AbstractC0749x8313616e.m3325x1378447b(configType3, configSize, m3325x1378447b2, arrayList, m3325x1378447b2);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize2, m3325x1378447b3, configType2, configSize);
        SurfaceCombination m3326x75d576dc = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3325x1378447b3);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize2, m3326x75d576dc, configType2, configSize);
        SurfaceCombination m3326x75d576dc2 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc);
        m3326x75d576dc2.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.RECORD;
        SurfaceCombination m3325x1378447b4 = AbstractC0749x8313616e.m3325x1378447b(configType, configSize3, m3326x75d576dc2, arrayList, m3326x75d576dc2);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize2, m3325x1378447b4, configType, configSize3);
        SurfaceCombination m3325x1378447b5 = AbstractC0749x8313616e.m3325x1378447b(configType2, configSize3, m3325x1378447b4, arrayList, m3325x1378447b4);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize2, m3325x1378447b5, configType, configSize3);
        m3325x1378447b5.addSurfaceConfig(SurfaceConfig.create(configType3, configSize3));
        arrayList.add(m3325x1378447b5);
        return arrayList;
    }

    @NonNull
    public static List<SurfaceCombination> getBurstSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination m3325x1378447b = AbstractC0749x8313616e.m3325x1378447b(configType, configSize2, surfaceCombination, arrayList, surfaceCombination);
        m3325x1378447b.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceCombination m3325x1378447b2 = AbstractC0749x8313616e.m3325x1378447b(configType2, configSize2, m3325x1378447b, arrayList, m3325x1378447b);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize, m3325x1378447b2, configType2, configSize2);
        arrayList.add(m3325x1378447b2);
        return arrayList;
    }

    @NonNull
    public static List<SurfaceCombination> getConcurrentSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.YUV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.s1440p;
        SurfaceCombination m3325x1378447b = AbstractC0749x8313616e.m3325x1378447b(configType, configSize, surfaceCombination, arrayList, surfaceCombination);
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.PRIV;
        SurfaceCombination m3325x1378447b2 = AbstractC0749x8313616e.m3325x1378447b(configType2, configSize, m3325x1378447b, arrayList, m3325x1378447b);
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        SurfaceCombination m3325x1378447b3 = AbstractC0749x8313616e.m3325x1378447b(configType3, configSize, m3325x1378447b2, arrayList, m3325x1378447b2);
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.s720p;
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize2, m3325x1378447b3, configType3, configSize);
        SurfaceCombination m3326x75d576dc = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3325x1378447b3);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize2, m3326x75d576dc, configType3, configSize);
        SurfaceCombination m3326x75d576dc2 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize2, m3326x75d576dc2, configType, configSize);
        SurfaceCombination m3326x75d576dc3 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc2);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize2, m3326x75d576dc3, configType2, configSize);
        SurfaceCombination m3326x75d576dc4 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc3);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize2, m3326x75d576dc4, configType, configSize);
        SurfaceCombination m3326x75d576dc5 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc4);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize2, m3326x75d576dc5, configType2, configSize);
        arrayList.add(m3326x75d576dc5);
        return arrayList;
    }

    @NonNull
    public static List<SurfaceCombination> getFullSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination m3325x1378447b = AbstractC0749x8313616e.m3325x1378447b(configType, configSize2, surfaceCombination, arrayList, surfaceCombination);
        m3325x1378447b.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceCombination m3325x1378447b2 = AbstractC0749x8313616e.m3325x1378447b(configType2, configSize2, m3325x1378447b, arrayList, m3325x1378447b);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize, m3325x1378447b2, configType2, configSize2);
        SurfaceCombination m3326x75d576dc = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3325x1378447b2);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize, m3326x75d576dc, configType, configSize);
        SurfaceCombination m3325x1378447b3 = AbstractC0749x8313616e.m3325x1378447b(SurfaceConfig.ConfigType.JPEG, configSize2, m3326x75d576dc, arrayList, m3326x75d576dc);
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.VGA;
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize3, m3325x1378447b3, configType, configSize);
        SurfaceCombination m3325x1378447b4 = AbstractC0749x8313616e.m3325x1378447b(configType2, configSize2, m3325x1378447b3, arrayList, m3325x1378447b3);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize3, m3325x1378447b4, configType2, configSize);
        m3325x1378447b4.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        arrayList.add(m3325x1378447b4);
        return arrayList;
    }

    @NonNull
    public static List<SurfaceCombination> getLegacySupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination m3325x1378447b = AbstractC0749x8313616e.m3325x1378447b(configType, configSize, surfaceCombination, arrayList, surfaceCombination);
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.JPEG;
        SurfaceCombination m3325x1378447b2 = AbstractC0749x8313616e.m3325x1378447b(configType2, configSize, m3325x1378447b, arrayList, m3325x1378447b);
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.YUV;
        SurfaceCombination m3325x1378447b3 = AbstractC0749x8313616e.m3325x1378447b(configType3, configSize, m3325x1378447b2, arrayList, m3325x1378447b2);
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize2, m3325x1378447b3, configType2, configSize);
        SurfaceCombination m3326x75d576dc = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3325x1378447b3);
        AbstractC0749x8313616e.m3346xec92ba90(configType3, configSize2, m3326x75d576dc, configType2, configSize);
        SurfaceCombination m3326x75d576dc2 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize2, m3326x75d576dc2, configType, configSize2);
        SurfaceCombination m3326x75d576dc3 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc2);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize2, m3326x75d576dc3, configType3, configSize2);
        SurfaceCombination m3326x75d576dc4 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc3);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize2, m3326x75d576dc4, configType3, configSize2);
        m3326x75d576dc4.addSurfaceConfig(SurfaceConfig.create(configType2, configSize));
        arrayList.add(m3326x75d576dc4);
        return arrayList;
    }

    @NonNull
    public static List<SurfaceCombination> getLevel3SupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.VGA;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType2, configSize3));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.RAW;
        SurfaceCombination m3325x1378447b = AbstractC0749x8313616e.m3325x1378447b(configType3, configSize3, surfaceCombination, arrayList, surfaceCombination);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize, m3325x1378447b, configType, configSize2);
        AbstractC0749x8313616e.m3346xec92ba90(SurfaceConfig.ConfigType.JPEG, configSize3, m3325x1378447b, configType3, configSize3);
        arrayList.add(m3325x1378447b);
        return arrayList;
    }

    @NonNull
    public static List<SurfaceCombination> getLimitedSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.RECORD;
        SurfaceCombination m3325x1378447b = AbstractC0749x8313616e.m3325x1378447b(configType, configSize2, surfaceCombination, arrayList, surfaceCombination);
        m3325x1378447b.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceCombination m3325x1378447b2 = AbstractC0749x8313616e.m3325x1378447b(configType2, configSize2, m3325x1378447b, arrayList, m3325x1378447b);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize, m3325x1378447b2, configType2, configSize2);
        SurfaceCombination m3326x75d576dc = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3325x1378447b2);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize, m3326x75d576dc, configType, configSize2);
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        SurfaceCombination m3325x1378447b3 = AbstractC0749x8313616e.m3325x1378447b(configType3, configSize2, m3326x75d576dc, arrayList, m3326x75d576dc);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize, m3325x1378447b3, configType2, configSize2);
        SurfaceCombination m3325x1378447b4 = AbstractC0749x8313616e.m3325x1378447b(configType3, configSize2, m3325x1378447b3, arrayList, m3325x1378447b3);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize, m3325x1378447b4, configType2, configSize);
        m3325x1378447b4.addSurfaceConfig(SurfaceConfig.create(configType3, SurfaceConfig.ConfigSize.MAXIMUM));
        arrayList.add(m3325x1378447b4);
        return arrayList;
    }

    @NonNull
    @RequiresApi(api = 33)
    public static List<SurfaceCombination> getPreviewStabilizationSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.s1440p;
        SurfaceCombination m3325x1378447b = AbstractC0749x8313616e.m3325x1378447b(configType, configSize, surfaceCombination, arrayList, surfaceCombination);
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceCombination m3325x1378447b2 = AbstractC0749x8313616e.m3325x1378447b(configType2, configSize, m3325x1378447b, arrayList, m3325x1378447b);
        m3325x1378447b2.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination m3325x1378447b3 = AbstractC0749x8313616e.m3325x1378447b(configType3, configSize2, m3325x1378447b2, arrayList, m3325x1378447b2);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize, m3325x1378447b3, configType3, configSize2);
        SurfaceCombination m3326x75d576dc = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3325x1378447b3);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize, m3326x75d576dc, configType2, configSize2);
        SurfaceCombination m3326x75d576dc2 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize, m3326x75d576dc2, configType2, configSize2);
        SurfaceCombination m3326x75d576dc3 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc2);
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.PREVIEW;
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize3, m3326x75d576dc3, configType, configSize);
        SurfaceCombination m3326x75d576dc4 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc3);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize3, m3326x75d576dc4, configType, configSize);
        SurfaceCombination m3326x75d576dc5 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc4);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize3, m3326x75d576dc5, configType2, configSize);
        SurfaceCombination m3326x75d576dc6 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc5);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize3, m3326x75d576dc6, configType2, configSize);
        arrayList.add(m3326x75d576dc6);
        return arrayList;
    }

    @NonNull
    public static List<SurfaceCombination> getRAWSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.RAW;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination m3325x1378447b = AbstractC0749x8313616e.m3325x1378447b(configType, configSize, surfaceCombination, arrayList, surfaceCombination);
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize2, m3325x1378447b, configType, configSize);
        SurfaceCombination m3326x75d576dc = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3325x1378447b);
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.YUV;
        AbstractC0749x8313616e.m3346xec92ba90(configType3, configSize2, m3326x75d576dc, configType, configSize);
        SurfaceCombination m3326x75d576dc2 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3326x75d576dc);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize2, m3326x75d576dc2, configType2, configSize2);
        SurfaceCombination m3325x1378447b2 = AbstractC0749x8313616e.m3325x1378447b(configType, configSize, m3326x75d576dc2, arrayList, m3326x75d576dc2);
        AbstractC0749x8313616e.m3346xec92ba90(configType2, configSize2, m3325x1378447b2, configType3, configSize2);
        SurfaceCombination m3325x1378447b3 = AbstractC0749x8313616e.m3325x1378447b(configType, configSize, m3325x1378447b2, arrayList, m3325x1378447b2);
        AbstractC0749x8313616e.m3346xec92ba90(configType3, configSize2, m3325x1378447b3, configType3, configSize2);
        SurfaceCombination m3325x1378447b4 = AbstractC0749x8313616e.m3325x1378447b(configType, configSize, m3325x1378447b3, arrayList, m3325x1378447b3);
        m3325x1378447b4.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        SurfaceConfig.ConfigType configType4 = SurfaceConfig.ConfigType.JPEG;
        AbstractC0749x8313616e.m3346xec92ba90(configType4, configSize, m3325x1378447b4, configType, configSize);
        SurfaceCombination m3326x75d576dc3 = AbstractC0749x8313616e.m3326x75d576dc(arrayList, m3325x1378447b4);
        AbstractC0749x8313616e.m3346xec92ba90(configType3, configSize2, m3326x75d576dc3, configType4, configSize);
        m3326x75d576dc3.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        arrayList.add(m3326x75d576dc3);
        return arrayList;
    }

    @NonNull
    @RequiresApi(api = 33)
    public static List<SurfaceCombination> getStreamUseCaseSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.s1440p;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize, 4L));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType2, configSize, 4L));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.RECORD;
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.create(configType, configSize2, 3L));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2, 3L));
        arrayList.add(surfaceCombination4);
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.create(configType3, configSize3, 2L));
        arrayList.add(surfaceCombination5);
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.create(configType2, configSize3, 2L));
        arrayList.add(surfaceCombination6);
        SurfaceCombination surfaceCombination7 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize4 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.create(configType, configSize4, 1L));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.create(configType3, configSize3, 2L));
        arrayList.add(surfaceCombination7);
        SurfaceCombination surfaceCombination8 = new SurfaceCombination();
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.create(configType, configSize4, 1L));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.create(configType2, configSize3, 2L));
        arrayList.add(surfaceCombination8);
        SurfaceCombination surfaceCombination9 = new SurfaceCombination();
        surfaceCombination9.addSurfaceConfig(SurfaceConfig.create(configType, configSize4, 1L));
        surfaceCombination9.addSurfaceConfig(SurfaceConfig.create(configType, configSize2, 3L));
        arrayList.add(surfaceCombination9);
        SurfaceCombination surfaceCombination10 = new SurfaceCombination();
        surfaceCombination10.addSurfaceConfig(SurfaceConfig.create(configType, configSize4, 1L));
        surfaceCombination10.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2, 3L));
        arrayList.add(surfaceCombination10);
        SurfaceCombination surfaceCombination11 = new SurfaceCombination();
        surfaceCombination11.addSurfaceConfig(SurfaceConfig.create(configType, configSize4, 1L));
        surfaceCombination11.addSurfaceConfig(SurfaceConfig.create(configType2, configSize4, 1L));
        arrayList.add(surfaceCombination11);
        SurfaceCombination surfaceCombination12 = new SurfaceCombination();
        surfaceCombination12.addSurfaceConfig(SurfaceConfig.create(configType, configSize4, 1L));
        surfaceCombination12.addSurfaceConfig(SurfaceConfig.create(configType, configSize2, 3L));
        surfaceCombination12.addSurfaceConfig(SurfaceConfig.create(configType3, configSize2, 2L));
        arrayList.add(surfaceCombination12);
        SurfaceCombination surfaceCombination13 = new SurfaceCombination();
        surfaceCombination13.addSurfaceConfig(SurfaceConfig.create(configType, configSize4, 1L));
        surfaceCombination13.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2, 3L));
        surfaceCombination13.addSurfaceConfig(SurfaceConfig.create(configType3, configSize2, 2L));
        arrayList.add(surfaceCombination13);
        SurfaceCombination surfaceCombination14 = new SurfaceCombination();
        surfaceCombination14.addSurfaceConfig(SurfaceConfig.create(configType, configSize4, 1L));
        surfaceCombination14.addSurfaceConfig(SurfaceConfig.create(configType2, configSize4, 1L));
        surfaceCombination14.addSurfaceConfig(SurfaceConfig.create(configType3, configSize3, 2L));
        arrayList.add(surfaceCombination14);
        return arrayList;
    }

    @NonNull
    public static List<SurfaceCombination> getUltraHdrSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.JPEG_R;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination m3325x1378447b = AbstractC0749x8313616e.m3325x1378447b(configType, configSize, surfaceCombination, arrayList, surfaceCombination);
        AbstractC0749x8313616e.m3346xec92ba90(SurfaceConfig.ConfigType.PRIV, SurfaceConfig.ConfigSize.PREVIEW, m3325x1378447b, configType, configSize);
        arrayList.add(m3325x1378447b);
        return arrayList;
    }

    @NonNull
    public static List<SurfaceCombination> getUltraHighResolutionSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.YUV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.ULTRA_MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.RECORD;
        SurfaceCombination m3325x1378447b = AbstractC0749x8313616e.m3325x1378447b(configType2, configSize3, surfaceCombination, arrayList, surfaceCombination);
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        AbstractC0749x8313616e.m3346xec92ba90(configType3, configSize, m3325x1378447b, configType2, configSize2);
        SurfaceCombination m3325x1378447b2 = AbstractC0749x8313616e.m3325x1378447b(configType2, configSize3, m3325x1378447b, arrayList, m3325x1378447b);
        SurfaceConfig.ConfigType configType4 = SurfaceConfig.ConfigType.RAW;
        AbstractC0749x8313616e.m3346xec92ba90(configType4, configSize, m3325x1378447b2, configType2, configSize2);
        SurfaceCombination m3325x1378447b3 = AbstractC0749x8313616e.m3325x1378447b(configType2, configSize3, m3325x1378447b2, arrayList, m3325x1378447b2);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize, m3325x1378447b3, configType2, configSize2);
        SurfaceConfig.ConfigSize configSize4 = SurfaceConfig.ConfigSize.MAXIMUM;
        SurfaceCombination m3325x1378447b4 = AbstractC0749x8313616e.m3325x1378447b(configType3, configSize4, m3325x1378447b3, arrayList, m3325x1378447b3);
        AbstractC0749x8313616e.m3346xec92ba90(configType3, configSize, m3325x1378447b4, configType2, configSize2);
        SurfaceCombination m3325x1378447b5 = AbstractC0749x8313616e.m3325x1378447b(configType3, configSize4, m3325x1378447b4, arrayList, m3325x1378447b4);
        AbstractC0749x8313616e.m3346xec92ba90(configType4, configSize, m3325x1378447b5, configType2, configSize2);
        SurfaceCombination m3325x1378447b6 = AbstractC0749x8313616e.m3325x1378447b(configType3, configSize4, m3325x1378447b5, arrayList, m3325x1378447b5);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize, m3325x1378447b6, configType2, configSize2);
        SurfaceCombination m3325x1378447b7 = AbstractC0749x8313616e.m3325x1378447b(configType, configSize4, m3325x1378447b6, arrayList, m3325x1378447b6);
        AbstractC0749x8313616e.m3346xec92ba90(configType3, configSize, m3325x1378447b7, configType2, configSize2);
        SurfaceCombination m3325x1378447b8 = AbstractC0749x8313616e.m3325x1378447b(configType, configSize4, m3325x1378447b7, arrayList, m3325x1378447b7);
        AbstractC0749x8313616e.m3346xec92ba90(configType4, configSize, m3325x1378447b8, configType2, configSize2);
        SurfaceCombination m3325x1378447b9 = AbstractC0749x8313616e.m3325x1378447b(configType, configSize4, m3325x1378447b8, arrayList, m3325x1378447b8);
        AbstractC0749x8313616e.m3346xec92ba90(configType, configSize, m3325x1378447b9, configType2, configSize2);
        SurfaceCombination m3325x1378447b10 = AbstractC0749x8313616e.m3325x1378447b(configType4, configSize4, m3325x1378447b9, arrayList, m3325x1378447b9);
        AbstractC0749x8313616e.m3346xec92ba90(configType3, configSize, m3325x1378447b10, configType2, configSize2);
        SurfaceCombination m3325x1378447b11 = AbstractC0749x8313616e.m3325x1378447b(configType4, configSize4, m3325x1378447b10, arrayList, m3325x1378447b10);
        AbstractC0749x8313616e.m3346xec92ba90(configType4, configSize, m3325x1378447b11, configType2, configSize2);
        m3325x1378447b11.addSurfaceConfig(SurfaceConfig.create(configType4, configSize4));
        arrayList.add(m3325x1378447b11);
        return arrayList;
    }
}
