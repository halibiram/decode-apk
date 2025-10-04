package org.junit.runners;

import defpackage.AbstractC0362x4440ab85;
import j$.util.DesugarCollections;
import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.junit.internal.AssumptionViolatedException;
import org.junit.runner.Description;
import org.junit.runner.Runner;
import org.junit.runner.notification.Failure;
import org.junit.runner.notification.RunNotifier;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.InvalidTestClassError;
import org.junit.runners.model.TestClass;
import org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParametersFactory;
import org.junit.runners.parameterized.ParametersRunnerFactory;
import org.junit.runners.parameterized.TestWithParameters;

/* loaded from: classes3.dex */
public class Parameterized extends Suite {

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3.dex */
    public @interface AfterParam {
    }

    /* loaded from: classes3.dex */
    public static class AssumptionViolationRunner extends Runner {
        private final Description description;
        private final AssumptionViolatedException exception;

        public AssumptionViolationRunner(TestClass testClass, String str, AssumptionViolatedException assumptionViolatedException) {
            this.description = Description.createTestDescription(testClass.getJavaClass(), str + "() assumption violation");
            this.exception = assumptionViolatedException;
        }

        @Override // org.junit.runner.Runner, org.junit.runner.Describable
        public Description getDescription() {
            return this.description;
        }

        @Override // org.junit.runner.Runner
        public void run(RunNotifier runNotifier) {
            runNotifier.fireTestAssumptionFailed(new Failure(this.description, this.exception));
        }
    }

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3.dex */
    public @interface BeforeParam {
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3.dex */
    public @interface Parameter {
        int value() default 0;
    }

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3.dex */
    public @interface Parameters {
        String name() default "{index}";
    }

    /* loaded from: classes3.dex */
    public static class RunnersFactory {
        private static final ParametersRunnerFactory DEFAULT_FACTORY = new BlockJUnit4ClassRunnerWithParametersFactory();
        private final List<Object> allParameters;
        private final int parameterCount;
        private final FrameworkMethod parametersMethod;
        private final Runner runnerOverride;
        private final TestClass testClass;

