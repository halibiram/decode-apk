package org.junit.runners;

import org.junit.runners.model.TestClass;

/* loaded from: classes3.dex */
public final class JUnit4 extends BlockJUnit4ClassRunner {
    public JUnit4(Class<?> cls) {
        super(new TestClass(cls));
    }
}
