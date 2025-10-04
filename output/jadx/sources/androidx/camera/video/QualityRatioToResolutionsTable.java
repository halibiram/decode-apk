package androidx.camera.video;

import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.impl.utils.AspectRatioUtil;
import androidx.camera.core.internal.utils.SizeUtil;
import com.google.auto.value.AutoValue;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class QualityRatioToResolutionsTable {
    private static final Map<Integer, Rational> sAspectRatioMap;
    private static final Map<Quality, Range<Integer>> sQualityRangeMap;
    private final Map<QualityRatio, List<Size>> mTable = new HashMap();

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class QualityRatio {
        public static QualityRatio of(@NonNull Quality quality, int i) {
            return new AutoValue_QualityRatioToResolutionsTable_QualityRatio(quality, i);
        }

        public abstract int getAspectRatio();

        @NonNull
        public abstract Quality getQuality();
    }

    static {
        HashMap hashMap = new HashMap();
        sQualityRangeMap = hashMap;
        hashMap.put(Quality.UHD, Range.create(2160, 4319));
        hashMap.put(Quality.FHD, Range.create(1080, 1439));
        hashMap.put(Quality.HD, Range.create(720, 1079));
        hashMap.put(Quality.SD, Range.create(241, 719));
        HashMap hashMap2 = new HashMap();
        sAspectRatioMap = hashMap2;
        hashMap2.put(0, AspectRatioUtil.ASPECT_RATIO_4_3);
        hashMap2.put(1, AspectRatioUtil.ASPECT_RATIO_16_9);
    }

    public QualityRatioToResolutionsTable(@NonNull List<Size> list, @NonNull Map<Quality, Size> map) {
        for (Quality quality : sQualityRangeMap.keySet()) {
            this.mTable.put(QualityRatio.of(quality, -1), new ArrayList());
            Iterator<Integer> it = sAspectRatioMap.keySet().iterator();
            while (it.hasNext()) {
                this.mTable.put(QualityRatio.of(quality, it.next().intValue()), new ArrayList());
            }
        }
        addProfileSizesToTable(map);
        addResolutionsToTable(list);
        sortQualityRatioRow(map);
    }

    private void addProfileSizesToTable(@NonNull Map<Quality, Size> map) {
        for (Map.Entry<Quality, Size> entry : map.entrySet()) {
            List<Size> qualityRatioRow = getQualityRatioRow(entry.getKey(), -1);
            Objects.requireNonNull(qualityRatioRow);
            qualityRatioRow.add(entry.getValue());
        }
    }

    private void addResolutionsToTable(@NonNull List<Size> list) {
        Integer findMappedAspectRatio;
        for (Size size : list) {
            Quality findMappedQuality = findMappedQuality(size);
            if (findMappedQuality != null && (findMappedAspectRatio = findMappedAspectRatio(size)) != null) {
                List<Size> qualityRatioRow = getQualityRatioRow(findMappedQuality, findMappedAspectRatio.intValue());
                Objects.requireNonNull(qualityRatioRow);
                qualityRatioRow.add(size);
            }
        }
    }

    @Nullable
    private static Integer findMappedAspectRatio(@NonNull Size size) {
        for (Map.Entry<Integer, Rational> entry : sAspectRatioMap.entrySet()) {
            if (AspectRatioUtil.hasMatchingAspectRatio(size, entry.getValue(), SizeUtil.RESOLUTION_QVGA)) {
                return entry.getKey();
            }
        }
        return null;
    }

    @Nullable
    private static Quality findMappedQuality(@NonNull Size size) {
        for (Map.Entry<Quality, Range<Integer>> entry : sQualityRangeMap.entrySet()) {
            if (entry.getValue().contains((Range<Integer>) Integer.valueOf(size.getHeight()))) {
                return entry.getKey();
            }
        }
        return null;
    }

    @Nullable
    private List<Size> getQualityRatioRow(@NonNull Quality quality, int i) {
        return this.mTable.get(QualityRatio.of(quality, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$sortQualityRatioRow$0(int i, Size size, Size size2) {
        return Math.abs(SizeUtil.getArea(size) - i) - Math.abs(SizeUtil.getArea(size2) - i);
    }

    private void sortQualityRatioRow(@NonNull Map<Quality, Size> map) {
        for (Map.Entry<QualityRatio, List<Size>> entry : this.mTable.entrySet()) {
            Size size = map.get(entry.getKey().getQuality());
            if (size != null) {
                final int area = SizeUtil.getArea(size);
                Collections.sort(entry.getValue(), new Comparator() { // from class: androidx.camera.video.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int lambda$sortQualityRatioRow$0;
                        lambda$sortQualityRatioRow$0 = QualityRatioToResolutionsTable.lambda$sortQualityRatioRow$0(area, (Size) obj, (Size) obj2);
                        return lambda$sortQualityRatioRow$0;
                    }
                });
            }
        }
    }

    @NonNull
    public List<Size> getResolutions(@NonNull Quality quality, int i) {
        ArrayList arrayList;
        List<Size> qualityRatioRow = getQualityRatioRow(quality, i);
        if (qualityRatioRow != null) {
            arrayList = new ArrayList(qualityRatioRow);
        } else {
            arrayList = new ArrayList(0);
        }
        return arrayList;
    }
}
