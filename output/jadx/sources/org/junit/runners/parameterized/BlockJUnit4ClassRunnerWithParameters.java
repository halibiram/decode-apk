package org.junit.runners.parameterized;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import org.junit.internal.runners.statements.RunAfters;
import org.junit.internal.runners.statements.RunBefores;
import org.junit.runner.RunWith;
import org.junit.runner.notification.RunNotifier;
import org.junit.runners.BlockJUnit4ClassRunner;
import org.junit.runners.Parameterized;
import org.junit.runners.model.FrameworkField;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.Statement;

/* loaded from: classes3.dex */
public class BlockJUnit4ClassRunnerWithParameters extends BlockJUnit4ClassRunner {
    private final String name;
    private final Object[] parameters;

    /* renamed from: org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$junit$runners$parameterized$BlockJUnit4ClassRunnerWithParameters$InjectionType;

        static {
            int[] iArr = new int[InjectionType.values().length];
            $SwitchMap$org$junit$runners$parameterized$BlockJUnit4ClassRunnerWithParameters$InjectionType = iArr;
            try {
                iArr[InjectionType.CONSTRUCTOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$junit$runners$parameterized$BlockJUnit4ClassRunnerWithParameters$InjectionType[InjectionType.FIELD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public enum InjectionType {
        CONSTRUCTOR,
        FIELD
    }

    /* loaded from: classes3.dex */
    public class RunAfterParams extends RunAfters {
        public RunAfterParams(Statement statement, List<FrameworkMethod> list) {
            super(statement, list, null);
        }

        @Override // org.junit.internal.runners.statements.RunAfters
        public void invokeMethod(FrameworkMethod frameworkMethod) {
            Object[] objArr;
            if (frameworkMethod.getMethod().getParameterTypes().length != 0) {
                objArr = BlockJUnit4ClassRunnerWithParameters.this.parameters;
            } else {
                objArr = null;
            }
            frameworkMethod.invokeExplosively(null, objArr);
        }
    }

    /* loaded from: classes3.dex */
    public class RunBeforeParams extends RunBefores {
        public RunBeforeParams(Statement statement, List<FrameworkMethod> list) {
            super(statement, list, null);
        }

        @Override // org.junit.internal.runners.statements.RunBefores
        public void invokeMethod(FrameworkMethod frameworkMethod) {
            Object[] objArr;
            if (frameworkMethod.getMethod().getParameterTypes().length != 0) {
                objArr = BlockJUnit4ClassRunnerWithParameters.this.parameters;
            } else {
                objArr = null;
            }
            frameworkMethod.invokeExplosively(null, objArr);
        }
    }

    public BlockJUnit4ClassRunnerWithParameters(TestWithParameters testWithParameters) {
        super(testWithParameters.getTestClass());
        this.parameters = testWithParameters.getParameters().toArray(new Object[testWithParameters.getParameters().size()]);
        this.name = testWithParameters.getName();
    }

    private Object createTestUsingConstructorInjection() {
        return getTestClass().getOnlyConstructor().newInstance(this.parameters);
    }

    private Object createTestUsingFieldInjection() {
        List<FrameworkField> annotatedFieldsByParameter = getAnnotatedFieldsByParameter();
        if (annotatedFieldsByParameter.size() == this.parameters.length) {
            Object newInstance = getTestClass().getJavaClass().newInstance();
            Iterator<FrameworkField> it = annotatedFieldsByParameter.iterator();
            while (it.hasNext()) {
                Field field = it.next().getField();
                int value = ((Parameterized.Parameter) field.getAnnotation(Parameterized.Parameter.class)).value();
                try {
                    field.set(newInstance, this.parameters[value]);
                } catch (IllegalAccessException e) {
                    IllegalAccessException illegalAccessException = new IllegalAccessException("Cannot set parameter '" + field.getName() + "'. Ensure that the field '" + field.getName() + "' is public.");
                    illegalAccessException.initCause(e);
                    throw illegalAccessException;
                } catch (IllegalArgumentException e2) {
                    throw new Exception(getTestClass().getName() + ": Trying to set " + field.getName() + " with the value " + this.parameters[value] + " that is not the right type (" + this.parameters[value].getClass().getSimpleName() + " instead of " + field.getType().getSimpleName() + ").", e2);
                }
            }
            return newInstance;
        }
        StringBuilder sb = new StringBuilder("Wrong number of parameters and @Parameter fields. @Parameter fields counted: ");
        sb.append(annotatedFieldsByParameter.size());
        sb.append(", available parameters: ");
        throw new Exception(AbstractC0362x4440ab85.m2935x1db10c9d(sb, ".", this.parameters.length));
    }

