package androidx.test.runner.lifecycle;

/* loaded from: classes.dex */
public interface ApplicationLifecycleMonitor {
    void addLifecycleCallback(ApplicationLifecycleCallback applicationLifecycleCallback);

    void removeLifecycleCallback(ApplicationLifecycleCallback applicationLifecycleCallback);
}
