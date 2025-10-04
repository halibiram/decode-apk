package org.junit.runners;

import j$.util.DesugarCollections;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.ClassRule;
import org.junit.FixMethodOrder;
import org.junit.internal.AssumptionViolatedException;
import org.junit.internal.Checks;
import org.junit.internal.runners.model.EachTestNotifier;
import org.junit.internal.runners.rules.RuleMemberValidator;
import org.junit.internal.runners.statements.RunAfters;
import org.junit.internal.runners.statements.RunBefores;
import org.junit.rules.RunRules;
import org.junit.rules.TestRule;
import org.junit.runner.Description;
import org.junit.runner.Runner;
import org.junit.runner.manipulation.Filter;
import org.junit.runner.manipulation.Filterable;
import org.junit.runner.manipulation.NoTestsRemainException;
import org.junit.runner.manipulation.Orderable;
import org.junit.runner.manipulation.Orderer;
import org.junit.runner.manipulation.Sorter;
import org.junit.runner.notification.RunNotifier;
import org.junit.runner.notification.StoppedByUserException;
import org.junit.runners.RuleContainer;
import org.junit.runners.model.FrameworkMember;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.InvalidTestClassError;
import org.junit.runners.model.MemberValueConsumer;
import org.junit.runners.model.RunnerScheduler;
import org.junit.runners.model.Statement;
import org.junit.runners.model.TestClass;
import org.junit.validator.AnnotationsValidator;
import org.junit.validator.TestClassValidator;

/* loaded from: classes3.dex */
public abstract class ParentRunner<T> extends Runner implements Filterable, Orderable {
    private static final List<TestClassValidator> VALIDATORS = Collections.singletonList(new AnnotationsValidator());
    private final Lock childrenLock = new ReentrantLock();
    private volatile List<T> filteredChildren = null;
    private volatile RunnerScheduler scheduler = new RunnerScheduler() { // from class: org.junit.runners.ParentRunner.1
        @Override // org.junit.runners.model.RunnerScheduler
        public void finished() {
        }

        @Override // org.junit.runners.model.RunnerScheduler
        public void schedule(Runnable runnable) {
            runnable.run();
        }
    };
    private final TestClass testClass;

    /* loaded from: classes3.dex */
    public static class ClassRuleCollector implements MemberValueConsumer<TestRule> {
        final List<RuleContainer.RuleEntry> entries;

        private ClassRuleCollector() {
            this.entries = new ArrayList();
        }

        @Override // org.junit.runners.model.MemberValueConsumer
        public /* bridge */ /* synthetic */ void accept(FrameworkMember frameworkMember, TestRule testRule) {
            accept2((FrameworkMember<?>) frameworkMember, testRule);
        }

        public List<TestRule> getOrderedRules() {
            Collections.sort(this.entries, RuleContainer.ENTRY_COMPARATOR);
            ArrayList arrayList = new ArrayList(this.entries.size());
            Iterator<RuleContainer.RuleEntry> it = this.entries.iterator();
            while (it.hasNext()) {
                arrayList.add((TestRule) it.next().rule);
            }
            return arrayList;
        }

        /* renamed from: accept, reason: avoid collision after fix types in other method */
        public void accept2(FrameworkMember<?> frameworkMember, TestRule testRule) {
            ClassRule classRule = (ClassRule) frameworkMember.getAnnotation(ClassRule.class);
            this.entries.add(new RuleContainer.RuleEntry(testRule, 1, classRule != null ? Integer.valueOf(classRule.order()) : null));
        }
    }

    public ParentRunner(Class<?> cls) {
        this.testClass = createTestClass(cls);
        validate();
    }

    private void applyValidators(List<Throwable> list) {
        if (getTestClass().getJavaClass() != null) {
            Iterator<TestClassValidator> it = VALIDATORS.iterator();
            while (it.hasNext()) {
                list.addAll(it.next().validateTestClass(getTestClass()));
            }
        }
    }

    private boolean areAllChildrenIgnored() {
        Iterator<T> it = getFilteredChildren().iterator();
        while (it.hasNext()) {
            if (!isIgnored(it.next())) {
                return false;
            }
        }
        return true;
    }

    private Comparator<? super T> comparator(final Sorter sorter) {
        return new Comparator<T>() { // from class: org.junit.runners.ParentRunner.5
            @Override // java.util.Comparator
            public int compare(T t, T t2) {
                return sorter.compare(ParentRunner.this.describeChild(t), ParentRunner.this.describeChild(t2));
            }
        };
    }

