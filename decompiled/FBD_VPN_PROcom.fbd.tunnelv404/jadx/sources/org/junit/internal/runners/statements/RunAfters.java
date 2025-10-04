package org.junit.internal.runners.statements;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.MultipleFailureException;
import org.junit.runners.model.Statement;

/* loaded from: classes3.dex */
public class RunAfters extends Statement {
    private final List<FrameworkMethod> afters;
    private final Statement next;
    private final Object target;

    public RunAfters(Statement statement, List<FrameworkMethod> list, Object obj) {
        this.next = statement;
        this.afters = list;
        this.target = obj;
    }

    @Override // org.junit.runners.model.Statement
    public void evaluate() {
        ArrayList arrayList = new ArrayList();
        try {
            this.next.evaluate();
        } catch (Throwable th) {
            try {
                arrayList.add(th);
                Iterator<FrameworkMethod> it = this.afters.iterator();
                while (it.hasNext()) {
                    try {
                        invokeMethod(it.next());
                    } catch (Throwable th2) {
                        arrayList.add(th2);
                    }
                }
            } finally {
                Iterator<FrameworkMethod> it2 = this.afters.iterator();
                while (it2.hasNext()) {
                    try {
                        invokeMethod(it2.next());
                    } catch (Throwable th3) {
                        arrayList.add(th3);
                    }
                }
            }
        }
        MultipleFailureException.assertEmpty(arrayList);
    }

    public void invokeMethod(FrameworkMethod frameworkMethod) {
        frameworkMethod.invokeExplosively(this.target, new Object[0]);
    }
}
