package androidx.test.runner.intent;

/* loaded from: classes.dex */
public interface IntentMonitor {
    void addIntentCallback(IntentCallback intentCallback);

    void removeIntentCallback(IntentCallback intentCallback);
}