    private List<T> getFilteredChildren() {
        if (this.filteredChildren == null) {
            this.childrenLock.lock();
            try {
                if (this.filteredChildren == null) {
                    this.filteredChildren = DesugarCollections.unmodifiableList(new ArrayList(getChildren()));
                }
            } finally {
                this.childrenLock.unlock();
            }
        }
        return this.filteredChildren;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runChildren(final RunNotifier runNotifier) {
        RunnerScheduler runnerScheduler = this.scheduler;
        try {
            for (final T t : getFilteredChildren()) {
                runnerScheduler.schedule(new Runnable() { // from class: org.junit.runners.ParentRunner.4
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        ParentRunner.this.runChild(t, runNotifier);
                    }
                });
            }
        } finally {
            runnerScheduler.finished();
        }
    }

    private boolean shouldNotReorder() {
        if (getDescription().getAnnotation(FixMethodOrder.class) != null) {
            return true;
        }
        return false;
    }

    private boolean shouldRun(Filter filter, T t) {
        return filter.shouldRun(describeChild(t));
    }

    private void validate() {
        ArrayList arrayList = new ArrayList();
        collectInitializationErrors(arrayList);
        if (arrayList.isEmpty()) {
        } else {
            throw new InvalidTestClassError(this.testClass.getJavaClass(), arrayList);
        }
    }

    private void validateClassRules(List<Throwable> list) {
        RuleMemberValidator.CLASS_RULE_VALIDATOR.validate(getTestClass(), list);
        RuleMemberValidator.CLASS_RULE_METHOD_VALIDATOR.validate(getTestClass(), list);
    }

    private Statement withClassRules(Statement statement) {
        List<TestRule> classRules = classRules();
        if (!classRules.isEmpty()) {
            return new RunRules(statement, classRules, getDescription());
        }
        return statement;
    }

    public Statement childrenInvoker(final RunNotifier runNotifier) {
        return new Statement() { // from class: org.junit.runners.ParentRunner.2
            @Override // org.junit.runners.model.Statement
            public void evaluate() {
                ParentRunner.this.runChildren(runNotifier);
            }
        };
    }

    public Statement classBlock(RunNotifier runNotifier) {
        Statement childrenInvoker = childrenInvoker(runNotifier);
        if (!areAllChildrenIgnored()) {
            return withInterruptIsolation(withClassRules(withAfterClasses(withBeforeClasses(childrenInvoker))));
        }
        return childrenInvoker;
    }

    public List<TestRule> classRules() {
        ClassRuleCollector classRuleCollector = new ClassRuleCollector();
        this.testClass.collectAnnotatedMethodValues(null, ClassRule.class, TestRule.class, classRuleCollector);
        this.testClass.collectAnnotatedFieldValues(null, ClassRule.class, TestRule.class, classRuleCollector);
        return classRuleCollector.getOrderedRules();
    }

    public void collectInitializationErrors(List<Throwable> list) {
        validatePublicVoidNoArgMethods(BeforeClass.class, true, list);
        validatePublicVoidNoArgMethods(AfterClass.class, true, list);
        validateClassRules(list);
        applyValidators(list);
    }

    @Deprecated
    public TestClass createTestClass(Class<?> cls) {
        return new TestClass(cls);
    }

