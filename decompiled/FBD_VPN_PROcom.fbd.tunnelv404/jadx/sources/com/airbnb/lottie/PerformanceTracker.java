package com.airbnb.lottie;

import androidx.collection.ArraySet;
import androidx.core.util.Pair;
import com.airbnb.lottie.utils.MeanCalculator;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class PerformanceTracker {
    private boolean enabled = false;
    private final Set<FrameListener> frameListeners = new ArraySet();
    private final Map<String, MeanCalculator> layerRenderTimes = new HashMap();
    private final Comparator<Pair<String, Float>> floatComparator = new Comparator<Pair<String, Float>>() { // from class: com.airbnb.lottie.PerformanceTracker.1
        @Override // java.util.Comparator
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float floatValue = pair.second.floatValue();
            float floatValue2 = pair2.second.floatValue();
            if (floatValue2 > floatValue) {
                return 1;
            }
            return floatValue > floatValue2 ? -1 : 0;
        }
    };

    /* loaded from: classes.dex */
    public interface FrameListener {
        void onFrameRendered(float f);
    }

    public void addFrameListener(FrameListener frameListener) {
        this.frameListeners.add(frameListener);
    }

    public void clearRenderTimes() {
        this.layerRenderTimes.clear();
    }

    public List<Pair<String, Float>> getSortedRenderTimes() {
        if (!this.enabled) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(this.layerRenderTimes.size());
        for (Map.Entry<String, MeanCalculator> entry : this.layerRenderTimes.entrySet()) {
            arrayList.add(new Pair(entry.getKey(), Float.valueOf(entry.getValue().getMean())));
        }
        Collections.sort(arrayList, this.floatComparator);
        return arrayList;
    }

    public void logRenderTimes() {
        if (!this.enabled) {
            return;
        }
        List<Pair<String, Float>> sortedRenderTimes = getSortedRenderTimes();
        new ObfuscatedString(new long[]{-5009084811982603941L, 8523574855296586154L}).toString();
        new ObfuscatedString(new long[]{-4930869799339810877L, -3155219301452256579L, 3363174605331042343L}).toString();
        for (int i = 0; i < sortedRenderTimes.size(); i++) {
            Pair<String, Float> pair = sortedRenderTimes.get(i);
            new ObfuscatedString(new long[]{9099958500666425646L, 7038664046923267138L}).toString();
            String.format(new ObfuscatedString(new long[]{-6249579019449985817L, -6798112674057365880L, 5351827744501093299L}).toString(), pair.first, pair.second);
        }
    }

    public void recordRenderTime(String str, float f) {
        if (!this.enabled) {
            return;
        }
        MeanCalculator meanCalculator = this.layerRenderTimes.get(str);
        if (meanCalculator == null) {
            meanCalculator = new MeanCalculator();
            this.layerRenderTimes.put(str, meanCalculator);
        }
        meanCalculator.add(f);
        if (str.equals(new ObfuscatedString(new long[]{4686599313873143068L, 8577521837913466427L, 6617303596229906191L}).toString())) {
            Iterator<FrameListener> it = this.frameListeners.iterator();
            while (it.hasNext()) {
                it.next().onFrameRendered(f);
            }
        }
    }

    public void removeFrameListener(FrameListener frameListener) {
        this.frameListeners.remove(frameListener);
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }
}
