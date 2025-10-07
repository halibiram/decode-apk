package org.junit.internal;

import defpackage.AbstractC0362x4440ab85;
import java.lang.reflect.Array;
import java.util.Arrays;
import okhttp3.internal.CommonHttpUrl;
import org.junit.Assert;

/* loaded from: classes3.dex */
public abstract class ComparisonCriteria {
    private static final Object END_OF_ARRAY_SENTINEL = objectWithToString("end of array");

    private String componentTypeName(Class<?> cls) {
        Class<?> componentType = cls.getComponentType();
        if (componentType.isArray()) {
            return AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), componentTypeName(componentType), CommonHttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        }
        return componentType.getName();
    }

    private Object getToStringableArrayElement(Object obj, int i, int i2) {
        if (i2 < i) {
            Object obj2 = Array.get(obj, i2);
            if (isArray(obj2)) {
                return objectWithToString(componentTypeName(obj2.getClass()) + "[" + Array.getLength(obj2) + "]");
            }
            return obj2;
        }
        return END_OF_ARRAY_SENTINEL;
    }

    private boolean isArray(Object obj) {
        if (obj != null && obj.getClass().isArray()) {
            return true;
        }
        return false;
    }

    private static Object objectWithToString(final String str) {
        return new Object() { // from class: org.junit.internal.ComparisonCriteria.1
            public String toString() {
                return str;
            }
        };
    }

    public void arrayEquals(String str, Object obj, Object obj2) {
        arrayEquals(str, obj, obj2, true);
    }

    public abstract void assertElementsEqual(Object obj, Object obj2);

    private void arrayEquals(String str, Object obj, Object obj2, boolean z) {
        if (obj == obj2 || Arrays.deepEquals(new Object[]{obj}, new Object[]{obj2})) {
            return;
        }
        String concat = str == null ? "" : str.concat(": ");
        String str2 = z ? concat : "";
        if (obj == null) {
            Assert.fail(str2 + "expected array was null");
        }
        if (obj2 == null) {
            Assert.fail(str2 + "actual array was null");
        }
        int length = Array.getLength(obj2);
        int length2 = Array.getLength(obj);
        if (length != length2) {
            concat = concat + "array lengths differed, expected.length=" + length2 + " actual.length=" + length + "; ";
        }
        int min = Math.min(length, length2);
        for (int i = 0; i < min; i++) {
            Object obj3 = Array.get(obj, i);
            Object obj4 = Array.get(obj2, i);
            if (isArray(obj3) && isArray(obj4)) {
                try {
                    arrayEquals(str, obj3, obj4, false);
                } catch (ArrayComparisonFailure e) {
                    e.addDimension(i);
                    throw e;
                } catch (AssertionError e2) {
                    throw new ArrayComparisonFailure(concat, e2, i);
                }
            } else {
                try {
                    assertElementsEqual(obj3, obj4);
                } catch (AssertionError e3) {
                    throw new ArrayComparisonFailure(concat, e3, i);
                }
            }
        }
        if (length != length2) {
            try {
                Assert.assertEquals(getToStringableArrayElement(obj, length2, min), getToStringableArrayElement(obj2, length, min));
            } catch (AssertionError e4) {
                throw new ArrayComparisonFailure(concat, e4, min);
            }
        }
    }
}
