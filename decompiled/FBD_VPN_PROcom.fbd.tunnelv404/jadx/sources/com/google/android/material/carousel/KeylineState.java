package com.google.android.material.carousel;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.animation.AnimationUtils;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class KeylineState {
    private final int firstFocalKeylineIndex;
    private final float itemSize;
    private final List<Keyline> keylines;
    private final int lastFocalKeylineIndex;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private static final int NO_INDEX = -1;
        private static final float UNKNOWN_LOC = Float.MIN_VALUE;
        private final float availableSpace;
        private final float itemSize;
        private Keyline tmpFirstFocalKeyline;
        private Keyline tmpLastFocalKeyline;
        private final List<Keyline> tmpKeylines = new ArrayList();
        private int firstFocalKeylineIndex = -1;
        private int lastFocalKeylineIndex = -1;
        private float lastKeylineMaskedSize = 0.0f;
        private int latestAnchorKeylineIndex = -1;

        public Builder(float f, float f2) {
            this.itemSize = f;
            this.availableSpace = f2;
        }

        private static float calculateKeylineLocationForItemPosition(float f, float f2, int i, int i2) {
            return (i2 * f2) + (f - (i * f2));
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder addAnchorKeyline(float f, @FloatRange(from = 0.0d, to = 1.0d) float f2, float f3) {
            return addKeyline(f, f2, f3, false, true);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder addKeyline(float f, @FloatRange(from = 0.0d, to = 1.0d) float f2, float f3, boolean z) {
            return addKeyline(f, f2, f3, z, false);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder addKeylineRange(float f, @FloatRange(from = 0.0d, to = 1.0d) float f2, float f3, int i) {
            return addKeylineRange(f, f2, f3, i, false);
        }

        @NonNull
        public KeylineState build() {
            if (this.tmpFirstFocalKeyline != null) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < this.tmpKeylines.size(); i++) {
                    Keyline keyline = this.tmpKeylines.get(i);
                    arrayList.add(new Keyline(calculateKeylineLocationForItemPosition(this.tmpFirstFocalKeyline.locOffset, this.itemSize, this.firstFocalKeylineIndex, i), keyline.locOffset, keyline.mask, keyline.maskedItemSize, keyline.isAnchor, keyline.cutoff, keyline.leftOrTopPaddingShift, keyline.rightOrBottomPaddingShift));
                }
                return new KeylineState(this.itemSize, arrayList, this.firstFocalKeylineIndex, this.lastFocalKeylineIndex);
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{-8483612026217448202L, 4713615585259700160L, 3805033863192034702L, -3866409182209877634L, -6640934838476009889L, 9185947956439278038L}).toString());
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder addKeyline(float f, @FloatRange(from = 0.0d, to = 1.0d) float f2, float f3) {
            return addKeyline(f, f2, f3, false);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder addKeylineRange(float f, @FloatRange(from = 0.0d, to = 1.0d) float f2, float f3, int i, boolean z) {
            if (i > 0 && f3 > 0.0f) {
                for (int i2 = 0; i2 < i; i2++) {
                    addKeyline((i2 * f3) + f, f2, f3, z);
                }
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder addKeyline(float f, @FloatRange(from = 0.0d, to = 1.0d) float f2, float f3, boolean z, boolean z2, float f4, float f5, float f6) {
            if (f3 <= 0.0f) {
                return this;
            }
            if (z2) {
                if (!z) {
                    int i = this.latestAnchorKeylineIndex;
                    if (i != -1 && i != 0) {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1192462760731085225L, 1403916784366401422L, -5477754693989158079L, 1716149305857564941L, -7237571446387921951L, -1874251691718332335L, -6958853669496995738L, 2568714013934152117L, -7780359608572682544L}).toString());
                    }
                    this.latestAnchorKeylineIndex = this.tmpKeylines.size();
                } else {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{1567568584809824463L, 4799783803077871259L, -354020971883953222L, 9124887183698737038L, 4455664961238432759L}).toString());
                }
            }
            Keyline keyline = new Keyline(Float.MIN_VALUE, f, f2, f3, z2, f4, f5, f6);
            if (z) {
                if (this.tmpFirstFocalKeyline == null) {
                    this.tmpFirstFocalKeyline = keyline;
                    this.firstFocalKeylineIndex = this.tmpKeylines.size();
                }
                if (this.lastFocalKeylineIndex != -1 && this.tmpKeylines.size() - this.lastFocalKeylineIndex > 1) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3924013467280982678L, 219421340729690995L, 671729384851450752L, -983031900485014306L, 5544664226912723221L, 4890475607733967533L, 8045855984106718322L, 6802198663133957962L, -6341498342466125911L, 6445082045000920054L, 4480551305706957917L, -5636986074048955661L, 532883024261983150L, -3578488680362196292L, 6268547492700942722L, -2254853201472829002L}).toString());
                }
                if (f3 == this.tmpFirstFocalKeyline.maskedItemSize) {
                    this.tmpLastFocalKeyline = keyline;
                    this.lastFocalKeylineIndex = this.tmpKeylines.size();
                } else {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{582745517577313026L, 4473309347266726035L, -5012857307178634906L, -1398278299274846664L, 7179401437946672423L, -3727470929164429909L, 7416309570508450122L, 2141921582642611341L, -8409592415745003055L, -7389723272744057679L, -3467836798445255623L}).toString());
                }
            } else {
                if (this.tmpFirstFocalKeyline == null && keyline.maskedItemSize < this.lastKeylineMaskedSize) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1360626880364244022L, 1731967959048739495L, -7751375867447470513L, -1906159376996261989L, -34758522999680527L, 8807343708586144484L, 4764625189204294002L, 3028354424810691161L, -2224303302855998850L, 3902968479498362148L, 6986053198678295763L, 1549426963353092277L, 6042135344711189111L}).toString());
                }
                if (this.tmpLastFocalKeyline != null && keyline.maskedItemSize > this.lastKeylineMaskedSize) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{6572523481703625705L, -2003036980008316164L, -8167193910493789699L, -8358658901623044657L, 1912565085675576459L, 1658249810038838316L, -5480387958596008794L, -6323754375665394336L, -4056259562794425175L, -4114402432129052619L, -5340782833701956689L, 8445353178789605946L}).toString());
                }
            }
            this.lastKeylineMaskedSize = keyline.maskedItemSize;
            this.tmpKeylines.add(keyline);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder addKeyline(float f, @FloatRange(from = 0.0d, to = 1.0d) float f2, float f3, boolean z, boolean z2, float f4) {
            return addKeyline(f, f2, f3, z, z2, f4, 0.0f, 0.0f);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder addKeyline(float f, @FloatRange(from = 0.0d, to = 1.0d) float f2, float f3, boolean z, boolean z2) {
            float f4;
            float abs;
            float f5 = f3 / 2.0f;
            float f6 = f - f5;
            float f7 = f5 + f;
            float f8 = this.availableSpace;
            if (f7 > f8) {
                abs = Math.abs(f7 - Math.max(f7 - f3, f8));
            } else if (f6 < 0.0f) {
                abs = Math.abs(f6 - Math.min(f6 + f3, 0.0f));
            } else {
                f4 = 0.0f;
                return addKeyline(f, f2, f3, z, z2, f4);
            }
            f4 = abs;
            return addKeyline(f, f2, f3, z, z2, f4);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Keyline {
        final float cutoff;
        final boolean isAnchor;
        final float leftOrTopPaddingShift;
        final float loc;
        final float locOffset;
        final float mask;
        final float maskedItemSize;
        final float rightOrBottomPaddingShift;

        public Keyline(float f, float f2, float f3, float f4) {
            this(f, f2, f3, f4, false, 0.0f, 0.0f, 0.0f);
        }

        public static Keyline lerp(Keyline keyline, Keyline keyline2, @FloatRange(from = 0.0d, to = 1.0d) float f) {
            return new Keyline(AnimationUtils.lerp(keyline.loc, keyline2.loc, f), AnimationUtils.lerp(keyline.locOffset, keyline2.locOffset, f), AnimationUtils.lerp(keyline.mask, keyline2.mask, f), AnimationUtils.lerp(keyline.maskedItemSize, keyline2.maskedItemSize, f));
        }

        public Keyline(float f, float f2, float f3, float f4, boolean z, float f5, float f6, float f7) {
            this.loc = f;
            this.locOffset = f2;
            this.mask = f3;
            this.maskedItemSize = f4;
            this.isAnchor = z;
            this.cutoff = f5;
            this.leftOrTopPaddingShift = f6;
            this.rightOrBottomPaddingShift = f7;
        }
    }

    public static KeylineState lerp(KeylineState keylineState, KeylineState keylineState2, float f) {
        if (keylineState.getItemSize() == keylineState2.getItemSize()) {
            List<Keyline> keylines = keylineState.getKeylines();
            List<Keyline> keylines2 = keylineState2.getKeylines();
            if (keylines.size() == keylines2.size()) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < keylineState.getKeylines().size(); i++) {
                    arrayList.add(Keyline.lerp(keylines.get(i), keylines2.get(i), f));
                }
                return new KeylineState(keylineState.getItemSize(), arrayList, AnimationUtils.lerp(keylineState.getFirstFocalKeylineIndex(), keylineState2.getFirstFocalKeylineIndex(), f), AnimationUtils.lerp(keylineState.getLastFocalKeylineIndex(), keylineState2.getLastFocalKeylineIndex(), f));
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-4558399089301768458L, -558178856970045270L, -5183724877186840680L, -8903178311980087686L, 6718948407469984364L, -3208004939814955624L, -7798160492411167428L, -5021986251449408757L, -1664399731549722107L, 3891716661368725078L, -5523557646747075956L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7877005065274353424L, -3927316915352938370L, -6631451519622242121L, -574461096599813365L, -4122214824200167016L, 8271423809758351846L, 7242655223687521584L, 4892405802019558816L, -1559349673816809699L, -8932895387612427062L}).toString());
    }

    public static KeylineState reverse(KeylineState keylineState, float f) {
        boolean z;
        Builder builder = new Builder(keylineState.getItemSize(), f);
        float f2 = (f - keylineState.getLastKeyline().locOffset) - (keylineState.getLastKeyline().maskedItemSize / 2.0f);
        for (int size = keylineState.getKeylines().size() - 1; size >= 0; size--) {
            Keyline keyline = keylineState.getKeylines().get(size);
            float f3 = (keyline.maskedItemSize / 2.0f) + f2;
            if (size >= keylineState.getFirstFocalKeylineIndex() && size <= keylineState.getLastFocalKeylineIndex()) {
                z = true;
            } else {
                z = false;
            }
            builder.addKeyline(f3, keyline.mask, keyline.maskedItemSize, z, keyline.isAnchor);
            f2 += keyline.maskedItemSize;
        }
        return builder.build();
    }

    public Keyline getFirstFocalKeyline() {
        return this.keylines.get(this.firstFocalKeylineIndex);
    }

    public int getFirstFocalKeylineIndex() {
        return this.firstFocalKeylineIndex;
    }

    public Keyline getFirstKeyline() {
        return this.keylines.get(0);
    }

    @Nullable
    public Keyline getFirstNonAnchorKeyline() {
        for (int i = 0; i < this.keylines.size(); i++) {
            Keyline keyline = this.keylines.get(i);
            if (!keyline.isAnchor) {
                return keyline;
            }
        }
        return null;
    }

    public List<Keyline> getFocalKeylines() {
        return this.keylines.subList(this.firstFocalKeylineIndex, this.lastFocalKeylineIndex + 1);
    }

    public float getItemSize() {
        return this.itemSize;
    }

    public List<Keyline> getKeylines() {
        return this.keylines;
    }

    public Keyline getLastFocalKeyline() {
        return this.keylines.get(this.lastFocalKeylineIndex);
    }

    public int getLastFocalKeylineIndex() {
        return this.lastFocalKeylineIndex;
    }

    public Keyline getLastKeyline() {
        return (Keyline) AbstractC0362x4440ab85.m2928x75d576dc(1, this.keylines);
    }

    @Nullable
    public Keyline getLastNonAnchorKeyline() {
        for (int size = this.keylines.size() - 1; size >= 0; size--) {
            Keyline keyline = this.keylines.get(size);
            if (!keyline.isAnchor) {
                return keyline;
            }
        }
        return null;
    }

    public int getNumberOfNonAnchorKeylines() {
        Iterator<Keyline> it = this.keylines.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().isAnchor) {
                i++;
            }
        }
        return this.keylines.size() - i;
    }

    private KeylineState(float f, List<Keyline> list, int i, int i2) {
        this.itemSize = f;
        this.keylines = DesugarCollections.unmodifiableList(list);
        this.firstFocalKeylineIndex = i;
        this.lastFocalKeylineIndex = i2;
    }
}
