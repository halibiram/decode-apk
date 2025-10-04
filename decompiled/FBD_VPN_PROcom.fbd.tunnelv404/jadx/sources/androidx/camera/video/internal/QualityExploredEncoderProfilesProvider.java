package androidx.camera.video.internal;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.video.CapabilitiesByQuality;
import androidx.camera.video.Quality;
import androidx.camera.video.internal.config.VideoConfigUtil;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import androidx.camera.video.internal.utils.EncoderProfilesUtil;
import androidx.core.util.Preconditions;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class QualityExploredEncoderProfilesProvider implements EncoderProfilesProvider {
    private final EncoderProfilesProvider mBaseEncoderProfilesProvider;
    private final Set<Size> mCameraSupportedResolutions;
    private final Set<DynamicRange> mTargetDynamicRanges;
    private final Set<Quality> mTargetQualities;
    private final Function<VideoEncoderConfig, VideoEncoderInfo> mVideoEncoderInfoFinder;
    private final Map<Integer, EncoderProfilesProxy> mEncoderProfilesCache = new HashMap();
    private final Map<DynamicRange, CapabilitiesByQuality> mDynamicRangeToCapabilitiesMap = new HashMap();

    public QualityExploredEncoderProfilesProvider(@NonNull EncoderProfilesProvider encoderProfilesProvider, @NonNull Collection<Quality> collection, @NonNull Collection<DynamicRange> collection2, @NonNull Collection<Size> collection3, @NonNull Function<VideoEncoderConfig, VideoEncoderInfo> function) {
        checkFullySpecifiedOrThrow(collection2);
        this.mBaseEncoderProfilesProvider = encoderProfilesProvider;
        this.mTargetQualities = new HashSet(collection);
        this.mTargetDynamicRanges = new HashSet(collection2);
        this.mCameraSupportedResolutions = new HashSet(collection3);
        this.mVideoEncoderInfoFinder = function;
    }

    private static void checkFullySpecifiedOrThrow(@NonNull Collection<DynamicRange> collection) {
        for (DynamicRange dynamicRange : collection) {
            if (!dynamicRange.isFullySpecified()) {
                throw new IllegalArgumentException("Contains non-fully specified DynamicRange: " + dynamicRange);
            }
        }
    }

    @Nullable
    private EncoderProfilesProxy exploreProfiles(@NonNull Quality.ConstantQuality constantQuality) {
        VideoValidatedEncoderProfilesProxy findNearestHigherSupportedEncoderProfilesFor;
        Preconditions.checkArgument(this.mTargetQualities.contains(constantQuality));
        EncoderProfilesProxy all = this.mBaseEncoderProfilesProvider.getAll(constantQuality.getValue());
        for (Size size : constantQuality.getTypicalSizes()) {
            if (this.mCameraSupportedResolutions.contains(size)) {
                TreeMap treeMap = new TreeMap(new CompareSizesByArea());
                ArrayList arrayList = new ArrayList();
                for (DynamicRange dynamicRange : this.mTargetDynamicRanges) {
                    if (!hasMatchedVideoProfileForDynamicRange(all, dynamicRange) && (findNearestHigherSupportedEncoderProfilesFor = getCapabilitiesByQualityFor(dynamicRange).findNearestHigherSupportedEncoderProfilesFor(size)) != null) {
                        EncoderProfilesProxy.VideoProfileProxy defaultVideoProfile = findNearestHigherSupportedEncoderProfilesFor.getDefaultVideoProfile();
                        VideoEncoderInfo apply = this.mVideoEncoderInfoFinder.apply(VideoConfigUtil.toVideoEncoderConfig(defaultVideoProfile));
                        if (apply != null && apply.isSizeSupportedAllowSwapping(size.getWidth(), size.getHeight())) {
                            treeMap.put(new Size(defaultVideoProfile.getWidth(), defaultVideoProfile.getHeight()), findNearestHigherSupportedEncoderProfilesFor);
                            arrayList.add(EncoderProfilesUtil.deriveVideoProfile(defaultVideoProfile, size, apply.getSupportedBitrateRange()));
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    EncoderProfilesProxy encoderProfilesProxy = (EncoderProfilesProxy) SizeUtil.findNearestHigherFor(size, treeMap);
                    Objects.requireNonNull(encoderProfilesProxy);
                    return EncoderProfilesProxy.ImmutableEncoderProfilesProxy.create(encoderProfilesProxy.getDefaultDurationSeconds(), encoderProfilesProxy.getRecommendedFileFormat(), encoderProfilesProxy.getAudioProfiles(), arrayList);
                }
            }
        }
        return null;
    }

    @Nullable
    private Quality.ConstantQuality findQualityInTargetQualities(int i) {
        Iterator<Quality> it = this.mTargetQualities.iterator();
        while (it.hasNext()) {
            Quality.ConstantQuality constantQuality = (Quality.ConstantQuality) it.next();
            if (constantQuality.getValue() == i) {
                return constantQuality;
            }
        }
        return null;
    }

    @NonNull
    private CapabilitiesByQuality getCapabilitiesByQualityFor(@NonNull DynamicRange dynamicRange) {
        if (this.mDynamicRangeToCapabilitiesMap.containsKey(dynamicRange)) {
            CapabilitiesByQuality capabilitiesByQuality = this.mDynamicRangeToCapabilitiesMap.get(dynamicRange);
            Objects.requireNonNull(capabilitiesByQuality);
            return capabilitiesByQuality;
        }
        CapabilitiesByQuality capabilitiesByQuality2 = new CapabilitiesByQuality(new DynamicRangeMatchedEncoderProfilesProvider(this.mBaseEncoderProfilesProvider, dynamicRange));
        this.mDynamicRangeToCapabilitiesMap.put(dynamicRange, capabilitiesByQuality2);
        return capabilitiesByQuality2;
    }

    @Nullable
    private EncoderProfilesProxy getProfilesInternal(int i) {
        if (this.mEncoderProfilesCache.containsKey(Integer.valueOf(i))) {
            return this.mEncoderProfilesCache.get(Integer.valueOf(i));
        }
        EncoderProfilesProxy all = this.mBaseEncoderProfilesProvider.getAll(i);
        Quality.ConstantQuality findQualityInTargetQualities = findQualityInTargetQualities(i);
        if (findQualityInTargetQualities != null && !hasMatchedVideoProfileForAllTargetDynamicRanges(all)) {
            all = mergeEncoderProfiles(all, exploreProfiles(findQualityInTargetQualities));
        }
        this.mEncoderProfilesCache.put(Integer.valueOf(i), all);
        return all;
    }

    private boolean hasMatchedVideoProfileForAllTargetDynamicRanges(@Nullable EncoderProfilesProxy encoderProfilesProxy) {
        if (encoderProfilesProxy == null) {
            return false;
        }
        Iterator<DynamicRange> it = this.mTargetDynamicRanges.iterator();
        while (it.hasNext()) {
            if (!hasMatchedVideoProfileForDynamicRange(encoderProfilesProxy, it.next())) {
                return false;
            }
        }
        return true;
    }

    private static boolean hasMatchedVideoProfileForDynamicRange(@Nullable EncoderProfilesProxy encoderProfilesProxy, @NonNull DynamicRange dynamicRange) {
        if (encoderProfilesProxy == null) {
            return false;
        }
        Iterator<EncoderProfilesProxy.VideoProfileProxy> it = encoderProfilesProxy.getVideoProfiles().iterator();
        while (it.hasNext()) {
            if (DynamicRangeUtil.isHdrSettingsMatched(it.next(), dynamicRange)) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    private static EncoderProfilesProxy mergeEncoderProfiles(@Nullable EncoderProfilesProxy encoderProfilesProxy, @Nullable EncoderProfilesProxy encoderProfilesProxy2) {
        int defaultDurationSeconds;
        int recommendedFileFormat;
        List<EncoderProfilesProxy.AudioProfileProxy> audioProfiles;
        if (encoderProfilesProxy == null && encoderProfilesProxy2 == null) {
            return null;
        }
        if (encoderProfilesProxy != null) {
            defaultDurationSeconds = encoderProfilesProxy.getDefaultDurationSeconds();
        } else {
            defaultDurationSeconds = encoderProfilesProxy2.getDefaultDurationSeconds();
        }
        if (encoderProfilesProxy != null) {
            recommendedFileFormat = encoderProfilesProxy.getRecommendedFileFormat();
        } else {
            recommendedFileFormat = encoderProfilesProxy2.getRecommendedFileFormat();
        }
        if (encoderProfilesProxy != null) {
            audioProfiles = encoderProfilesProxy.getAudioProfiles();
        } else {
            audioProfiles = encoderProfilesProxy2.getAudioProfiles();
        }
        ArrayList arrayList = new ArrayList();
        if (encoderProfilesProxy != null) {
            arrayList.addAll(encoderProfilesProxy.getVideoProfiles());
        }
        if (encoderProfilesProxy2 != null) {
            arrayList.addAll(encoderProfilesProxy2.getVideoProfiles());
        }
        return EncoderProfilesProxy.ImmutableEncoderProfilesProxy.create(defaultDurationSeconds, recommendedFileFormat, audioProfiles, arrayList);
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    @Nullable
    public EncoderProfilesProxy getAll(int i) {
        return getProfilesInternal(i);
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public boolean hasProfile(int i) {
        if (getProfilesInternal(i) != null) {
            return true;
        }
        return false;
    }
}
