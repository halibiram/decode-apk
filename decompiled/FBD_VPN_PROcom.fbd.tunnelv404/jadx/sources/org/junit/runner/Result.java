package org.junit.runner;

import j$.util.DesugarCollections;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.junit.runner.notification.Failure;
import org.junit.runner.notification.RunListener;

/* loaded from: classes3.dex */
public class Result implements Serializable {
    private static final ObjectStreamField[] serialPersistentFields = ObjectStreamClass.lookup(SerializedForm.class).getFields();
    private static final long serialVersionUID = 1;
    private final AtomicInteger assumptionFailureCount;
    private final AtomicInteger count;
    private final CopyOnWriteArrayList<Failure> failures;
    private final AtomicInteger ignoreCount;
    private final AtomicLong runTime;
    private SerializedForm serializedForm;
    private final AtomicLong startTime;

    @RunListener.ThreadSafe
    /* loaded from: classes3.dex */
    public class Listener extends RunListener {
        private Listener() {
        }

        @Override // org.junit.runner.notification.RunListener
        public void testAssumptionFailure(Failure failure) {
            Result.this.assumptionFailureCount.getAndIncrement();
        }

        @Override // org.junit.runner.notification.RunListener
        public void testFailure(Failure failure) {
            Result.this.failures.add(failure);
        }

        @Override // org.junit.runner.notification.RunListener
        public void testFinished(Description description) {
            Result.this.count.getAndIncrement();
        }

        @Override // org.junit.runner.notification.RunListener
        public void testIgnored(Description description) {
            Result.this.ignoreCount.getAndIncrement();
        }

        @Override // org.junit.runner.notification.RunListener
        public void testRunFinished(Result result) {
            Result.this.runTime.addAndGet(System.currentTimeMillis() - Result.this.startTime.get());
        }

        @Override // org.junit.runner.notification.RunListener
        public void testRunStarted(Description description) {
            Result.this.startTime.set(System.currentTimeMillis());
        }
    }

    public Result() {
        this.count = new AtomicInteger();
        this.ignoreCount = new AtomicInteger();
        this.assumptionFailureCount = new AtomicInteger();
        this.failures = new CopyOnWriteArrayList<>();
        this.runTime = new AtomicLong();
        this.startTime = new AtomicLong();
    }

    private void readObject(ObjectInputStream objectInputStream) {
        this.serializedForm = SerializedForm.deserialize(objectInputStream);
    }

    private Object readResolve() {
        return new Result(this.serializedForm);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        new SerializedForm(this).serialize(objectOutputStream);
    }

    public RunListener createListener() {
        return new Listener();
    }

    public int getAssumptionFailureCount() {
        AtomicInteger atomicInteger = this.assumptionFailureCount;
        if (atomicInteger != null) {
            return atomicInteger.get();
        }
        throw new UnsupportedOperationException("Result was serialized from a version of JUnit that doesn't support this method");
    }

    public int getFailureCount() {
        return this.failures.size();
    }

    public List<Failure> getFailures() {
        return this.failures;
    }

    public int getIgnoreCount() {
        return this.ignoreCount.get();
    }

    public int getRunCount() {
        return this.count.get();
    }

    public long getRunTime() {
        return this.runTime.get();
    }

    public boolean wasSuccessful() {
        if (getFailureCount() == 0) {
            return true;
        }
        return false;
    }

    /* loaded from: classes3.dex */
    public static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 1;
        private final AtomicInteger assumptionFailureCount;
        private final AtomicInteger fCount;
        private final List<Failure> fFailures;
        private final AtomicInteger fIgnoreCount;
        private final long fRunTime;
        private final long fStartTime;

        public SerializedForm(Result result) {
            this.fCount = result.count;
            this.fIgnoreCount = result.ignoreCount;
            this.assumptionFailureCount = result.assumptionFailureCount;
            this.fFailures = DesugarCollections.synchronizedList(new ArrayList(result.failures));
            this.fRunTime = result.runTime.longValue();
            this.fStartTime = result.startTime.longValue();
        }

        public static SerializedForm deserialize(ObjectInputStream objectInputStream) {
            return new SerializedForm(objectInputStream.readFields());
        }

        public void serialize(ObjectOutputStream objectOutputStream) {
            ObjectOutputStream.PutField putFields = objectOutputStream.putFields();
            putFields.put("fCount", this.fCount);
            putFields.put("fIgnoreCount", this.fIgnoreCount);
            putFields.put("fFailures", this.fFailures);
            putFields.put("fRunTime", this.fRunTime);
            putFields.put("fStartTime", this.fStartTime);
            putFields.put("assumptionFailureCount", this.assumptionFailureCount);
            objectOutputStream.writeFields();
        }

        private SerializedForm(ObjectInputStream.GetField getField) {
            this.fCount = (AtomicInteger) getField.get("fCount", (Object) null);
            this.fIgnoreCount = (AtomicInteger) getField.get("fIgnoreCount", (Object) null);
            this.assumptionFailureCount = (AtomicInteger) getField.get("assumptionFailureCount", (Object) null);
            this.fFailures = (List) getField.get("fFailures", (Object) null);
            this.fRunTime = getField.get("fRunTime", 0L);
            this.fStartTime = getField.get("fStartTime", 0L);
        }
    }

    private Result(SerializedForm serializedForm) {
        this.count = serializedForm.fCount;
        this.ignoreCount = serializedForm.fIgnoreCount;
        this.assumptionFailureCount = serializedForm.assumptionFailureCount;
        this.failures = new CopyOnWriteArrayList<>(serializedForm.fFailures);
        this.runTime = new AtomicLong(serializedForm.fRunTime);
        this.startTime = new AtomicLong(serializedForm.fStartTime);
    }
}
