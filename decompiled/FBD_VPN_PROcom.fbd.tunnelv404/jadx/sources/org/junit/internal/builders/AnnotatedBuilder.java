package org.junit.internal.builders;

import java.lang.reflect.Modifier;
import org.junit.runner.RunWith;
import org.junit.runner.Runner;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.RunnerBuilder;

/* loaded from: classes3.dex */
public class AnnotatedBuilder extends RunnerBuilder {
    private static final String CONSTRUCTOR_ERROR_FORMAT = "Custom runner class %s should have a public constructor with signature %s(Class testClass)";
    private final RunnerBuilder suiteBuilder;

    public AnnotatedBuilder(RunnerBuilder runnerBuilder) {
        this.suiteBuilder = runnerBuilder;
    }

    private Class<?> getEnclosingClassForNonStaticMemberClass(Class<?> cls) {
        if (cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
            return cls.getEnclosingClass();
        }
        return null;
    }

    public Runner buildRunner(Class<? extends Runner> cls, Class<?> cls2) {
        try {
            try {
                return cls.getConstructor(Class.class).newInstance(cls2);
            } catch (NoSuchMethodException unused) {
                return cls.getConstructor(Class.class, RunnerBuilder.class).newInstance(cls2, this.suiteBuilder);
            }
        } catch (NoSuchMethodException unused2) {
            String simpleName = cls.getSimpleName();
            throw new InitializationError("Custom runner class " + simpleName + " should have a public constructor with signature " + simpleName + "(Class testClass)");
        }
    }

    @Override // org.junit.runners.model.RunnerBuilder
    public Runner runnerForClass(Class<?> cls) {
        Class<?> cls2 = cls;
        while (cls2 != null) {
            RunWith runWith = (RunWith) cls2.getAnnotation(RunWith.class);
            if (runWith != null) {
                return buildRunner(runWith.value(), cls);
            }
            cls2 = getEnclosingClassForNonStaticMemberClass(cls2);
        }
        return null;
    }
}
