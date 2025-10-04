package androidx.camera.core.streamsharing;

import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Pair;
import android.util.Rational;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.AspectRatioUtil;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.internal.SupportedOutputSizesSorter;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class ResolutionsMerger {
    private static final double SAME_AREA_WIDTH_HEIGHT_RATIO = Math.sqrt(2.3703703703703702d);
    private static final String TAG = "ResolutionsMerger";

    @NonNull
    private final CameraInfoInternal mCameraInfo;

    @NonNull
    private final Map<UseCaseConfig<?>, List<Size>> mChildSizesCache;

    @NonNull
    private final Set<UseCaseConfig<?>> mChildrenConfigs;

    @NonNull
    private final Rational mFallbackAspectRatio;

    @NonNull
    private final Rational mSensorAspectRatio;

    @NonNull
    private final Size mSensorSize;

    @NonNull
    private final SupportedOutputSizesSorter mSizeSorter;

    /* loaded from: classes.dex */
    public static class CompareAspectRatioByOverlappingAreaToReference implements Comparator<Rational> {

        @NonNull
        private final Rational mReferenceAspectRatio;
        private final boolean mReverse;

        public CompareAspectRatioByOverlappingAreaToReference(@NonNull Rational rational, boolean z) {
            this.mReferenceAspectRatio = rational;
            this.mReverse = z;
        }

        @Override // java.util.Comparator
        public int compare(@NonNull Rational rational, @NonNull Rational rational2) {
            float computeAreaOverlapping = ResolutionsMerger.computeAreaOverlapping(rational, this.mReferenceAspectRatio);
            float computeAreaOverlapping2 = ResolutionsMerger.computeAreaOverlapping(rational2, this.mReferenceAspectRatio);
            if (this.mReverse) {
                return Float.compare(computeAreaOverlapping2, computeAreaOverlapping);
            }
            return Float.compare(computeAreaOverlapping, computeAreaOverlapping2);
        }
    }

    public ResolutionsMerger(@NonNull CameraInternal cameraInternal, @NonNull Set<UseCaseConfig<?>> set) {
        this(TransformUtils.rectToSize(cameraInternal.getCameraControlInternal().getSensorRect()), cameraInternal.getCameraInfoInternal(), set);
    }

    private boolean areCroppingInDifferentDirection(float f, float f2, float f3) {
        if (f == f2 || f2 == f3) {
            return false;
        }
        return f > f2 ? f2 < f3 : f2 > f3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float computeAreaOverlapping(@NonNull Rational rational, @NonNull Rational rational2) {
        float floatValue = rational.floatValue();
        float floatValue2 = rational2.floatValue();
        if (floatValue > floatValue2) {
            return floatValue2 / floatValue;
        }
        return floatValue / floatValue2;
    }

    @NonNull
    private List<Size> filterOutChildSizesCausingDoubleCropping(@NonNull Rational rational, @NonNull List<Size> list) {
        ArrayList arrayList = new ArrayList();
        for (Size size : list) {
            if (!isDoubleCropping(rational, size)) {
                arrayList.add(size);
            }
        }
        return arrayList;
    }

    private static List<Size> filterOutChildSizesThatWillNeverBeSelected(@NonNull List<Size> list) {
        Rational rational;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (Size size : list) {
            Iterator it = hashMap.keySet().iterator();
            while (true) {
                if (it.hasNext()) {
                    rational = (Rational) it.next();
                    if (AspectRatioUtil.hasMatchingAspectRatio(size, rational)) {
                        break;
                    }
                } else {
                    rational = null;
                    break;
                }
            }
            if (rational != null) {
                Size size2 = (Size) hashMap.get(rational);
                Objects.requireNonNull(size2);
                if (size.getHeight() <= size2.getHeight()) {
                    if (size.getWidth() <= size2.getWidth()) {
                        if (size.getWidth() == size2.getWidth() && size.getHeight() == size2.getHeight()) {
                        }
                    }
                }
            } else {
                rational = toRational(size);
            }
            arrayList.add(size);
            hashMap.put(rational, size);
        }
        return arrayList;
    }

    @NonNull
    @VisibleForTesting
    public static List<Size> filterOutParentSizeThatIsTooSmall(@NonNull Collection<Size> collection, @NonNull List<Size> list) {
        if (!collection.isEmpty() && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (Size size : list) {
                if (isAnyChildSizeCanBeCroppedOutWithoutUpscalingParent(collection, size)) {
                    arrayList.add(size);
                }
            }
            return arrayList;
        }
        return new ArrayList();
    }

    @NonNull
    @VisibleForTesting
    public static List<Size> filterResolutionsByAspectRatio(@NonNull Rational rational, @NonNull List<Size> list) {
        ArrayList arrayList = new ArrayList();
        for (Size size : list) {
            if (AspectRatioUtil.hasMatchingAspectRatio(size, rational)) {
                arrayList.add(size);
            }
        }
        return arrayList;
    }

    @NonNull
    private static Rational findCloserAspectRatio(@NonNull Size size) {
        if (size.getWidth() / size.getHeight() > SAME_AREA_WIDTH_HEIGHT_RATIO) {
            return AspectRatioUtil.ASPECT_RATIO_16_9;
        }
        return AspectRatioUtil.ASPECT_RATIO_4_3;
    }

    @NonNull
    private List<Size> getCameraSupportedHighResolutions() {
        return this.mCameraInfo.getSupportedHighResolutions(34);
    }

    @NonNull
    private List<Size> getCameraSupportedResolutions() {
        return this.mCameraInfo.getSupportedResolutions(34);
    }

    @NonNull
    private static Rect getCenterCroppedRectangle(@NonNull Rational rational, @NonNull Size size) {
        RectF rectF;
        RectF rectF2;
        int width = size.getWidth();
        int height = size.getHeight();
        Rational rational2 = toRational(size);
        if (rational.floatValue() == rational2.floatValue()) {
            rectF2 = new RectF(0.0f, 0.0f, width, height);
        } else {
            if (rational.floatValue() > rational2.floatValue()) {
                float f = width;
                float floatValue = f / rational.floatValue();
                float f2 = (height - floatValue) / 2.0f;
                rectF = new RectF(0.0f, f2, f, floatValue + f2);
            } else {
                float f3 = height;
                float floatValue2 = rational.floatValue() * f3;
                float f4 = (width - floatValue2) / 2.0f;
                rectF = new RectF(f4, 0.0f, floatValue2 + f4, f3);
            }
            rectF2 = rectF;
        }
        Rect rect = new Rect();
        rectF2.round(rect);
        return rect;
    }

    @NonNull
    private Set<Size> getChildrenRequiredResolutions() {
        HashSet hashSet = new HashSet();
        Iterator<UseCaseConfig<?>> it = this.mChildrenConfigs.iterator();
        while (it.hasNext()) {
            hashSet.addAll(getSortedChildSizes(it.next()));
        }
        return hashSet;
    }

    @NonNull
    @VisibleForTesting
    public static Rect getCropRectOfReferenceAspectRatio(@NonNull Size size, @NonNull Size size2) {
        return getCenterCroppedRectangle(toRational(size2), size);
    }

    @NonNull
    private static Rational getFallbackAspectRatio(@NonNull Rational rational) {
        Rational rational2 = AspectRatioUtil.ASPECT_RATIO_4_3;
        if (rational.equals(rational2)) {
            return AspectRatioUtil.ASPECT_RATIO_16_9;
        }
        if (rational.equals(AspectRatioUtil.ASPECT_RATIO_16_9)) {
            return rational2;
        }
        throw new IllegalArgumentException("Invalid sensor aspect-ratio: " + rational);
    }

    @NonNull
    @VisibleForTesting
    public static List<Size> getParentSizesThatAreTooLarge(@NonNull Collection<Size> collection, @NonNull List<Size> list) {
        if (!collection.isEmpty() && !list.isEmpty()) {
            List<Size> removeDuplicates = removeDuplicates(list);
            ArrayList arrayList = new ArrayList();
            for (Size size : removeDuplicates) {
                if (isAllChildSizesCanBeCroppedOutWithoutUpscalingParent(collection, size)) {
                    arrayList.add(size);
                }
            }
            if (!arrayList.isEmpty()) {
                arrayList.remove(arrayList.size() - 1);
            }
            return arrayList;
        }
        return new ArrayList();
    }

    @NonNull
    private Pair<Rect, Size> getPreferredChildSizePairInternal(@NonNull Rect rect, @NonNull UseCaseConfig<?> useCaseConfig, boolean z) {
        Size preferredChildSize;
        if (z) {
            preferredChildSize = getPreferredChildSizeForViewport(TransformUtils.rectToSize(rect), useCaseConfig);
        } else {
            Size rectToSize = TransformUtils.rectToSize(rect);
            preferredChildSize = getPreferredChildSize(rectToSize, useCaseConfig);
            rect = getCropRectOfReferenceAspectRatio(rectToSize, preferredChildSize);
        }
        return new Pair<>(rect, preferredChildSize);
    }

    @NonNull
    private static Rational getSensorAspectRatio(@NonNull Size size) {
        Rational findCloserAspectRatio = findCloserAspectRatio(size);
        Logger.d(TAG, "The closer aspect ratio to the sensor size (" + size + ") is " + findCloserAspectRatio + ".");
        return findCloserAspectRatio;
    }

    @NonNull
    private List<Size> getSortedChildSizes(@NonNull UseCaseConfig<?> useCaseConfig) {
        if (this.mChildrenConfigs.contains(useCaseConfig)) {
            if (this.mChildSizesCache.containsKey(useCaseConfig)) {
                List<Size> list = this.mChildSizesCache.get(useCaseConfig);
                Objects.requireNonNull(list);
                return list;
            }
            List<Size> filterOutChildSizesThatWillNeverBeSelected = filterOutChildSizesThatWillNeverBeSelected(this.mSizeSorter.getSortedSupportedOutputSizes(useCaseConfig));
            this.mChildSizesCache.put(useCaseConfig, filterOutChildSizesThatWillNeverBeSelected);
            return filterOutChildSizesThatWillNeverBeSelected;
        }
        throw new IllegalArgumentException("Invalid child config: " + useCaseConfig);
    }

    @NonNull
    private static List<Size> getSupportedPrivResolutions(@NonNull List<Pair<Integer, Size[]>> list) {
        for (Pair<Integer, Size[]> pair : list) {
            if (((Integer) pair.first).equals(34)) {
                return Arrays.asList((Size[]) pair.second);
            }
        }
        return new ArrayList();
    }

    @NonNull
    private Map<Rational, List<Size>> groupSizesByAspectRatio(@NonNull List<Size> list) {
        List list2;
        HashMap hashMap = new HashMap();
        Rational rational = AspectRatioUtil.ASPECT_RATIO_4_3;
        hashMap.put(rational, new ArrayList());
        Rational rational2 = AspectRatioUtil.ASPECT_RATIO_16_9;
        hashMap.put(rational2, new ArrayList());
        ArrayList arrayList = new ArrayList();
        arrayList.add(rational);
        arrayList.add(rational2);
        for (Size size : list) {
            if (size.getHeight() > 0) {
                Iterator it = arrayList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        Rational rational3 = (Rational) it.next();
                        if (AspectRatioUtil.hasMatchingAspectRatio(size, rational3)) {
                            list2 = (List) hashMap.get(rational3);
                            break;
                        }
                    } else {
                        list2 = null;
                        break;
                    }
                }
                if (list2 == null) {
                    list2 = new ArrayList();
                    Rational rational4 = toRational(size);
                    arrayList.add(rational4);
                    hashMap.put(rational4, list2);
                }
                list2.add(size);
            }
        }
        return hashMap;
    }

    @VisibleForTesting
    public static boolean hasUpscaling(@NonNull Size size, @NonNull Size size2) {
        if (size.getHeight() <= size2.getHeight() && size.getWidth() <= size2.getWidth()) {
            return false;
        }
        return true;
    }

    private static boolean isAllChildSizesCanBeCroppedOutWithoutUpscalingParent(@NonNull Collection<Size> collection, @NonNull Size size) {
        Iterator<Size> it = collection.iterator();
        while (it.hasNext()) {
            if (hasUpscaling(it.next(), size)) {
                return false;
            }
        }
        return true;
    }

    private static boolean isAnyChildSizeCanBeCroppedOutWithoutUpscalingParent(@NonNull Collection<Size> collection, @NonNull Size size) {
        Iterator<Size> it = collection.iterator();
        while (it.hasNext()) {
            if (!hasUpscaling(it.next(), size)) {
                return true;
            }
        }
        return false;
    }

    private boolean isDoubleCropping(@NonNull Rational rational, @NonNull Size size) {
        if (this.mSensorAspectRatio.equals(rational) || AspectRatioUtil.hasMatchingAspectRatio(size, rational)) {
            return false;
        }
        return areCroppingInDifferentDirection(this.mSensorAspectRatio.floatValue(), rational.floatValue(), toRationalWithMod16Considered(size).floatValue());
    }

    private boolean needToAddSensorResolutions() {
        Iterator<Size> it = getChildrenRequiredResolutions().iterator();
        while (it.hasNext()) {
            if (!AspectRatioUtil.hasMatchingAspectRatio(it.next(), this.mFallbackAspectRatio)) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    private static List<Size> removeDuplicates(@NonNull List<Size> list) {
        if (list.isEmpty()) {
            return list;
        }
        return new ArrayList(new LinkedHashSet(list));
    }

    @NonNull
    @VisibleForTesting
    public static Rect reverseRect(@NonNull Rect rect) {
        return new Rect(rect.top, rect.left, rect.bottom, rect.right);
    }

    @NonNull
    private List<Size> selectOtherAspectRatioParentResolutionsWithFovPriority(@NonNull List<Size> list, boolean z) {
        Map<Rational, List<Size>> groupSizesByAspectRatio = groupSizesByAspectRatio(list);
        ArrayList arrayList = new ArrayList(groupSizesByAspectRatio.keySet());
        sortByFov(arrayList);
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Rational rational = (Rational) it.next();
            if (!rational.equals(AspectRatioUtil.ASPECT_RATIO_16_9) && !rational.equals(AspectRatioUtil.ASPECT_RATIO_4_3)) {
                List<Size> list2 = groupSizesByAspectRatio.get(rational);
                Objects.requireNonNull(list2);
                arrayList2.addAll(selectParentResolutionsByAspectRatio(rational, list2, z));
            }
        }
        return arrayList2;
    }

    @NonNull
    private List<Size> selectParentResolutions(@NonNull List<Size> list) {
        ArrayList arrayList = new ArrayList();
        if (needToAddSensorResolutions()) {
            arrayList.addAll(selectParentResolutionsByAspectRatio(this.mSensorAspectRatio, list, false));
        }
        arrayList.addAll(selectParentResolutionsByAspectRatio(this.mFallbackAspectRatio, list, false));
        arrayList.addAll(selectOtherAspectRatioParentResolutionsWithFovPriority(list, false));
        if (arrayList.isEmpty()) {
            Logger.w(TAG, "Failed to find a parent resolution that does not result in double-cropping, this might due to camera not supporting 4:3 and 16:9resolutions or a strict ResolutionSelector settings. Starting resolution selection process with resolutions that might have a smaller FOV.");
            arrayList.addAll(selectOtherAspectRatioParentResolutionsWithFovPriority(list, true));
        }
        Logger.d(TAG, "Parent resolutions: " + arrayList);
        return arrayList;
    }

    private List<Size> selectParentResolutionsByAspectRatio(@NonNull Rational rational, @NonNull List<Size> list, boolean z) {
        List<Size> filterResolutionsByAspectRatio = filterResolutionsByAspectRatio(rational, list);
        sortInDescendingOrder(filterResolutionsByAspectRatio);
        HashSet hashSet = new HashSet(filterResolutionsByAspectRatio);
        Iterator<UseCaseConfig<?>> it = this.mChildrenConfigs.iterator();
        while (it.hasNext()) {
            List<Size> sortedChildSizes = getSortedChildSizes(it.next());
            if (!z) {
                sortedChildSizes = filterOutChildSizesCausingDoubleCropping(rational, sortedChildSizes);
            }
            if (sortedChildSizes.isEmpty()) {
                return new ArrayList();
            }
            filterResolutionsByAspectRatio = filterOutParentSizeThatIsTooSmall(sortedChildSizes, filterResolutionsByAspectRatio);
            hashSet.retainAll(getParentSizesThatAreTooLarge(sortedChildSizes, filterResolutionsByAspectRatio));
        }
        ArrayList arrayList = new ArrayList();
        for (Size size : filterResolutionsByAspectRatio) {
            if (!hashSet.contains(size)) {
                arrayList.add(size);
            }
        }
        return arrayList;
    }

    private boolean shouldIncludeHighResolutions() {
        boolean z;
        ResolutionSelector resolutionSelector;
        Iterator<UseCaseConfig<?>> it = this.mChildrenConfigs.iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                break;
            }
            UseCaseConfig<?> next = it.next();
            if (!next.isHighResolutionDisabled(false) && (next instanceof ImageOutputConfig) && (resolutionSelector = ((ImageOutputConfig) next).getResolutionSelector(null)) != null) {
                z = true;
                if (resolutionSelector.getAllowedResolutionMode() == 1) {
                    break;
                }
            }
        }
        return z;
    }

    private void sortByFov(@NonNull List<Rational> list) {
        Collections.sort(list, new CompareAspectRatioByOverlappingAreaToReference(toRational(this.mSensorSize), true));
    }

    @VisibleForTesting
    public static void sortInDescendingOrder(@NonNull List<Size> list) {
        Collections.sort(list, new CompareSizesByArea(true));
    }

    @NonNull
    private static Rational toRational(@NonNull Size size) {
        return new Rational(size.getWidth(), size.getHeight());
    }

    @NonNull
    private static Rational toRationalWithMod16Considered(@NonNull Size size) {
        Rational rational = AspectRatioUtil.ASPECT_RATIO_4_3;
        if (AspectRatioUtil.hasMatchingAspectRatio(size, rational)) {
            return rational;
        }
        Rational rational2 = AspectRatioUtil.ASPECT_RATIO_16_9;
        if (AspectRatioUtil.hasMatchingAspectRatio(size, rational2)) {
            return rational2;
        }
        return toRational(size);
    }

    @NonNull
    public List<Size> getMergedResolutions(@NonNull MutableConfig mutableConfig) {
        List<Size> cameraSupportedResolutions = getCameraSupportedResolutions();
        if (shouldIncludeHighResolutions()) {
            ArrayList arrayList = new ArrayList(cameraSupportedResolutions);
            arrayList.addAll(getCameraSupportedHighResolutions());
            cameraSupportedResolutions = arrayList;
        }
        List list = (List) mutableConfig.retrieveOption(ImageOutputConfig.OPTION_SUPPORTED_RESOLUTIONS, null);
        if (list != null) {
            cameraSupportedResolutions = getSupportedPrivResolutions(list);
        }
        return selectParentResolutions(cameraSupportedResolutions);
    }

    @NonNull
    @VisibleForTesting
    public Size getPreferredChildSize(@NonNull Size size, @NonNull UseCaseConfig<?> useCaseConfig) {
        List<Size> sortedChildSizes = getSortedChildSizes(useCaseConfig);
        for (Size size2 : sortedChildSizes) {
            if (!isDoubleCropping(size, size2) && !hasUpscaling(size2, size)) {
                return size2;
            }
        }
        for (Size size3 : sortedChildSizes) {
            if (!hasUpscaling(size3, size)) {
                return size3;
            }
        }
        return size;
    }

    @NonNull
    @VisibleForTesting
    public Size getPreferredChildSizeForViewport(@NonNull Size size, @NonNull UseCaseConfig<?> useCaseConfig) {
        Iterator<Size> it = getSortedChildSizes(useCaseConfig).iterator();
        while (it.hasNext()) {
            Size rectToSize = TransformUtils.rectToSize(getCropRectOfReferenceAspectRatio(it.next(), size));
            if (!hasUpscaling(rectToSize, size)) {
                return rectToSize;
            }
        }
        return size;
    }

    @NonNull
    public Pair<Rect, Size> getPreferredChildSizePair(@NonNull UseCaseConfig<?> useCaseConfig, @NonNull Rect rect, int i, boolean z) {
        boolean z2;
        if (TransformUtils.is90or270(i)) {
            rect = reverseRect(rect);
            z2 = true;
        } else {
            z2 = false;
        }
        Pair<Rect, Size> preferredChildSizePairInternal = getPreferredChildSizePairInternal(rect, useCaseConfig, z);
        Rect rect2 = (Rect) preferredChildSizePairInternal.first;
        Size size = (Size) preferredChildSizePairInternal.second;
        if (z2) {
            size = TransformUtils.reverseSize(size);
            rect2 = reverseRect(rect2);
        }
        return new Pair<>(rect2, size);
    }

    private ResolutionsMerger(@NonNull Size size, @NonNull CameraInfoInternal cameraInfoInternal, @NonNull Set<UseCaseConfig<?>> set) {
        this(size, cameraInfoInternal, set, new SupportedOutputSizesSorter(cameraInfoInternal, size));
    }

    @VisibleForTesting
    public ResolutionsMerger(@NonNull Size size, @NonNull CameraInfoInternal cameraInfoInternal, @NonNull Set<UseCaseConfig<?>> set, @NonNull SupportedOutputSizesSorter supportedOutputSizesSorter) {
        this.mChildSizesCache = new HashMap();
        this.mSensorSize = size;
        Rational sensorAspectRatio = getSensorAspectRatio(size);
        this.mSensorAspectRatio = sensorAspectRatio;
        this.mFallbackAspectRatio = getFallbackAspectRatio(sensorAspectRatio);
        this.mCameraInfo = cameraInfoInternal;
        this.mChildrenConfigs = set;
        this.mSizeSorter = supportedOutputSizesSorter;
    }

    private boolean isDoubleCropping(@NonNull Size size, @NonNull Size size2) {
        return isDoubleCropping(toRationalWithMod16Considered(size), size2);
    }
}
