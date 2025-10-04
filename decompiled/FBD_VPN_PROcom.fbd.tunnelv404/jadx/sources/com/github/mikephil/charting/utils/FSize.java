package com.github.mikephil.charting.utils;

import com.github.mikephil.charting.utils.ObjectPool;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes.dex */
public final class FSize extends ObjectPool.Poolable {
    private static ObjectPool<FSize> pool;
    public float height;
    public float width;

    static {
        ObjectPool<FSize> create = ObjectPool.create(256, new FSize(0.0f, 0.0f));
        pool = create;
        create.setReplenishPercentage(0.5f);
    }

    public FSize() {
    }

    public static FSize getInstance(float f, float f2) {
        FSize fSize = pool.get();
        fSize.width = f;
        fSize.height = f2;
        return fSize;
    }

    public static void recycleInstance(FSize fSize) {
        pool.recycle((ObjectPool<FSize>) fSize);
    }

    public static void recycleInstances(List<FSize> list) {
        pool.recycle(list);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FSize)) {
            return false;
        }
        FSize fSize = (FSize) obj;
        if (this.width != fSize.width || this.height != fSize.height) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.width) ^ Float.floatToIntBits(this.height);
    }

    @Override // com.github.mikephil.charting.utils.ObjectPool.Poolable
    public ObjectPool.Poolable instantiate() {
        return new FSize(0.0f, 0.0f);
    }

    public String toString() {
        return this.width + new ObfuscatedString(new long[]{-7462075059916497995L, -4186646469757833068L}).toString() + this.height;
    }

    public FSize(float f, float f2) {
        this.width = f;
        this.height = f2;
    }
}
