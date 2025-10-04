package com.google.android.material.color;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.UiModeManager;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.core.os.BuildCompat;
import com.google.android.material.R;
import com.google.android.material.color.DynamicColorsOptions;
import com.google.android.material.color.utilities.Hct;
import com.google.android.material.color.utilities.SchemeContent;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public class DynamicColors {
    private static final DeviceSupportCondition DEFAULT_DEVICE_SUPPORT_CONDITION;
    private static final Map<String, DeviceSupportCondition> DYNAMIC_COLOR_SUPPORTED_BRANDS;
    private static final Map<String, DeviceSupportCondition> DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS;
    private static final int[] DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE = {R.attr.dynamicColorThemeOverlay};

    @SuppressLint({"PrivateApi"})
    private static final DeviceSupportCondition SAMSUNG_DEVICE_SUPPORT_CONDITION;
    private static final String TAG;
    private static final int USE_DEFAULT_THEME_OVERLAY = 0;

    /* loaded from: classes2.dex */
    public interface DeviceSupportCondition {
        boolean isSupported();
    }

    /* loaded from: classes2.dex */
    public static class DynamicColorsActivityLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
        private final DynamicColorsOptions dynamicColorsOptions;

        public DynamicColorsActivityLifecycleCallbacks(@NonNull DynamicColorsOptions dynamicColorsOptions) {
            this.dynamicColorsOptions = dynamicColorsOptions;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
            DynamicColors.applyToActivityIfAvailable(activity, this.dynamicColorsOptions);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NonNull Activity activity) {
        }
    }

    /* loaded from: classes2.dex */
    public interface OnAppliedCallback {
        void onApplied(@NonNull Activity activity);
    }

    /* loaded from: classes2.dex */
    public interface Precondition {
        boolean shouldApplyDynamicColors(@NonNull Activity activity, @StyleRes int i);
    }

    static {
        DeviceSupportCondition deviceSupportCondition = new DeviceSupportCondition() { // from class: com.google.android.material.color.DynamicColors.1
            @Override // com.google.android.material.color.DynamicColors.DeviceSupportCondition
            public boolean isSupported() {
                return true;
            }
        };
        DEFAULT_DEVICE_SUPPORT_CONDITION = deviceSupportCondition;
        DeviceSupportCondition deviceSupportCondition2 = new DeviceSupportCondition() { // from class: com.google.android.material.color.DynamicColors.2
            private Long version;

            @Override // com.google.android.material.color.DynamicColors.DeviceSupportCondition
            public boolean isSupported() {
                if (this.version == null) {
                    try {
                        Method declaredMethod = Build.class.getDeclaredMethod(new ObfuscatedString(new long[]{6697227247516369984L, -2493545715065465357L}).toString(), String.class);
                        declaredMethod.setAccessible(true);
                        Long l = (Long) declaredMethod.invoke(null, new ObfuscatedString(new long[]{-199349906274123215L, 6117091194150261763L, 5666006879403619138L, -1179492780587999814L}).toString());
                        l.longValue();
                        this.version = l;
                    } catch (Exception unused) {
                        this.version = -1L;
                    }
                }
                if (this.version.longValue() < 40100) {
                    return false;
                }
                return true;
            }
        };
        SAMSUNG_DEVICE_SUPPORT_CONDITION = deviceSupportCondition2;
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-1282082541446215890L, -6619224150744059464L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{-8171876947353376888L, -7009020717559284463L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{2626254729626259394L, -7861064411434498878L, 6962759496617719101L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{-7753992974523454792L, -1066389814058502759L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{364900023700107543L, 3175894214221692595L, -8604112293584907009L, -2347310768115387795L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{9052011617263062966L, -325796930679457870L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{-5031386975917610947L, 3732130465536693521L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{6765504169943314946L, -9150547907501206450L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{7022968978977482627L, 8053045025811359200L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{8501971386095361664L, -2933389936286380540L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{-9102045990154521819L, -2129912844620833819L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{-918386248935228508L, -6435190802359108832L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{-2188208718280231383L, 4001758160982399746L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{-6200975642870521893L, 8225284780185332046L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{6823322877504410887L, 168326535629842037L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{1547021395682971312L, -6968554754896934187L, 7112647837676009263L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{1418833025319233430L, 544200396799874679L}).toString(), deviceSupportCondition2);
        hashMap.put(new ObfuscatedString(new long[]{-5831504532051252734L, -3646241902369992672L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{-8493502443240169007L, 6753018013754100736L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{-2811678921144595229L, -7649653999619359577L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{6060688648853510764L, 7100162704916465717L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{5952732247087324264L, 5609195928628239759L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{-4320842193798723935L, -5927405389294187368L, 8312417208519674703L, -5731078314549383617L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{-7695446989572593325L, -3788700060425989646L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{2048455816174962999L, -1458734220016540103L}).toString(), deviceSupportCondition);
        hashMap.put(new ObfuscatedString(new long[]{5737427098207967345L, -3279117231546222838L}).toString(), deviceSupportCondition);
        DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS = DesugarCollections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(new ObfuscatedString(new long[]{-8518396804461369657L, 6172043624253183880L}).toString(), deviceSupportCondition);
        hashMap2.put(new ObfuscatedString(new long[]{8743385857799483531L, -4502238385191837859L}).toString(), deviceSupportCondition);
        DYNAMIC_COLOR_SUPPORTED_BRANDS = DesugarCollections.unmodifiableMap(hashMap2);
        TAG = "DynamicColors";
    }

    private DynamicColors() {
    }

    @Deprecated
    public static void applyIfAvailable(@NonNull Activity activity) {
        applyToActivityIfAvailable(activity);
    }

    public static void applyToActivitiesIfAvailable(@NonNull Application application) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().build());
    }

    public static void applyToActivityIfAvailable(@NonNull Activity activity) {
        applyToActivityIfAvailable(activity, new DynamicColorsOptions.Builder().build());
    }

    private static int getDefaultThemeOverlay(@NonNull Context context, int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    private static float getSystemContrast(Context context) {
        float contrast;
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService(new ObfuscatedString(new long[]{-6316411804522522107L, -5396075190532299094L}).toString());
        if (uiModeManager != null && Build.VERSION.SDK_INT >= 34) {
            contrast = uiModeManager.getContrast();
            return contrast;
        }
        return 0.0f;
    }

    @ChecksSdkIntAtLeast(api = 31)
    @SuppressLint({"DefaultLocale"})
    public static boolean isDynamicColorAvailable() {
        if (Build.VERSION.SDK_INT < 31) {
            return false;
        }
        if (BuildCompat.isAtLeastT()) {
            return true;
        }
        Map<String, DeviceSupportCondition> map = DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS;
        String str = Build.MANUFACTURER;
        Locale locale = Locale.ROOT;
        DeviceSupportCondition deviceSupportCondition = map.get(str.toLowerCase(locale));
        if (deviceSupportCondition == null) {
            deviceSupportCondition = DYNAMIC_COLOR_SUPPORTED_BRANDS.get(Build.BRAND.toLowerCase(locale));
        }
        if (deviceSupportCondition == null || !deviceSupportCondition.isSupported()) {
            return false;
        }
        return true;
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context) {
        return wrapContextIfAvailable(context, 0);
    }

    @Deprecated
    public static void applyIfAvailable(@NonNull Activity activity, @StyleRes int i) {
        applyToActivityIfAvailable(activity, new DynamicColorsOptions.Builder().setThemeOverlay(i).build());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(@NonNull Application application, @StyleRes int i) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().setThemeOverlay(i).build());
    }

    public static void applyToActivityIfAvailable(@NonNull Activity activity, @NonNull DynamicColorsOptions dynamicColorsOptions) {
        int i;
        if (isDynamicColorAvailable()) {
            if (dynamicColorsOptions.getContentBasedSeedColor() != null) {
                i = 0;
            } else if (dynamicColorsOptions.getThemeOverlay() == 0) {
                i = getDefaultThemeOverlay(activity, DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE);
            } else {
                i = dynamicColorsOptions.getThemeOverlay();
            }
            if (dynamicColorsOptions.getPrecondition().shouldApplyDynamicColors(activity, i)) {
                if (dynamicColorsOptions.getContentBasedSeedColor() != null) {
                    SchemeContent schemeContent = new SchemeContent(Hct.fromInt(dynamicColorsOptions.getContentBasedSeedColor().intValue()), !MaterialColors.isLightTheme(activity), getSystemContrast(activity));
                    ColorResourcesOverride m1201xfbe0c504 = AbstractC0214xfbe0c504.m1201xfbe0c504();
                    if (m1201xfbe0c504 == null || !m1201xfbe0c504.applyIfPossible(activity, MaterialColorUtilitiesHelper.createColorResourcesIdsToColorValues(schemeContent))) {
                        return;
                    }
                } else {
                    ThemeUtils.applyThemeOverlay(activity, i);
                }
                dynamicColorsOptions.getOnAppliedCallback().onApplied(activity);
            }
        }
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context, @StyleRes int i) {
        return wrapContextIfAvailable(context, new DynamicColorsOptions.Builder().setThemeOverlay(i).build());
    }

    @Deprecated
    public static void applyIfAvailable(@NonNull Activity activity, @NonNull Precondition precondition) {
        applyToActivityIfAvailable(activity, new DynamicColorsOptions.Builder().setPrecondition(precondition).build());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(@NonNull Application application, @NonNull Precondition precondition) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().setPrecondition(precondition).build());
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context, @NonNull DynamicColorsOptions dynamicColorsOptions) {
        if (!isDynamicColorAvailable()) {
            return context;
        }
        int themeOverlay = dynamicColorsOptions.getThemeOverlay();
        if (themeOverlay == 0) {
            themeOverlay = getDefaultThemeOverlay(context, DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE);
        }
        if (themeOverlay == 0) {
            return context;
        }
        if (dynamicColorsOptions.getContentBasedSeedColor() != null) {
            SchemeContent schemeContent = new SchemeContent(Hct.fromInt(dynamicColorsOptions.getContentBasedSeedColor().intValue()), !MaterialColors.isLightTheme(context), getSystemContrast(context));
            ColorResourcesOverride m1201xfbe0c504 = AbstractC0214xfbe0c504.m1201xfbe0c504();
            if (m1201xfbe0c504 != null) {
                return m1201xfbe0c504.wrapContextIfPossible(context, MaterialColorUtilitiesHelper.createColorResourcesIdsToColorValues(schemeContent));
            }
        }
        return new ContextThemeWrapper(context, themeOverlay);
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(@NonNull Application application, @StyleRes int i, @NonNull Precondition precondition) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().setThemeOverlay(i).setPrecondition(precondition).build());
    }

    public static void applyToActivitiesIfAvailable(@NonNull Application application, @NonNull DynamicColorsOptions dynamicColorsOptions) {
        application.registerActivityLifecycleCallbacks(new DynamicColorsActivityLifecycleCallbacks(dynamicColorsOptions));
    }
}