    public abstract Description describeChild(T t);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.junit.runner.manipulation.Filterable
    public void filter(Filter filter) {
        this.childrenLock.lock();
        try {
            ArrayList arrayList = new ArrayList(getFilteredChildren());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (shouldRun(filter, next)) {
                    try {
                        filter.apply(next);
                    } catch (NoTestsRemainException unused) {
                        it.remove();
                    }
                } else {
                    it.remove();
                }
            }
            this.filteredChildren = DesugarCollections.unmodifiableList(arrayList);
            if (!this.filteredChildren.isEmpty()) {
            } else {
                throw new NoTestsRemainException();
            }
        } finally {
            this.childrenLock.unlock();
        }
    }

    public abstract List<T> getChildren();

    @Override // org.junit.runner.Runner, org.junit.runner.Describable
    public Description getDescription() {
        Description createSuiteDescription;
        Class<?> javaClass = getTestClass().getJavaClass();
        if (javaClass != null && javaClass.getName().equals(getName())) {
            createSuiteDescription = Description.createSuiteDescription(javaClass, getRunnerAnnotations());
        } else {
            createSuiteDescription = Description.createSuiteDescription(getName(), getRunnerAnnotations());
        }
        Iterator<T> it = getFilteredChildren().iterator();
        while (it.hasNext()) {
            createSuiteDescription.addChild(describeChild(it.next()));
        }
        return createSuiteDescription;
    }

    public String getName() {
        return this.testClass.getName();
    }

    public Annotation[] getRunnerAnnotations() {
        return this.testClass.getAnnotations();
    }

    public final TestClass getTestClass() {
        return this.testClass;
    }

    public boolean isIgnored(T t) {
        return false;
    }

    @Override // org.junit.runner.manipulation.Orderable
    public void order(Orderer orderer) {
        if (shouldNotReorder()) {
            return;
        }
        this.childrenLock.lock();
        try {
            List<T> filteredChildren = getFilteredChildren();
            LinkedHashMap linkedHashMap = new LinkedHashMap(filteredChildren.size());
            for (T t : filteredChildren) {
                Description describeChild = describeChild(t);
                List list = (List) linkedHashMap.get(describeChild);
                if (list == null) {
                    list = new ArrayList(1);
                    linkedHashMap.put(describeChild, list);
                }
                list.add(t);
                orderer.apply(t);
            }
            List<Description> order = orderer.order(linkedHashMap.keySet());
            ArrayList arrayList = new ArrayList(filteredChildren.size());
            Iterator<Description> it = order.iterator();
            while (it.hasNext()) {
                arrayList.addAll((Collection) linkedHashMap.get(it.next()));
            }
            this.filteredChildren = DesugarCollections.unmodifiableList(arrayList);
            this.childrenLock.unlock();
        } catch (Throwable th) {
            this.childrenLock.unlock();
            throw th;
        }
    }

    @Override // org.junit.runner.Runner
    public void run(RunNotifier runNotifier) {
        EachTestNotifier eachTestNotifier = new EachTestNotifier(runNotifier, getDescription());
        eachTestNotifier.fireTestSuiteStarted();
        try {
            try {
                try {
                    try {
                        classBlock(runNotifier).evaluate();
                    } catch (StoppedByUserException e) {
                        throw e;
                    }
                } catch (Throwable th) {
                    eachTestNotifier.addFailure(th);
                }
            } catch (AssumptionViolatedException e2) {
                eachTestNotifier.addFailedAssumption(e2);
            }
            eachTestNotifier.fireTestSuiteFinished();
        } catch (Throwable th2) {
            eachTestNotifier.fireTestSuiteFinished();
            throw th2;
        }
    }

    public abstract void runChild(T t, RunNotifier runNotifier);

    public final void runLeaf(Statement statement, Description description, RunNotifier runNotifier) {
        EachTestNotifier eachTestNotifier = new EachTestNotifier(runNotifier, description);
        eachTestNotifier.fireTestStarted();
        try {
            try {
                statement.evaluate();
            } catch (Throwable th) {
                eachTestNotifier.fireTestFinished();
                throw th;
            }
        } catch (AssumptionViolatedException e) {
            eachTestNotifier.addFailedAssumption(e);
            eachTestNotifier.fireTestFinished();
        } catch (Throwable th2) {
            eachTestNotifier.addFailure(th2);
            eachTestNotifier.fireTestFinished();
        }
        eachTestNotifier.fireTestFinished();
    }

    public void setScheduler(RunnerScheduler runnerScheduler) {
        this.scheduler = runnerScheduler;
    }

    @Override // org.junit.runner.manipulation.Sortable
    public void sort(Sorter sorter) {
        if (shouldNotReorder()) {
            return;
        }
        this.childrenLock.lock();
        try {
            Iterator<T> it = getFilteredChildren().iterator();
            while (it.hasNext()) {
                sorter.apply(it.next());
            }
            ArrayList arrayList = new ArrayList(getFilteredChildren());
            Collections.sort(arrayList, comparator(sorter));
            this.filteredChildren = DesugarCollections.unmodifiableList(arrayList);
            this.childrenLock.unlock();
        } catch (Throwable th) {
            this.childrenLock.unlock();
            throw th;
        }
    }

    public void validatePublicVoidNoArgMethods(Class<? extends Annotation> cls, boolean z, List<Throwable> list) {
        Iterator<FrameworkMethod> it = getTestClass().getAnnotatedMethods(cls).iterator();
        while (it.hasNext()) {
            it.next().validatePublicVoidNoArg(z, list);
        }
    }

    public Statement withAfterClasses(Statement statement) {
        List<FrameworkMethod> annotatedMethods = this.testClass.getAnnotatedMethods(AfterClass.class);
        if (!annotatedMethods.isEmpty()) {
            return new RunAfters(statement, annotatedMethods, null);
        }
        return statement;
    }

    public Statement withBeforeClasses(Statement statement) {
        List<FrameworkMethod> annotatedMethods = this.testClass.getAnnotatedMethods(BeforeClass.class);
        if (!annotatedMethods.isEmpty()) {
            return new RunBefores(statement, annotatedMethods, null);
        }
        return statement;
    }

    public final Statement withInterruptIsolation(final Statement statement) {
        return new Statement() { // from class: org.junit.runners.ParentRunner.3
            @Override // org.junit.runners.model.Statement
            public void evaluate() {
                try {
                    statement.evaluate();
                } finally {
                    Thread.interrupted();
                }
            }
        };
    }

    public ParentRunner(TestClass testClass) {
        this.testClass = (TestClass) Checks.notNull(testClass);
        validate();
    }
}
