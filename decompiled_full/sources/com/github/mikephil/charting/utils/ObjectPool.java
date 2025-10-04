package com.github.mikephil.charting.utils;

import com.github.mikephil.charting.utils.ObjectPool.Poolable;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes.dex */
public class ObjectPool<T extends Poolable> {
    private static int ids;
    private int desiredCapacity;
    private T modelObject;
    private Object[] objects;
    private int objectsPointer;
    private int poolId;
    private float replenishPercentage;

    /* loaded from: classes.dex */
    public static abstract class Poolable {
        public static int NO_OWNER = -1;
        int currentOwnerId = NO_OWNER;

        public abstract Poolable instantiate();
    }

    private ObjectPool(int i, T t) {
        if (i > 0) {
            this.desiredCapacity = i;
            this.objects = new Object[i];
            this.objectsPointer = 0;
            this.modelObject = t;
            this.replenishPercentage = 1.0f;
            refillPool();
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1240612761648501233L, 7415409036546773183L, 1428491058182409651L, 222238073348335637L, 7746984953349551148L, 3271416353041547125L, -1342798452402485820L, 6554912170557659002L, 357898073709708815L}).toString());
    }

    public static synchronized ObjectPool create(int i, Poolable poolable) {
        ObjectPool objectPool;
        synchronized (ObjectPool.class) {
            objectPool = new ObjectPool(i, poolable);
            int i2 = ids;
            objectPool.poolId = i2;
            ids = i2 + 1;
        }
        return objectPool;
    }

    private void refillPool() {
        refillPool(this.replenishPercentage);
    }

    private void resizePool() {
        int i = this.desiredCapacity;
        int i2 = i * 2;
        this.desiredCapacity = i2;
        Object[] objArr = new Object[i2];
        for (int i3 = 0; i3 < i; i3++) {
            objArr[i3] = this.objects[i3];
        }
        this.objects = objArr;
    }

    public synchronized T get() {
        T t;
        try {
            if (this.objectsPointer == -1 && this.replenishPercentage > 0.0f) {
                refillPool();
            }
            Object[] objArr = this.objects;
            int i = this.objectsPointer;
            t = (T) objArr[i];
            t.currentOwnerId = Poolable.NO_OWNER;
            this.objectsPointer = i - 1;
        } catch (Throwable th) {
            throw th;
        }
        return t;
    }

    public int getPoolCapacity() {
        return this.objects.length;
    }

    public int getPoolCount() {
        return this.objectsPointer + 1;
    }

    public int getPoolId() {
        return this.poolId;
    }

    public float getReplenishPercentage() {
        return this.replenishPercentage;
    }

    public synchronized void recycle(T t) {
        try {
            int i = t.currentOwnerId;
            if (i != Poolable.NO_OWNER) {
                if (i == this.poolId) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5358372559848052238L, 4033389618566775811L, -990958176321172461L, 824876882281050281L, 3738975764725327003L, 310334356494321867L, -564163849493712943L, -3685879769961920665L}).toString());
                }
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-2014784049137857973L, -970065125327792620L, -4521573481628267533L, -2718951661382839345L, -298078773047238613L, 864554661130233218L, 8908417741466291705L}).toString() + t.currentOwnerId + new ObfuscatedString(new long[]{-8719594880687772361L, 6461322351646033024L, -682450183272079498L, 7281075983492266455L, -656715528414092587L, -4493077037643997302L, -7920802765187358836L, -1138549436228899295L, 2744314385264619098L, 8433118688109420204L}).toString());
            }
            int i2 = this.objectsPointer + 1;
            this.objectsPointer = i2;
            if (i2 >= this.objects.length) {
                resizePool();
            }
            t.currentOwnerId = this.poolId;
            this.objects[this.objectsPointer] = t;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setReplenishPercentage(float f) {
        if (f > 1.0f) {
            f = 1.0f;
        } else if (f < 0.0f) {
            f = 0.0f;
        }
        this.replenishPercentage = f;
    }

    private void refillPool(float f) {
        int i = this.desiredCapacity;
        int i2 = (int) (i * f);
        if (i2 < 1) {
            i = 1;
        } else if (i2 <= i) {
            i = i2;
        }
        for (int i3 = 0; i3 < i; i3++) {
            this.objects[i3] = this.modelObject.instantiate();
        }
        this.objectsPointer = i - 1;
    }

    public synchronized void recycle(List<T> list) {
        while (list.size() + this.objectsPointer + 1 > this.desiredCapacity) {
            try {
                resizePool();
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            int i2 = t.currentOwnerId;
            if (i2 != Poolable.NO_OWNER) {
                if (i2 == this.poolId) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{7825594042752295996L, -3767163992082601817L, -5412437892080830143L, 7463516280847119687L, 3945480677526346688L, 11120353194309619L, 1972866555044243418L, 4562487647115571429L}).toString());
                }
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{828638305081486196L, 7002250082952520503L, -3057580972981997855L, -8149882407164178595L, 8928359922219829811L, 3261890727837837830L, -2180671736943822314L}).toString() + t.currentOwnerId + new ObfuscatedString(new long[]{-452932328275945060L, -3147756415505256732L, -7286431241818800927L, -9068833948745798336L, -5957995344540772663L, 8088139442459777823L, -8546089262124937807L, -708079167938786499L, -6885241799203096880L, -519167494481641830L}).toString());
            }
            t.currentOwnerId = this.poolId;
            this.objects[this.objectsPointer + 1 + i] = t;
        }
        this.objectsPointer += size;
    }
}