        private static List<Object> allParameters(TestClass testClass, FrameworkMethod frameworkMethod) {
            Object invokeExplosively = frameworkMethod.invokeExplosively(null, new Object[0]);
            if (invokeExplosively instanceof List) {
                return (List) invokeExplosively;
            }
            if (invokeExplosively instanceof Collection) {
                return new ArrayList((Collection) invokeExplosively);
            }
            if (invokeExplosively instanceof Iterable) {
                ArrayList arrayList = new ArrayList();
                Iterator it = ((Iterable) invokeExplosively).iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
                return arrayList;
            }
            if (invokeExplosively instanceof Object[]) {
                return Arrays.asList((Object[]) invokeExplosively);
            }
            throw parametersMethodReturnedWrongType(testClass, frameworkMethod);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<Runner> createRunners() {
            Runner runner = this.runnerOverride;
            if (runner != null) {
                return Collections.singletonList(runner);
            }
            return DesugarCollections.unmodifiableList(createRunnersForParameters(this.allParameters, ((Parameters) this.parametersMethod.getAnnotation(Parameters.class)).name(), getParametersRunnerFactory()));
        }

        private List<Runner> createRunnersForParameters(Iterable<Object> iterable, String str, ParametersRunnerFactory parametersRunnerFactory) {
            try {
                List<TestWithParameters> createTestsForParameters = createTestsForParameters(iterable, str);
                ArrayList arrayList = new ArrayList();
                Iterator<TestWithParameters> it = createTestsForParameters.iterator();
                while (it.hasNext()) {
                    arrayList.add(parametersRunnerFactory.createRunnerForTestWithParameters(it.next()));
                }
                return arrayList;
            } catch (ClassCastException unused) {
                throw parametersMethodReturnedWrongType(this.testClass, this.parametersMethod);
            }
        }

        private TestWithParameters createTestWithNotNormalizedParameters(String str, int i, Object obj) {
            return createTestWithParameters(this.testClass, str, i, normalizeParameters(obj));
        }

        private TestWithParameters createTestWithParameters(TestClass testClass, String str, int i, Object[] objArr) {
            return new TestWithParameters(AbstractC0362x4440ab85.m2932x95f25580("[", MessageFormat.format(str.replaceAll("\\{index\\}", Integer.toString(i)), objArr), "]"), testClass, Arrays.asList(objArr));
        }

        private List<TestWithParameters> createTestsForParameters(Iterable<Object> iterable, String str) {
            ArrayList arrayList = new ArrayList();
            Iterator<Object> it = iterable.iterator();
            int i = 0;
            while (it.hasNext()) {
                arrayList.add(createTestWithNotNormalizedParameters(str, i, it.next()));
                i++;
            }
            return arrayList;
        }

        private static FrameworkMethod getParametersMethod(TestClass testClass) {
            for (FrameworkMethod frameworkMethod : testClass.getAnnotatedMethods(Parameters.class)) {
                if (frameworkMethod.isStatic() && frameworkMethod.isPublic()) {
                    return frameworkMethod;
                }
            }
            throw new Exception("No public static parameters method on class " + testClass.getName());
        }

        private ParametersRunnerFactory getParametersRunnerFactory() {
            UseParametersRunnerFactory useParametersRunnerFactory = (UseParametersRunnerFactory) this.testClass.getAnnotation(UseParametersRunnerFactory.class);
            if (useParametersRunnerFactory == null) {
                return DEFAULT_FACTORY;
            }
            return useParametersRunnerFactory.value().newInstance();
        }

        private static Object[] normalizeParameters(Object obj) {
            if (obj instanceof Object[]) {
                return (Object[]) obj;
            }
            return new Object[]{obj};
        }

        private static Exception parametersMethodReturnedWrongType(TestClass testClass, FrameworkMethod frameworkMethod) {
            return new Exception(MessageFormat.format("{0}.{1}() must return an Iterable of arrays.", testClass.getName(), frameworkMethod.getName()));
        }

        private RunnersFactory(Class<?> cls) {
            List<Object> list;
            AssumptionViolationRunner assumptionViolationRunner;
            TestClass testClass = new TestClass(cls);
            this.testClass = testClass;
            FrameworkMethod parametersMethod = getParametersMethod(testClass);
            this.parametersMethod = parametersMethod;
            try {
                list = allParameters(testClass, parametersMethod);
                assumptionViolationRunner = null;
            } catch (AssumptionViolatedException e) {
                List<Object> emptyList = Collections.emptyList();
                AssumptionViolationRunner assumptionViolationRunner2 = new AssumptionViolationRunner(this.testClass, this.parametersMethod.getName(), e);
                list = emptyList;
                assumptionViolationRunner = assumptionViolationRunner2;
            }
            this.allParameters = list;
            this.runnerOverride = assumptionViolationRunner;
            this.parameterCount = list.isEmpty() ? 0 : normalizeParameters(list.get(0)).length;
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3.dex */
    public @interface UseParametersRunnerFactory {
        Class<? extends ParametersRunnerFactory> value() default BlockJUnit4ClassRunnerWithParametersFactory.class;
    }

    public Parameterized(Class<?> cls) {
        this(cls, new RunnersFactory(cls));
    }

    private void validateBeforeParamAndAfterParamMethods(Integer num) {
        ArrayList arrayList = new ArrayList();
        validatePublicStaticVoidMethods(BeforeParam.class, num, arrayList);
        validatePublicStaticVoidMethods(AfterParam.class, num, arrayList);
        if (arrayList.isEmpty()) {
        } else {
            throw new InvalidTestClassError(getTestClass().getJavaClass(), arrayList);
        }
    }

    private void validatePublicStaticVoidMethods(Class<? extends Annotation> cls, Integer num, List<Throwable> list) {
        int length;
        for (FrameworkMethod frameworkMethod : getTestClass().getAnnotatedMethods(cls)) {
            frameworkMethod.validatePublicVoid(true, list);
            if (num != null && (length = frameworkMethod.getMethod().getParameterTypes().length) != 0 && length != num.intValue()) {
                list.add(new Exception("Method " + frameworkMethod.getName() + "() should have 0 or " + num + " parameter(s)"));
            }
        }
    }

    private Parameterized(Class<?> cls, RunnersFactory runnersFactory) {
        super(cls, (List<Runner>) runnersFactory.createRunners());
        validateBeforeParamAndAfterParamMethods(Integer.valueOf(runnersFactory.parameterCount));
    }
}
