package org.junit.runners.model;

import j$.util.DesugarCollections;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.junit.TestCouldNotBeSkippedException;
import org.junit.internal.AssumptionViolatedException;
import org.junit.internal.Throwables;

/* loaded from: classes3.dex */
public class MultipleFailureException extends Exception {
    private static final long serialVersionUID = 1;
    private final List<Throwable> fErrors;

    public MultipleFailureException(List<Throwable> list) {
        if (!list.isEmpty()) {
            this.fErrors = new ArrayList(list.size());
            for (Throwable th : list) {
                if (th instanceof AssumptionViolatedException) {
                    th = new TestCouldNotBeSkippedException((AssumptionViolatedException) th);
                }
                this.fErrors.add(th);
            }
            return;
        }
        throw new IllegalArgumentException("List of Throwables must not be empty");
    }

    public static void assertEmpty(List<Throwable> list) {
        if (list.isEmpty()) {
            return;
        }
        if (list.size() == 1) {
            throw Throwables.rethrowAsException(list.get(0));
        }
        throw new org.junit.internal.runners.model.MultipleFailureException(list);
    }

    public List<Throwable> getFailures() {
        return DesugarCollections.unmodifiableList(this.fErrors);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder sb = new StringBuilder(String.format("There were %d errors:", Integer.valueOf(this.fErrors.size())));
        for (Throwable th : this.fErrors) {
            sb.append(String.format("%n  %s(%s)", th.getClass().getName(), th.getMessage()));
        }
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        Iterator<Throwable> it = this.fErrors.iterator();
        while (it.hasNext()) {
            it.next().printStackTrace();
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        Iterator<Throwable> it = this.fErrors.iterator();
        while (it.hasNext()) {
            it.next().printStackTrace(printStream);
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        Iterator<Throwable> it = this.fErrors.iterator();
        while (it.hasNext()) {
            it.next().printStackTrace(printWriter);
        }
    }
}