    private boolean fieldsAreAnnotated() {
        return !getAnnotatedFieldsByParameter().isEmpty();
    }

    private List<FrameworkField> getAnnotatedFieldsByParameter() {
        return getTestClass().getAnnotatedFields(Parameterized.Parameter.class);
    }

    private InjectionType getInjectionType() {
        if (fieldsAreAnnotated()) {
            return InjectionType.FIELD;
        }
        return InjectionType.CONSTRUCTOR;
    }

    private Statement withAfterParams(Statement statement) {
        List<FrameworkMethod> annotatedMethods = getTestClass().getAnnotatedMethods(Parameterized.AfterParam.class);
        if (!annotatedMethods.isEmpty()) {
            return new RunAfterParams(statement, annotatedMethods);
        }
        return statement;
    }

    private Statement withBeforeParams(Statement statement) {
        List<FrameworkMethod> annotatedMethods = getTestClass().getAnnotatedMethods(Parameterized.BeforeParam.class);
        if (!annotatedMethods.isEmpty()) {
            return new RunBeforeParams(statement, annotatedMethods);
        }
        return statement;
    }

    @Override // org.junit.runners.ParentRunner
    public Statement classBlock(RunNotifier runNotifier) {
        return withAfterParams(withBeforeParams(childrenInvoker(runNotifier)));
    }

    @Override // org.junit.runners.BlockJUnit4ClassRunner
    public Object createTest() {
        InjectionType injectionType = getInjectionType();
        int i = AnonymousClass1.$SwitchMap$org$junit$runners$parameterized$BlockJUnit4ClassRunnerWithParameters$InjectionType[injectionType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return createTestUsingFieldInjection();
            }
            throw new IllegalStateException("The injection type " + injectionType + " is not supported.");
        }
        return createTestUsingConstructorInjection();
    }

    @Override // org.junit.runners.ParentRunner
    public String getName() {
        return this.name;
    }

    @Override // org.junit.runners.ParentRunner
    public Annotation[] getRunnerAnnotations() {
        Annotation[] annotationArr = new Annotation[r0.length - 1];
        int i = 0;
        for (Annotation annotation : super.getRunnerAnnotations()) {
            if (!annotation.annotationType().equals(RunWith.class)) {
                annotationArr[i] = annotation;
                i++;
            }
        }
        return annotationArr;
    }

    @Override // org.junit.runners.BlockJUnit4ClassRunner
    public String testName(FrameworkMethod frameworkMethod) {
        return frameworkMethod.getName() + getName();
    }

    @Override // org.junit.runners.BlockJUnit4ClassRunner
    public void validateConstructor(List<Throwable> list) {
        validateOnlyOneConstructor(list);
        if (getInjectionType() != InjectionType.CONSTRUCTOR) {
            validateZeroArgConstructor(list);
        }
    }

    @Override // org.junit.runners.BlockJUnit4ClassRunner
    public void validateFields(List<Throwable> list) {
        super.validateFields(list);
        if (getInjectionType() == InjectionType.FIELD) {
            List<FrameworkField> annotatedFieldsByParameter = getAnnotatedFieldsByParameter();
            int size = annotatedFieldsByParameter.size();
            int[] iArr = new int[size];
            Iterator<FrameworkField> it = annotatedFieldsByParameter.iterator();
            while (it.hasNext()) {
                int value = ((Parameterized.Parameter) it.next().getField().getAnnotation(Parameterized.Parameter.class)).value();
                if (value >= 0 && value <= annotatedFieldsByParameter.size() - 1) {
                    iArr[value] = iArr[value] + 1;
                } else {
                    StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(value, "Invalid @Parameter value: ", ". @Parameter fields counted: ");
                    m2939xab142723.append(annotatedFieldsByParameter.size());
                    m2939xab142723.append(". Please use an index between 0 and ");
                    m2939xab142723.append(annotatedFieldsByParameter.size() - 1);
                    m2939xab142723.append(".");
                    list.add(new Exception(m2939xab142723.toString()));
                }
            }
            for (int i = 0; i < size; i++) {
                int i2 = iArr[i];
                if (i2 == 0) {
                    list.add(new Exception(AbstractC0749x8313616e.m3330x95f25580(i, "@Parameter(", ") is never used.")));
                } else if (i2 > 1) {
                    list.add(new Exception("@Parameter(" + i + ") is used more than once (" + i2 + ")."));
                }
            }
        }
    }
}
