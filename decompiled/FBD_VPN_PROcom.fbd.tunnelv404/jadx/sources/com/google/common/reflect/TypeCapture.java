package com.google.common.reflect;

import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
abstract class TypeCapture<T> {
    public final Type capture() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        Preconditions.checkArgument(genericSuperclass instanceof ParameterizedType, new ObfuscatedString(new long[]{-2435401367119819070L, 8440362535279204312L, 5785613191631682934L, -335929788913182040L}).toString(), genericSuperclass);
        return ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
    }
}
