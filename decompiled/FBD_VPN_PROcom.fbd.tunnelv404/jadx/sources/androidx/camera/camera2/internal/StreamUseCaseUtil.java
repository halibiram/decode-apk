package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.SupportedSurfaceCombination;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.streamsharing.StreamSharingConfig;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class StreamUseCaseUtil {
    public static final Config.Option<Long> STREAM_USE_CASE_STREAM_SPEC_OPTION = Config.Option.create("camera2.streamSpec.streamUseCase", Long.TYPE);
    private static final Map<Long, Set<UseCaseConfigFactory.CaptureType>> STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP;
    private static final Map<Long, Set<UseCaseConfigFactory.CaptureType>> STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP;
    private static final String TAG = "StreamUseCaseUtil";

    static {
        HashMap hashMap = new HashMap();
        STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP = hashMap;
        HashMap hashMap2 = new HashMap();
        STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP = hashMap2;
        if (Build.VERSION.SDK_INT >= 33) {
            HashSet hashSet = new HashSet();
            UseCaseConfigFactory.CaptureType captureType = UseCaseConfigFactory.CaptureType.PREVIEW;
            hashSet.add(captureType);
            UseCaseConfigFactory.CaptureType captureType2 = UseCaseConfigFactory.CaptureType.METERING_REPEATING;
            hashSet.add(captureType2);
            hashMap.put(4L, hashSet);
            HashSet hashSet2 = new HashSet();
            hashSet2.add(captureType);
            hashSet2.add(captureType2);
            hashSet2.add(UseCaseConfigFactory.CaptureType.IMAGE_ANALYSIS);
            hashMap.put(1L, hashSet2);
            HashSet hashSet3 = new HashSet();
            UseCaseConfigFactory.CaptureType captureType3 = UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE;
            hashSet3.add(captureType3);
            hashMap.put(2L, hashSet3);
            HashSet hashSet4 = new HashSet();
            UseCaseConfigFactory.CaptureType captureType4 = UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE;
            hashSet4.add(captureType4);
            hashMap.put(3L, hashSet4);
            HashSet hashSet5 = new HashSet();
            hashSet5.add(captureType);
            hashSet5.add(captureType3);
            hashSet5.add(captureType4);
            hashMap2.put(4L, hashSet5);
            HashSet hashSet6 = new HashSet();
            hashSet6.add(captureType);
            hashSet6.add(captureType4);
            hashMap2.put(3L, hashSet6);
        }
    }

    private StreamUseCaseUtil() {
    }

    public static boolean areCaptureTypesEligible(@NonNull Map<Integer, AttachedSurfaceInfo> map, @NonNull Map<Integer, UseCaseConfig<?>> map2, @NonNull List<SurfaceConfig> list) {
        List<UseCaseConfigFactory.CaptureType> emptyList;
        UseCaseConfigFactory.CaptureType captureType;
        for (int i = 0; i < list.size(); i++) {
            long streamUseCase = list.get(i).getStreamUseCase();
            if (map.containsKey(Integer.valueOf(i))) {
                AttachedSurfaceInfo attachedSurfaceInfo = map.get(Integer.valueOf(i));
                if (attachedSurfaceInfo.getCaptureTypes().size() == 1) {
                    captureType = attachedSurfaceInfo.getCaptureTypes().get(0);
                } else {
                    captureType = UseCaseConfigFactory.CaptureType.STREAM_SHARING;
                }
                if (!isEligibleCaptureType(captureType, streamUseCase, attachedSurfaceInfo.getCaptureTypes())) {
                    return false;
                }
            } else if (map2.containsKey(Integer.valueOf(i))) {
                UseCaseConfig<?> useCaseConfig = map2.get(Integer.valueOf(i));
                UseCaseConfigFactory.CaptureType captureType2 = useCaseConfig.getCaptureType();
                if (useCaseConfig.getCaptureType() == UseCaseConfigFactory.CaptureType.STREAM_SHARING) {
                    emptyList = ((StreamSharingConfig) useCaseConfig).getCaptureTypes();
                } else {
                    emptyList = Collections.emptyList();
                }
                if (!isEligibleCaptureType(captureType2, streamUseCase, emptyList)) {
                    return false;
                }
            } else {
                throw new AssertionError("SurfaceConfig does not map to any use case");
            }
        }
        return true;
    }

    private static boolean areStreamUseCasesAvailable(Set<Long> set, Set<Long> set2) {
        Iterator<Long> it = set2.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean areStreamUseCasesAvailableForSurfaceConfigs(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull List<SurfaceConfig> list) {
        CameraCharacteristics.Key key;
        if (Build.VERSION.SDK_INT >= 33) {
            key = CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES;
            long[] jArr = (long[]) cameraCharacteristicsCompat.get(key);
            if (jArr == null || jArr.length == 0) {
                return false;
            }
            HashSet hashSet = new HashSet();
            for (long j : jArr) {
                hashSet.add(Long.valueOf(j));
            }
            Iterator<SurfaceConfig> it = list.iterator();
            while (it.hasNext()) {
                if (!hashSet.contains(Long.valueOf(it.next().getStreamUseCase()))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public static boolean containsZslUseCase(@NonNull List<AttachedSurfaceInfo> list, @NonNull List<UseCaseConfig<?>> list2) {
        for (AttachedSurfaceInfo attachedSurfaceInfo : list) {
            if (isZslUseCase(attachedSurfaceInfo.getImplementationOptions(), attachedSurfaceInfo.getCaptureTypes().get(0))) {
                return true;
            }
        }
        for (UseCaseConfig<?> useCaseConfig : list2) {
            if (isZslUseCase(useCaseConfig, useCaseConfig.getCaptureType())) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    public static Camera2ImplConfig getStreamSpecImplementationOptions(@NonNull UseCaseConfig<?> useCaseConfig) {
        MutableOptionsBundle create = MutableOptionsBundle.create();
        Config.Option<?> option = Camera2ImplConfig.STREAM_USE_CASE_OPTION;
        if (useCaseConfig.containsOption(option)) {
            create.insertOption(option, (Long) useCaseConfig.retrieveOption(option));
        }
        Config.Option<?> option2 = UseCaseConfig.OPTION_ZSL_DISABLED;
        if (useCaseConfig.containsOption(option2)) {
            create.insertOption(option2, (Boolean) useCaseConfig.retrieveOption(option2));
        }
        Config.Option<?> option3 = ImageCaptureConfig.OPTION_IMAGE_CAPTURE_MODE;
        if (useCaseConfig.containsOption(option3)) {
            create.insertOption(option3, (Integer) useCaseConfig.retrieveOption(option3));
        }
        Config.Option<?> option4 = ImageInputConfig.OPTION_INPUT_FORMAT;
        if (useCaseConfig.containsOption(option4)) {
            create.insertOption(option4, (Integer) useCaseConfig.retrieveOption(option4));
        }
        return new Camera2ImplConfig(create);
    }

    @Nullable
    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    private static Config getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(Config config2, long j) {
        Config.Option<Long> option = STREAM_USE_CASE_STREAM_SPEC_OPTION;
        if (config2.containsOption(option) && ((Long) config2.retrieveOption(option)).longValue() == j) {
            return null;
        }
        MutableOptionsBundle from = MutableOptionsBundle.from(config2);
        from.insertOption(option, Long.valueOf(j));
        return new Camera2ImplConfig(from);
    }

    private static boolean isEligibleCaptureType(UseCaseConfigFactory.CaptureType captureType, long j, List<UseCaseConfigFactory.CaptureType> list) {
        if (Build.VERSION.SDK_INT < 33) {
            return false;
        }
        if (captureType == UseCaseConfigFactory.CaptureType.STREAM_SHARING) {
            Map<Long, Set<UseCaseConfigFactory.CaptureType>> map = STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP;
            if (!map.containsKey(Long.valueOf(j))) {
                return false;
            }
            Set<UseCaseConfigFactory.CaptureType> set = map.get(Long.valueOf(j));
            if (list.size() != set.size()) {
                return false;
            }
            Iterator<UseCaseConfigFactory.CaptureType> it = list.iterator();
            while (it.hasNext()) {
                if (!set.contains(it.next())) {
                    return false;
                }
            }
            return true;
        }
        Map<Long, Set<UseCaseConfigFactory.CaptureType>> map2 = STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP;
        if (!map2.containsKey(Long.valueOf(j)) || !map2.get(Long.valueOf(j)).contains(captureType)) {
            return false;
        }
        return true;
    }

    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    public static boolean isStreamUseCaseSupported(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        CameraCharacteristics.Key key;
        if (Build.VERSION.SDK_INT >= 33) {
            key = CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES;
            long[] jArr = (long[]) cameraCharacteristicsCompat.get(key);
            if (jArr == null || jArr.length == 0) {
                return false;
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x004a  */
    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean isValidCamera2InteropOverride(List<AttachedSurfaceInfo> list, List<UseCaseConfig<?>> list2, Set<Long> set) {
        boolean z;
        boolean z2;
        HashSet hashSet = new HashSet();
        Iterator<AttachedSurfaceInfo> it = list.iterator();
        if (it.hasNext()) {
            AttachedSurfaceInfo next = it.next();
            Config implementationOptions = next.getImplementationOptions();
            Config.Option<Long> option = Camera2ImplConfig.STREAM_USE_CASE_OPTION;
            if (!implementationOptions.containsOption(option) || ((Long) next.getImplementationOptions().retrieveOption(option)).longValue() == 0) {
                z = false;
                z2 = true;
                for (UseCaseConfig<?> useCaseConfig : list2) {
                    Config.Option<?> option2 = Camera2ImplConfig.STREAM_USE_CASE_OPTION;
                    if (!useCaseConfig.containsOption(option2)) {
                        if (z) {
                            throwInvalidCamera2InteropOverrideException();
                        }
                    } else {
                        Long l = (Long) useCaseConfig.retrieveOption(option2);
                        if (l.longValue() == 0) {
                            if (z) {
                                throwInvalidCamera2InteropOverrideException();
                            }
                        } else {
                            if (z2) {
                                throwInvalidCamera2InteropOverrideException();
                            }
                            hashSet.add(l);
                            z = true;
                        }
                    }
                    z2 = true;
                }
                if (z2 && areStreamUseCasesAvailable(set, hashSet)) {
                    return true;
                }
                return false;
            }
            z = true;
        } else {
            z = false;
        }
        z2 = false;
        while (r11.hasNext()) {
        }
        if (z2) {
        }
        return false;
    }

    private static boolean isZslUseCase(Config config2, UseCaseConfigFactory.CaptureType captureType) {
        if (((Boolean) config2.retrieveOption(UseCaseConfig.OPTION_ZSL_DISABLED, Boolean.FALSE)).booleanValue()) {
            return false;
        }
        Config.Option<Integer> option = ImageCaptureConfig.OPTION_IMAGE_CAPTURE_MODE;
        if (!config2.containsOption(option) || TemplateTypeUtil.getSessionConfigTemplateType(captureType, ((Integer) config2.retrieveOption(option)).intValue()) != 5) {
            return false;
        }
        return true;
    }

    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    public static boolean populateStreamUseCaseStreamSpecOptionWithInteropOverride(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull List<AttachedSurfaceInfo> list, @NonNull Map<UseCaseConfig<?>, StreamSpec> map, @NonNull Map<AttachedSurfaceInfo, StreamSpec> map2) {
        CameraCharacteristics.Key key;
        if (Build.VERSION.SDK_INT < 33) {
            return false;
        }
        ArrayList arrayList = new ArrayList(map.keySet());
        Iterator<AttachedSurfaceInfo> it = list.iterator();
        while (it.hasNext()) {
            Preconditions.checkNotNull(it.next().getImplementationOptions());
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Preconditions.checkNotNull(((StreamSpec) Preconditions.checkNotNull(map.get((UseCaseConfig) it2.next()))).getImplementationOptions());
        }
        key = CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES;
        long[] jArr = (long[]) cameraCharacteristicsCompat.get(key);
        if (jArr != null && jArr.length != 0) {
            HashSet hashSet = new HashSet();
            for (long j : jArr) {
                hashSet.add(Long.valueOf(j));
            }
            if (isValidCamera2InteropOverride(list, arrayList, hashSet)) {
                for (AttachedSurfaceInfo attachedSurfaceInfo : list) {
                    Config implementationOptions = attachedSurfaceInfo.getImplementationOptions();
                    Config updatedImplementationOptionsWithUseCaseStreamSpecOption = getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(implementationOptions, ((Long) implementationOptions.retrieveOption(Camera2ImplConfig.STREAM_USE_CASE_OPTION)).longValue());
                    if (updatedImplementationOptionsWithUseCaseStreamSpecOption != null) {
                        map2.put(attachedSurfaceInfo, attachedSurfaceInfo.toStreamSpec(updatedImplementationOptionsWithUseCaseStreamSpecOption));
                    }
                }
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    UseCaseConfig<?> useCaseConfig = (UseCaseConfig) it3.next();
                    StreamSpec streamSpec = map.get(useCaseConfig);
                    Config implementationOptions2 = streamSpec.getImplementationOptions();
                    Config updatedImplementationOptionsWithUseCaseStreamSpecOption2 = getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(implementationOptions2, ((Long) implementationOptions2.retrieveOption(Camera2ImplConfig.STREAM_USE_CASE_OPTION)).longValue());
                    if (updatedImplementationOptionsWithUseCaseStreamSpecOption2 != null) {
                        map.put(useCaseConfig, streamSpec.toBuilder().setImplementationOptions(updatedImplementationOptionsWithUseCaseStreamSpecOption2).build());
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static void populateStreamUseCaseStreamSpecOptionWithSupportedSurfaceConfigs(@NonNull Map<UseCaseConfig<?>, StreamSpec> map, @NonNull Map<AttachedSurfaceInfo, StreamSpec> map2, @NonNull Map<Integer, AttachedSurfaceInfo> map3, @NonNull Map<Integer, UseCaseConfig<?>> map4, @NonNull List<SurfaceConfig> list) {
        for (int i = 0; i < list.size(); i++) {
            long streamUseCase = list.get(i).getStreamUseCase();
            if (map3.containsKey(Integer.valueOf(i))) {
                AttachedSurfaceInfo attachedSurfaceInfo = map3.get(Integer.valueOf(i));
                Config updatedImplementationOptionsWithUseCaseStreamSpecOption = getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(attachedSurfaceInfo.getImplementationOptions(), streamUseCase);
                if (updatedImplementationOptionsWithUseCaseStreamSpecOption != null) {
                    map2.put(attachedSurfaceInfo, attachedSurfaceInfo.toStreamSpec(updatedImplementationOptionsWithUseCaseStreamSpecOption));
                }
            } else if (map4.containsKey(Integer.valueOf(i))) {
                UseCaseConfig<?> useCaseConfig = map4.get(Integer.valueOf(i));
                StreamSpec streamSpec = map.get(useCaseConfig);
                Config updatedImplementationOptionsWithUseCaseStreamSpecOption2 = getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(streamSpec.getImplementationOptions(), streamUseCase);
                if (updatedImplementationOptionsWithUseCaseStreamSpecOption2 != null) {
                    map.put(useCaseConfig, streamSpec.toBuilder().setImplementationOptions(updatedImplementationOptionsWithUseCaseStreamSpecOption2).build());
                }
            } else {
                throw new AssertionError("SurfaceConfig does not map to any use case");
            }
        }
    }

    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    public static void populateSurfaceToStreamUseCaseMapping(@NonNull Collection<SessionConfig> collection, @NonNull Collection<UseCaseConfig<?>> collection2, @NonNull Map<DeferrableSurface, Long> map) {
        ArrayList arrayList = new ArrayList(collection2);
        for (SessionConfig sessionConfig : collection) {
            Config implementationOptions = sessionConfig.getImplementationOptions();
            Config.Option<Long> option = STREAM_USE_CASE_STREAM_SPEC_OPTION;
            if (implementationOptions.containsOption(option) && sessionConfig.getSurfaces().size() != 1) {
                Logger.e(TAG, String.format("SessionConfig has stream use case but also contains %d surfaces, abort populateSurfaceToStreamUseCaseMapping().", Integer.valueOf(sessionConfig.getSurfaces().size())));
                return;
            }
            if (sessionConfig.getImplementationOptions().containsOption(option)) {
                int i = 0;
                for (SessionConfig sessionConfig2 : collection) {
                    if (((UseCaseConfig) arrayList.get(i)).getCaptureType() == UseCaseConfigFactory.CaptureType.METERING_REPEATING) {
                        Preconditions.checkState(!sessionConfig2.getSurfaces().isEmpty(), "MeteringRepeating should contain a surface");
                        map.put(sessionConfig2.getSurfaces().get(0), 1L);
                    } else {
                        Config implementationOptions2 = sessionConfig2.getImplementationOptions();
                        Config.Option<Long> option2 = STREAM_USE_CASE_STREAM_SPEC_OPTION;
                        if (implementationOptions2.containsOption(option2) && !sessionConfig2.getSurfaces().isEmpty()) {
                            map.put(sessionConfig2.getSurfaces().get(0), (Long) sessionConfig2.getImplementationOptions().retrieveOption(option2));
                        }
                    }
                    i++;
                }
                return;
            }
        }
    }

    public static boolean shouldUseStreamUseCase(@NonNull SupportedSurfaceCombination.FeatureSettings featureSettings) {
        if (featureSettings.getCameraMode() == 0 && featureSettings.getRequiredMaxBitDepth() == 8) {
            return true;
        }
        return false;
    }

    private static void throwInvalidCamera2InteropOverrideException() {
        throw new IllegalArgumentException("Either all use cases must have non-default stream use case assigned or none should have it");
    }
}
