package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;

@GwtCompatible(serializable = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
final class UsingToStringOrdering extends Ordering<Object> implements Serializable {
    static final UsingToStringOrdering INSTANCE = new UsingToStringOrdering();
    private static final long serialVersionUID = 0;

    private UsingToStringOrdering() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString());
    }

    public String toString() {
        return new ObfuscatedString(new long[]{6710551827190169342L, -6137033042833554496L, -2897153985340499717L, -7299099569227350070L}).toString();
    }
}
