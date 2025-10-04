package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.window.core.ExperimentalWindowApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@ExperimentalWindowApi
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0014J\b\u0010\u0019\u001a\u00020\u0006H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u001a"}, d2 = {"Landroidx/window/embedding/SplitPairFilter;", "", "primaryActivityName", "Landroid/content/ComponentName;", "secondaryActivityName", "secondaryActivityIntentAction", "", "(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V", "getPrimaryActivityName", "()Landroid/content/ComponentName;", "getSecondaryActivityIntentAction", "()Ljava/lang/String;", "getSecondaryActivityName", "equals", "", "other", "hashCode", "", "matchesActivityIntentPair", "primaryActivity", "Landroid/app/Activity;", "secondaryActivityIntent", "Landroid/content/Intent;", "matchesActivityPair", "secondaryActivity", "toString", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SplitPairFilter {

    @NotNull
    private final ComponentName primaryActivityName;

    @Nullable
    private final String secondaryActivityIntentAction;

    @NotNull
    private final ComponentName secondaryActivityName;

    public SplitPairFilter(@NotNull ComponentName primaryActivityName, @NotNull ComponentName secondaryActivityName, @Nullable String str) {
        String str2;
        CharSequence charSequence;
        String str3;
        int i;
        boolean z;
        Object obj;
        Intrinsics.checkNotNullParameter(primaryActivityName, "primaryActivityName");
        Intrinsics.checkNotNullParameter(secondaryActivityName, "secondaryActivityName");
        this.primaryActivityName = primaryActivityName;
        this.secondaryActivityName = secondaryActivityName;
        this.secondaryActivityIntentAction = str;
        String packageName = primaryActivityName.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "primaryActivityName.packageName");
        String className = primaryActivityName.getClassName();
        Intrinsics.checkNotNullExpressionValue(className, "primaryActivityName.className");
        String packageName2 = secondaryActivityName.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName2, "secondaryActivityName.packageName");
        String className2 = secondaryActivityName.getClassName();
        Intrinsics.checkNotNullExpressionValue(className2, "secondaryActivityName.className");
        if (packageName.length() != 0 && packageName2.length() != 0) {
            if (className.length() != 0 && className2.length() != 0) {
                if (StringsKt__StringsKt.contains$default((CharSequence) packageName, (CharSequence) "*", false, 2, (Object) null) && StringsKt__StringsKt.indexOf$default((CharSequence) packageName, "*", 0, false, 6, (Object) null) != packageName.length() - 1) {
                    throw new IllegalArgumentException("Wildcard in package name is only allowed at the end.");
                }
                if (StringsKt__StringsKt.contains$default((CharSequence) className, (CharSequence) "*", false, 2, (Object) null)) {
                    str2 = "Wildcard in package name is only allowed at the end.";
                    i = 2;
                    z = false;
                    charSequence = "*";
                    str3 = className2;
                    if (StringsKt__StringsKt.indexOf$default((CharSequence) className, "*", 0, false, 6, (Object) null) == className.length() - 1) {
                        obj = null;
                    } else {
                        throw new IllegalArgumentException("Wildcard in class name is only allowed at the end.");
                    }
                } else {
                    str2 = "Wildcard in package name is only allowed at the end.";
                    charSequence = "*";
                    str3 = className2;
                    i = 2;
                    z = false;
                    obj = null;
                }
                if (StringsKt__StringsKt.contains$default(packageName2, charSequence, z, i, obj) && StringsKt__StringsKt.indexOf$default((CharSequence) packageName2, "*", 0, false, 6, (Object) null) != packageName2.length() - 1) {
                    throw new IllegalArgumentException(str2);
                }
                if (StringsKt__StringsKt.contains$default(str3, charSequence, z, i, obj) && StringsKt__StringsKt.indexOf$default((CharSequence) str3, "*", 0, false, 6, (Object) null) != str3.length() - 1) {
                    throw new IllegalArgumentException("Wildcard in class name is only allowed at the end.");
                }
                return;
            }
            throw new IllegalArgumentException("Activity class name must not be empty.");
        }
        throw new IllegalArgumentException("Package name must not be empty");
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SplitPairFilter)) {
            return false;
        }
        SplitPairFilter splitPairFilter = (SplitPairFilter) other;
        if (Intrinsics.areEqual(this.primaryActivityName, splitPairFilter.primaryActivityName) && Intrinsics.areEqual(this.secondaryActivityName, splitPairFilter.secondaryActivityName) && Intrinsics.areEqual(this.secondaryActivityIntentAction, splitPairFilter.secondaryActivityIntentAction)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ComponentName getPrimaryActivityName() {
        return this.primaryActivityName;
    }

    @Nullable
    public final String getSecondaryActivityIntentAction() {
        return this.secondaryActivityIntentAction;
    }

    @NotNull
    public final ComponentName getSecondaryActivityName() {
        return this.secondaryActivityName;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (this.secondaryActivityName.hashCode() + (this.primaryActivityName.hashCode() * 31)) * 31;
        String str = this.secondaryActivityIntentAction;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final boolean matchesActivityIntentPair(@NotNull Activity primaryActivity, @NotNull Intent secondaryActivityIntent) {
        Intrinsics.checkNotNullParameter(primaryActivity, "primaryActivity");
        Intrinsics.checkNotNullParameter(secondaryActivityIntent, "secondaryActivityIntent");
        ComponentName componentName = primaryActivity.getComponentName();
        MatcherUtils matcherUtils = MatcherUtils.INSTANCE;
        if (!matcherUtils.areComponentsMatching$window_release(componentName, this.primaryActivityName) || !matcherUtils.areComponentsMatching$window_release(secondaryActivityIntent.getComponent(), this.secondaryActivityName)) {
            return false;
        }
        String str = this.secondaryActivityIntentAction;
        if (str != null && !Intrinsics.areEqual(str, secondaryActivityIntent.getAction())) {
            return false;
        }
        return true;
    }

    public final boolean matchesActivityPair(@NotNull Activity primaryActivity, @NotNull Activity secondaryActivity) {
        boolean z;
        Intrinsics.checkNotNullParameter(primaryActivity, "primaryActivity");
        Intrinsics.checkNotNullParameter(secondaryActivity, "secondaryActivity");
        MatcherUtils matcherUtils = MatcherUtils.INSTANCE;
        boolean z2 = false;
        if (matcherUtils.areComponentsMatching$window_release(primaryActivity.getComponentName(), this.primaryActivityName) && matcherUtils.areComponentsMatching$window_release(secondaryActivity.getComponentName(), this.secondaryActivityName)) {
            z = true;
        } else {
            z = false;
        }
        if (secondaryActivity.getIntent() != null) {
            if (z) {
                Intent intent = secondaryActivity.getIntent();
                Intrinsics.checkNotNullExpressionValue(intent, "secondaryActivity.intent");
                if (matchesActivityIntentPair(primaryActivity, intent)) {
                    z2 = true;
                }
            }
            return z2;
        }
        return z;
    }

    @NotNull
    public String toString() {
        return "SplitPairFilter{primaryActivityName=" + this.primaryActivityName + ", secondaryActivityName=" + this.secondaryActivityName + ", secondaryActivityAction=" + ((Object) this.secondaryActivityIntentAction) + '}';
    }
}
