package org.junit.runners;

import defpackage.AbstractC0362x4440ab85;
import j$.util.DesugarCollections;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import org.junit.internal.builders.AllDefaultPossibilitiesBuilder;
import org.junit.runner.Description;
import org.junit.runner.Runner;
import org.junit.runner.notification.RunNotifier;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.RunnerBuilder;

/* loaded from: classes3.dex */
public class Suite extends ParentRunner<Runner> {
    private final List<Runner> runners;

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3.dex */
    public @interface SuiteClasses {
        Class<?>[] value();
    }

    public Suite(Class<?> cls, RunnerBuilder runnerBuilder) {
        this(runnerBuilder, cls, getAnnotatedClasses(cls));
    }

    public static Runner emptySuite() {
        try {
            return new Suite((Class<?>) null, (Class<?>[]) new Class[0]);
        } catch (InitializationError unused) {
            throw new RuntimeException("This shouldn't be possible");
        }
    }

    private static Class<?>[] getAnnotatedClasses(Class<?> cls) {
        SuiteClasses suiteClasses = (SuiteClasses) cls.getAnnotation(SuiteClasses.class);
        if (suiteClasses != null) {
            return suiteClasses.value();
        }
        throw new InitializationError(AbstractC0362x4440ab85.m2932x95f25580("class '", cls.getName(), "' must have a SuiteClasses annotation"));
    }

    @Override // org.junit.runners.ParentRunner
    public List<Runner> getChildren() {
        return this.runners;
    }

    public Suite(RunnerBuilder runnerBuilder, Class<?>[] clsArr) {
        this((Class<?>) null, runnerBuilder.runners((Class<?>) null, clsArr));
    }

    @Override // org.junit.runners.ParentRunner
    public Description describeChild(Runner runner) {
        return runner.getDescription();
    }

    @Override // org.junit.runners.ParentRunner
    public void runChild(Runner runner, RunNotifier runNotifier) {
        runner.run(runNotifier);
    }

    public Suite(Class<?> cls, Class<?>[] clsArr) {
        this(new AllDefaultPossibilitiesBuilder(), cls, clsArr);
    }

    public Suite(RunnerBuilder runnerBuilder, Class<?> cls, Class<?>[] clsArr) {
        this(cls, runnerBuilder.runners(cls, clsArr));
    }

    public Suite(Class<?> cls, List<Runner> list) {
        super(cls);
        this.runners = DesugarCollections.unmodifiableList(list);
    }
}
