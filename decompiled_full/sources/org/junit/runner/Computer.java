package org.junit.runner;

import org.junit.runners.Suite;
import org.junit.runners.model.RunnerBuilder;

/* loaded from: classes3.dex */
public class Computer {
    public static Computer serial() {
        return new Computer();
    }

    public Runner getRunner(RunnerBuilder runnerBuilder, Class<?> cls) {
        return runnerBuilder.runnerForClass(cls);
    }

    public Runner getSuite(final RunnerBuilder runnerBuilder, Class<?>[] clsArr) {
        return new Suite(new RunnerBuilder() { // from class: org.junit.runner.Computer.1
            @Override // org.junit.runners.model.RunnerBuilder
            public Runner runnerForClass(Class<?> cls) {
                return Computer.this.getRunner(runnerBuilder, cls);
            }
        }, clsArr) { // from class: org.junit.runner.Computer.2
            @Override // org.junit.runners.ParentRunner
            public String getName() {
                return "classes";
            }
        };
    }
}
