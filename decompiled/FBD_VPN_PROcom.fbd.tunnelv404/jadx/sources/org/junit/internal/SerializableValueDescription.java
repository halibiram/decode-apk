package org.junit.internal;

import java.io.Serializable;

/* loaded from: classes3.dex */
class SerializableValueDescription implements Serializable {
    private final String value;

    private SerializableValueDescription(Object obj) {
        this.value = String.valueOf(obj);
    }

    public static Object asSerializableValue(Object obj) {
        if (obj != null && !(obj instanceof Serializable)) {
            return new SerializableValueDescription(obj);
        }
        return obj;
    }

    public String toString() {
        return this.value;
    }
}
