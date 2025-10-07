package org.junit.rules;

import org.junit.runner.Description;

/* loaded from: classes3.dex */
public class TestName extends TestWatcher {
    private volatile String name;

    public String getMethodName() {
        return this.name;
    }

    @Override // org.junit.rules.TestWatcher
    public void starting(Description description) {
        this.name = description.getMethodName();
    }
}
