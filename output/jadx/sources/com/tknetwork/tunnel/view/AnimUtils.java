package com.tknetwork.tunnel.view;

import android.app.Activity;
import com.fbd.tunnel.R;

/* loaded from: classes3.dex */
public class AnimUtils {
    public static void leftToRightAnimation(Activity activity) {
        activity.overridePendingTransition(R.transition.animation_leave, R.transition.animation_enter);
    }

    public static void rightToLeftAnimation(Activity activity) {
        activity.overridePendingTransition(R.transition.animation_enter, R.transition.animation_leave);
    }
}
