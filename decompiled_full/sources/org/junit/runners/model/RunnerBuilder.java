package org.junit.runners.model;

import defpackage.AbstractC0362x4440ab85;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.junit.internal.runners.ErrorReportingRunner;
import org.junit.runner.Description;
import org.junit.runner.OrderWith;
import org.junit.runner.Runner;
import org.junit.runner.manipulation.Ordering;

/* loaded from: classes3.dex */
public abstract class RunnerBuilder {
    private final Set<Class<?>> parents = new HashSet();

    private void configureRunner(Runner runner) {
        Description description = runner.getDescription();
        OrderWith orderWith = (OrderWith) description.getAnnotation(OrderWith.class);
        if (orderWith != null) {
            Ordering.definedBy(orderWith.value(), description).apply(runner);
        }
    }

    public Class<?> addParent(Class<?> cls) {
        if (this.parents.add(cls)) {
            return cls;
        }
        throw new InitializationError(AbstractC0362x4440ab85.m2932x95f25580("class '", cls.getName(), "' (possibly indirectly) contains itself as a SuiteClass"));
    }

    public void removeParent(Class<?> cls) {
        this.parents.remove(cls);
    }

    public abstract Runner runnerForClass(Class<?> cls);

    public List<Runner> runners(Class<?> cls, Class<?>[] clsArr) {
        addParent(cls);
        try {
            return runners(clsArr);
        } finally {
            removeParent(cls);
        }
    }

    public Runner safeRunnerForClass(Class<?> cls) {
        try {
            Runner runnerForClass = runnerForClass(cls);
            if (runnerForClass != null) {
                configureRunner(runnerForClass);
            }
            return runnerForClass;
        } catch (Throwable th) {
            return new ErrorReportingRunner(cls, th);
        }
    }

    public List<Runner> runners(Class<?> cls, List<Class<?>> list) {
        return runners(cls, (Class<?>[]) list.toArray(new Class[0]));
    }

    private List<Runner> runners(Class<?>[] clsArr) {
        ArrayList arrayList = new ArrayList();
        for (Class<?> cls : clsArr) {
            Runner safeRunnerForClass = safeRunnerForClass(cls);
            if (safeRunnerForClass != null) {
                arrayList.add(safeRunnerForClass);
            }
        }
        return arrayList;
    }
}
