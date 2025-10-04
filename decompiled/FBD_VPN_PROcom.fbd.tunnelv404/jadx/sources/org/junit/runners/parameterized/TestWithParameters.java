package org.junit.runners.parameterized;

import defpackage.AbstractC0362x4440ab85;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import org.junit.internal.Checks;
import org.junit.runners.model.TestClass;

/* loaded from: classes3.dex */
public class TestWithParameters {
    private final String name;
    private final List<Object> parameters;
    private final TestClass testClass;

    public TestWithParameters(String str, TestClass testClass, List<Object> list) {
        Checks.notNull(str, "The name is missing.");
        Checks.notNull(testClass, "The test class is missing.");
        Checks.notNull(list, "The parameters are missing.");
        this.name = str;
        this.testClass = testClass;
        this.parameters = DesugarCollections.unmodifiableList(new ArrayList(list));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TestWithParameters testWithParameters = (TestWithParameters) obj;
        if (this.name.equals(testWithParameters.name) && this.parameters.equals(testWithParameters.parameters) && this.testClass.equals(testWithParameters.testClass)) {
            return true;
        }
        return false;
    }

    public String getName() {
        return this.name;
    }

    public List<Object> getParameters() {
        return this.parameters;
    }

    public TestClass getTestClass() {
        return this.testClass;
    }

    public int hashCode() {
        return this.parameters.hashCode() + ((this.testClass.hashCode() + AbstractC0362x4440ab85.m2927x1378447b(14747, 14747, this.name)) * 14747);
    }

    public String toString() {
        return this.testClass.getName() + " '" + this.name + "' with parameters " + this.parameters;
    }
}
