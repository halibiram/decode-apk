package com.github.mikephil.charting.utils;

import com.github.mikephil.charting.utils.ObjectPool;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes.dex */
public class MPPointD extends ObjectPool.Poolable {
    private static ObjectPool<MPPointD> pool;
    public double x;
    public double y;

    static {
        ObjectPool<MPPointD> create = ObjectPool.create(64, new MPPointD(0.0d, 0.0d));
        pool = create;
        create.setReplenishPercentage(0.5f);
    }

    private MPPointD(double d, double d2) {
        this.x = d;
        this.y = d2;
    }

    public static MPPointD getInstance(double d, double d2) {
        MPPointD mPPointD = pool.get();
        mPPointD.x = d;
        mPPointD.y = d2;
        return mPPointD;
    }

    public static void recycleInstance(MPPointD mPPointD) {
        pool.recycle((ObjectPool<MPPointD>) mPPointD);
    }

    public static void recycleInstances(List<MPPointD> list) {
        pool.recycle(list);
    }

    @Override // com.github.mikephil.charting.utils.ObjectPool.Poolable
    public ObjectPool.Poolable instantiate() {
        return new MPPointD(0.0d, 0.0d);
    }

    public String toString() {
        return new ObfuscatedString(new long[]{8437004143091575590L, -9114155938750851903L, 5817650398961999680L}).toString() + this.x + new ObfuscatedString(new long[]{7281375160706721155L, -9041187962278685828L}).toString() + this.y;
    }
}
