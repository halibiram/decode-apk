package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMakerInternalMap;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.CheckForNull;

@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class MapMaker {
    private static final int DEFAULT_CONCURRENCY_LEVEL = 4;
    private static final int DEFAULT_INITIAL_CAPACITY = 16;
    static final int UNSET_INT = -1;

    @CheckForNull
    Equivalence<Object> keyEquivalence;

    @CheckForNull
    MapMakerInternalMap.Strength keyStrength;
    boolean useCustomMap;

    @CheckForNull
    MapMakerInternalMap.Strength valueStrength;
    int initialCapacity = -1;
    int concurrencyLevel = -1;

    /* loaded from: classes2.dex */
    public enum Dummy {
        VALUE
    }

    @CanIgnoreReturnValue
    public MapMaker concurrencyLevel(int i) {
        boolean z;
        boolean z2 = false;
        if (this.concurrencyLevel == -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{-5467797539586186678L, 2368631041071731609L, -8430407420296047102L, 202923788548952381L, 5891414992514423481L, 197499642950991005L}).toString(), this.concurrencyLevel);
        if (i > 0) {
            z2 = true;
        }
        Preconditions.checkArgument(z2);
        this.concurrencyLevel = i;
        return this;
    }

    public int getConcurrencyLevel() {
        int i = this.concurrencyLevel;
        if (i == -1) {
            return 4;
        }
        return i;
    }

    public int getInitialCapacity() {
        int i = this.initialCapacity;
        if (i == -1) {
            return 16;
        }
        return i;
    }

    public Equivalence<Object> getKeyEquivalence() {
        return (Equivalence) MoreObjects.firstNonNull(this.keyEquivalence, getKeyStrength().defaultEquivalence());
    }

    public MapMakerInternalMap.Strength getKeyStrength() {
        return (MapMakerInternalMap.Strength) MoreObjects.firstNonNull(this.keyStrength, MapMakerInternalMap.Strength.STRONG);
    }

    public MapMakerInternalMap.Strength getValueStrength() {
        return (MapMakerInternalMap.Strength) MoreObjects.firstNonNull(this.valueStrength, MapMakerInternalMap.Strength.STRONG);
    }

    @CanIgnoreReturnValue
    public MapMaker initialCapacity(int i) {
        boolean z;
        boolean z2 = false;
        if (this.initialCapacity == -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{7861220495670666862L, -4107050415978044321L, 7703090565463327941L, 6537193506888020245L, 2598839007749695189L, 3920450930231496222L}).toString(), this.initialCapacity);
        if (i >= 0) {
            z2 = true;
        }
        Preconditions.checkArgument(z2);
        this.initialCapacity = i;
        return this;
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    public MapMaker keyEquivalence(Equivalence<Object> equivalence) {
        boolean z;
        if (this.keyEquivalence == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{359121352155743508L, -6021392102819763948L, -1213963565920924153L, -2051332756195892401L, 5412594395210333120L, -4898795058367352938L}).toString(), this.keyEquivalence);
        this.keyEquivalence = (Equivalence) Preconditions.checkNotNull(equivalence);
        this.useCustomMap = true;
        return this;
    }

    public <K, V> ConcurrentMap<K, V> makeMap() {
        if (!this.useCustomMap) {
            return new ConcurrentHashMap(getInitialCapacity(), 0.75f, getConcurrencyLevel());
        }
        return MapMakerInternalMap.create(this);
    }

    public MapMaker setKeyStrength(MapMakerInternalMap.Strength strength) {
        boolean z;
        if (this.keyStrength == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{-4327612749392827655L, 1913086064091309491L, 703978178933159456L, -8001391133581784000L, -4826199255331345030L, -6473293828254544708L}).toString(), this.keyStrength);
        this.keyStrength = (MapMakerInternalMap.Strength) Preconditions.checkNotNull(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.useCustomMap = true;
        }
        return this;
    }

    public MapMaker setValueStrength(MapMakerInternalMap.Strength strength) {
        boolean z;
        if (this.valueStrength == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{-2723644671524844104L, -7586509539731260384L, 3016448372912882702L, -5265914874899079823L, -3352006600275709349L, -7219346033615858407L}).toString(), this.valueStrength);
        this.valueStrength = (MapMakerInternalMap.Strength) Preconditions.checkNotNull(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.useCustomMap = true;
        }
        return this;
    }

    public String toString() {
        MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper(this);
        if (this.initialCapacity != -1) {
            stringHelper.add(new ObfuscatedString(new long[]{1475767591549758860L, 4434853027569409060L, 7727393681438533096L}).toString(), this.initialCapacity);
        }
        if (this.concurrencyLevel != -1) {
            stringHelper.add(new ObfuscatedString(new long[]{8699359362940793714L, -5281660681717321199L, -8411070225943928561L}).toString(), this.concurrencyLevel);
        }
        if (this.keyStrength != null) {
            stringHelper.add(new ObfuscatedString(new long[]{4701883405955654003L, 6330964313425764201L, 5999797088899084152L}).toString(), Ascii.toLowerCase(this.keyStrength.toString()));
        }
        if (this.valueStrength != null) {
            stringHelper.add(new ObfuscatedString(new long[]{8643412468454247521L, -8394969910686880030L, 7965021224332686062L}).toString(), Ascii.toLowerCase(this.valueStrength.toString()));
        }
        if (this.keyEquivalence != null) {
            stringHelper.addValue(new ObfuscatedString(new long[]{6695705591225175575L, 51541795265682218L, -2528728166646517949L}).toString());
        }
        return stringHelper.toString();
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    public MapMaker weakKeys() {
        return setKeyStrength(MapMakerInternalMap.Strength.WEAK);
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    public MapMaker weakValues() {
        return setValueStrength(MapMakerInternalMap.Strength.WEAK);
    }
}
