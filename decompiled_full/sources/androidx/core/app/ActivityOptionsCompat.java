package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class ActivityOptionsCompat {
    public static final String EXTRA_USAGE_TIME_REPORT = "android.activity.usage_time";
    public static final String EXTRA_USAGE_TIME_REPORT_PACKAGES = "android.usage_time_packages";

    /* loaded from: classes.dex */
    public static class ActivityOptionsCompatImpl extends ActivityOptionsCompat {
        private final ActivityOptions mActivityOptions;

        public ActivityOptionsCompatImpl(ActivityOptions activityOptions) {
            this.mActivityOptions = activityOptions;
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public Rect getLaunchBounds() {
            Rect launchBounds;
            if (Build.VERSION.SDK_INT >= 24) {
                launchBounds = this.mActivityOptions.getLaunchBounds();
                return launchBounds;
            }
            return null;
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public int getLaunchDisplayId() {
            int launchDisplayId;
            if (Build.VERSION.SDK_INT >= 26) {
                launchDisplayId = this.mActivityOptions.getLaunchDisplayId();
                return launchDisplayId;
            }
            return -1;
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public void requestUsageTimeReport(PendingIntent pendingIntent) {
            if (Build.VERSION.SDK_INT >= 23) {
                this.mActivityOptions.requestUsageTimeReport(pendingIntent);
            }
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public ActivityOptionsCompat setLaunchBounds(Rect rect) {
            ActivityOptions launchBounds;
            if (Build.VERSION.SDK_INT >= 24) {
                launchBounds = this.mActivityOptions.setLaunchBounds(rect);
                return new ActivityOptionsCompatImpl(launchBounds);
            }
            return this;
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public ActivityOptionsCompat setLaunchDisplayId(int i) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.mActivityOptions.setLaunchDisplayId(i);
            }
            return this;
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        @SuppressLint({"WrongConstant"})
        public ActivityOptionsCompat setPendingIntentBackgroundActivityStartMode(int i) {
            boolean z;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 34) {
                this.mActivityOptions.setPendingIntentBackgroundActivityStartMode(i);
            } else if (i2 >= 33) {
                if (i != 2) {
                    z = true;
                } else {
                    z = false;
                }
                this.mActivityOptions.setPendingIntentBackgroundActivityLaunchAllowed(z);
            }
            return this;
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public ActivityOptionsCompat setShareIdentityEnabled(boolean z) {
            ActivityOptions shareIdentityEnabled;
            if (Build.VERSION.SDK_INT >= 34) {
                shareIdentityEnabled = this.mActivityOptions.setShareIdentityEnabled(z);
                return new ActivityOptionsCompatImpl(shareIdentityEnabled);
            }
            return this;
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public Bundle toBundle() {
            return this.mActivityOptions.toBundle();
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsCompatImpl) {
                this.mActivityOptions.update(((ActivityOptionsCompatImpl) activityOptionsCompat).mActivityOptions);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface BackgroundActivityStartMode {
    }

    public static ActivityOptionsCompat makeBasic() {
        ActivityOptions makeBasic;
        if (Build.VERSION.SDK_INT >= 23) {
            makeBasic = ActivityOptions.makeBasic();
            return new ActivityOptionsCompatImpl(makeBasic);
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeClipRevealAnimation(View view, int i, int i2, int i3, int i4) {
        ActivityOptions makeClipRevealAnimation;
        if (Build.VERSION.SDK_INT >= 23) {
            makeClipRevealAnimation = ActivityOptions.makeClipRevealAnimation(view, i, i2, i3, i4);
            return new ActivityOptionsCompatImpl(makeClipRevealAnimation);
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeCustomAnimation(Context context, int i, int i2) {
        return new ActivityOptionsCompatImpl(ActivityOptions.makeCustomAnimation(context, i, i2));
    }

    public static ActivityOptionsCompat makeScaleUpAnimation(View view, int i, int i2, int i3, int i4) {
        return new ActivityOptionsCompatImpl(ActivityOptions.makeScaleUpAnimation(view, i, i2, i3, i4));
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, View view, String str) {
        return new ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(activity, view, str));
    }

    public static ActivityOptionsCompat makeTaskLaunchBehind() {
        return new ActivityOptionsCompatImpl(ActivityOptions.makeTaskLaunchBehind());
    }

    public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(View view, Bitmap bitmap, int i, int i2) {
        return new ActivityOptionsCompatImpl(ActivityOptions.makeThumbnailScaleUpAnimation(view, bitmap, i, i2));
    }

    public Rect getLaunchBounds() {
        return null;
    }

    public int getLaunchDisplayId() {
        return -1;
    }

    public void requestUsageTimeReport(PendingIntent pendingIntent) {
    }

    public ActivityOptionsCompat setLaunchBounds(Rect rect) {
        return this;
    }

    public ActivityOptionsCompat setLaunchDisplayId(int i) {
        return this;
    }

    public ActivityOptionsCompat setPendingIntentBackgroundActivityStartMode(int i) {
        return this;
    }

    public ActivityOptionsCompat setShareIdentityEnabled(boolean z) {
        return this;
    }

    public Bundle toBundle() {
        return null;
    }

    public void update(ActivityOptionsCompat activityOptionsCompat) {
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, Pair<View, String>... pairArr) {
        android.util.Pair[] pairArr2;
        if (pairArr != null) {
            pairArr2 = new android.util.Pair[pairArr.length];
            for (int i = 0; i < pairArr.length; i++) {
                Pair<View, String> pair = pairArr[i];
                pairArr2[i] = android.util.Pair.create(pair.first, pair.second);
            }
        } else {
            pairArr2 = null;
        }
        return new ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(activity, pairArr2));
    }
}
