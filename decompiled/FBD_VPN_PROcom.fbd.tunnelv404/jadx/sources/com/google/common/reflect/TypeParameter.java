package com.google.common.reflect;

import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class TypeParameter<T> extends TypeCapture<T> {
    final TypeVariable<?> typeVariable;

    public TypeParameter() {
        Type capture = capture();
        Preconditions.checkArgument(capture instanceof TypeVariable, new ObfuscatedString(new long[]{-2023105115576809635L, 8192940866998866122L, -5587611618536449381L, -3525041177039423297L, 2132304130521173042L}).toString(), capture);
        this.typeVariable = (TypeVariable) capture;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof TypeParameter) {
            return this.typeVariable.equals(((TypeParameter) obj).typeVariable);
        }
        return false;
    }

    public final int hashCode() {
        return this.typeVariable.hashCode();
    }

    public String toString() {
        return this.typeVariable.toString();
    }
}
