package androidx.core.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.PackageManager;
import androidx.annotation.ReplaceWith;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes.dex */
public final class AccessibilityServiceInfoCompat {
    public static final int CAPABILITY_CAN_FILTER_KEY_EVENTS = 8;
    public static final int CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 4;
    public static final int CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION = 2;
    public static final int CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT = 1;
    public static final int FEEDBACK_ALL_MASK = -1;
    public static final int FEEDBACK_BRAILLE = 32;
    public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 2;
    public static final int FLAG_REPORT_VIEW_IDS = 16;
    public static final int FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 8;
    public static final int FLAG_REQUEST_FILTER_KEY_EVENTS = 32;
    public static final int FLAG_REQUEST_TOUCH_EXPLORATION_MODE = 4;

    private AccessibilityServiceInfoCompat() {
    }

    public static String capabilityToString(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i != 8) {
                        return "UNKNOWN";
                    }
                    return "CAPABILITY_CAN_FILTER_KEY_EVENTS";
                }
                return "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
            }
            return "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION";
        }
        return "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT";
    }

    public static String feedbackTypeToString(int i) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5("[");
        while (i > 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i);
            i &= ~numberOfTrailingZeros;
            if (m3341xc20437a5.length() > 1) {
                m3341xc20437a5.append(", ");
            }
            if (numberOfTrailingZeros != 1) {
                if (numberOfTrailingZeros != 2) {
                    if (numberOfTrailingZeros != 4) {
                        if (numberOfTrailingZeros != 8) {
                            if (numberOfTrailingZeros == 16) {
                                m3341xc20437a5.append("FEEDBACK_GENERIC");
                            }
                        } else {
                            m3341xc20437a5.append("FEEDBACK_VISUAL");
                        }
                    } else {
                        m3341xc20437a5.append("FEEDBACK_AUDIBLE");
                    }
                } else {
                    m3341xc20437a5.append("FEEDBACK_HAPTIC");
                }
            } else {
                m3341xc20437a5.append("FEEDBACK_SPOKEN");
            }
        }
        m3341xc20437a5.append("]");
        return m3341xc20437a5.toString();
    }

    public static String flagToString(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i != 8) {
                        if (i != 16) {
                            if (i != 32) {
                                return null;
                            }
                            return "FLAG_REQUEST_FILTER_KEY_EVENTS";
                        }
                        return "FLAG_REPORT_VIEW_IDS";
                    }
                    return "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
                }
                return "FLAG_REQUEST_TOUCH_EXPLORATION_MODE";
            }
            return "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS";
        }
        return "DEFAULT";
    }

    @ReplaceWith(expression = "info.getCapabilities()")
    @Deprecated
    public static int getCapabilities(AccessibilityServiceInfo accessibilityServiceInfo) {
        return accessibilityServiceInfo.getCapabilities();
    }

    @ReplaceWith(expression = "info.loadDescription(packageManager)")
    @Deprecated
    public static String loadDescription(AccessibilityServiceInfo accessibilityServiceInfo, PackageManager packageManager) {
        return accessibilityServiceInfo.loadDescription(packageManager);
    }
}
