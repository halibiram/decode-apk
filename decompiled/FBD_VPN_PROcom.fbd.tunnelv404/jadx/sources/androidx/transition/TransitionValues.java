package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.NonNull;
import defpackage.AbstractC0362x4440ab85;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class TransitionValues {

    @SuppressLint({"UnknownNullness"})
    public View view;
    public final Map<String, Object> values = new HashMap();
    final ArrayList<Transition> mTargetedTransitions = new ArrayList<>();

    @Deprecated
    public TransitionValues() {
    }

    public boolean equals(Object obj) {
        if (obj instanceof TransitionValues) {
            TransitionValues transitionValues = (TransitionValues) obj;
            if (this.view == transitionValues.view && this.values.equals(transitionValues.values)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return this.values.hashCode() + (this.view.hashCode() * 31);
    }

    @NonNull
    public String toString() {
        StringBuilder m2943xc20437a5 = AbstractC0362x4440ab85.m2943xc20437a5("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        m2943xc20437a5.append(this.view);
        m2943xc20437a5.append("\n");
        String m2931x34271fae = AbstractC0362x4440ab85.m2931x34271fae(m2943xc20437a5.toString(), "    values:");
        for (String str : this.values.keySet()) {
            m2931x34271fae = m2931x34271fae + "    " + str + ": " + this.values.get(str) + "\n";
        }
        return m2931x34271fae;
    }

    public TransitionValues(@NonNull View view) {
        this.view = view;
    }
}
