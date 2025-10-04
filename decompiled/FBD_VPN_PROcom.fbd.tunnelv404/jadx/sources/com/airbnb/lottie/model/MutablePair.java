package com.airbnb.lottie.model;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class MutablePair<T> {

    @Nullable
    T first;

    @Nullable
    T second;

    private static boolean objectsEqual(Object obj, Object obj2) {
        if (obj != obj2 && (obj == null || !obj.equals(obj2))) {
            return false;
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        if (!objectsEqual(pair.first, this.first) || !objectsEqual(pair.second, this.second)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        T t = this.first;
        int i = 0;
        if (t == null) {
            hashCode = 0;
        } else {
            hashCode = t.hashCode();
        }
        T t2 = this.second;
        if (t2 != null) {
            i = t2.hashCode();
        }
        return hashCode ^ i;
    }

    public void set(T t, T t2) {
        this.first = t;
        this.second = t2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{8557427331205312136L, -3208619865091859085L}).toString());
        sb.append(this.first);
        sb.append(new ObfuscatedString(new long[]{-6460707383412039903L, -3097663298410341755L}).toString());
        sb.append(this.second);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5728071730262138964L, 5799471828289938767L}), sb);
    }
}
