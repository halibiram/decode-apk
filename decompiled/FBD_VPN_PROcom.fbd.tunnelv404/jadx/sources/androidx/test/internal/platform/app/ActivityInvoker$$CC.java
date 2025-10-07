package androidx.test.internal.platform.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.annotation.RestrictTo;
import androidx.test.platform.app.InstrumentationRegistry;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class ActivityInvoker$$CC {
    private ActivityInvoker$$CC() {
    }

    public static Intent getIntentForActivity$$dflt$$(ActivityInvoker activityInvoker, Class<? extends Activity> cls) {
        Intent makeMainActivity = Intent.makeMainActivity(new ComponentName(InstrumentationRegistry.getInstrumentation().getTargetContext(), cls));
        if (InstrumentationRegistry.getInstrumentation().getTargetContext().getPackageManager().resolveActivity(makeMainActivity, 0) != null) {
            return makeMainActivity;
        }
        return Intent.makeMainActivity(new ComponentName(InstrumentationRegistry.getInstrumentation().getContext(), cls));
    }
}
