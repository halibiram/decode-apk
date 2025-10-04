package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.window.core.ExperimentalWindowApi;
import defpackage.AbstractC1197x89633db9;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@ExperimentalWindowApi
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\fJ\u001f\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\u000fJ\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Landroidx/window/embedding/MatcherUtils;", "", "()V", "sDebugMatchers", "", "sMatchersTag", "", "areActivityOrIntentComponentsMatching", "activity", "Landroid/app/Activity;", "ruleComponent", "Landroid/content/ComponentName;", "areActivityOrIntentComponentsMatching$window_release", "areComponentsMatching", "activityComponent", "areComponentsMatching$window_release", "wildcardMatch", "name", "pattern", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MatcherUtils {

    @NotNull
    public static final MatcherUtils INSTANCE = new MatcherUtils();
    public static final boolean sDebugMatchers = false;

    @NotNull
    public static final String sMatchersTag = "SplitRuleResolution";

    private MatcherUtils() {
    }

    private final boolean wildcardMatch(String name, String pattern) {
        if (!StringsKt__StringsKt.contains$default((CharSequence) pattern, (CharSequence) "*", false, 2, (Object) null)) {
            return false;
        }
        if (Intrinsics.areEqual(pattern, "*")) {
            return true;
        }
        if (StringsKt__StringsKt.indexOf$default((CharSequence) pattern, "*", 0, false, 6, (Object) null) == StringsKt__StringsKt.lastIndexOf$default((CharSequence) pattern, "*", 0, false, 6, (Object) null) && AbstractC1197x89633db9.endsWith$default(pattern, "*", false, 2, null)) {
            String substring = pattern.substring(0, pattern.length() - 1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return AbstractC1197x89633db9.startsWith$default(name, substring, false, 2, null);
        }
        throw new IllegalArgumentException("Name pattern with a wildcard must only contain a single wildcard in the end");
    }

    public final boolean areActivityOrIntentComponentsMatching$window_release(@NotNull Activity activity, @NotNull ComponentName ruleComponent) {
        ComponentName component;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(ruleComponent, "ruleComponent");
        if (areComponentsMatching$window_release(activity.getComponentName(), ruleComponent)) {
            return true;
        }
        Intent intent = activity.getIntent();
        if (intent == null || (component = intent.getComponent()) == null) {
            return false;
        }
        return INSTANCE.areComponentsMatching$window_release(component, ruleComponent);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0089 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean areComponentsMatching$window_release(@Nullable ComponentName activityComponent, @NotNull ComponentName ruleComponent) {
        boolean z;
        boolean z2;
        Intrinsics.checkNotNullParameter(ruleComponent, "ruleComponent");
        if (activityComponent == null) {
            if (Intrinsics.areEqual(ruleComponent.getPackageName(), "*") && Intrinsics.areEqual(ruleComponent.getClassName(), "*")) {
                return true;
            }
            return false;
        }
        String componentName = activityComponent.toString();
        Intrinsics.checkNotNullExpressionValue(componentName, "activityComponent.toString()");
        if (!StringsKt__StringsKt.contains$default((CharSequence) componentName, (CharSequence) "*", false, 2, (Object) null)) {
            if (!Intrinsics.areEqual(activityComponent.getPackageName(), ruleComponent.getPackageName())) {
                String packageName = activityComponent.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "activityComponent.packageName");
                String packageName2 = ruleComponent.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName2, "ruleComponent.packageName");
                if (!wildcardMatch(packageName, packageName2)) {
                    z = false;
                    if (!Intrinsics.areEqual(activityComponent.getClassName(), ruleComponent.getClassName())) {
                        String className = activityComponent.getClassName();
                        Intrinsics.checkNotNullExpressionValue(className, "activityComponent.className");
                        String className2 = ruleComponent.getClassName();
                        Intrinsics.checkNotNullExpressionValue(className2, "ruleComponent.className");
                        if (!wildcardMatch(className, className2)) {
                            z2 = false;
                            if (!z && z2) {
                                return true;
                            }
                            return false;
                        }
                    }
                    z2 = true;
                    if (!z) {
                    }
                    return false;
                }
            }
            z = true;
            if (!Intrinsics.areEqual(activityComponent.getClassName(), ruleComponent.getClassName())) {
            }
            z2 = true;
            if (!z) {
            }
            return false;
        }
        throw new IllegalArgumentException("Wildcard can only be part of the rule.");
    }
}
