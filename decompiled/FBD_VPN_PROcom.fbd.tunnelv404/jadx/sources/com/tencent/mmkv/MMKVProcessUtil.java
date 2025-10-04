package com.tencent.mmkv;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes3.dex */
class MMKVProcessUtil {
    private static String currentProcessName = new ObfuscatedString(new long[]{3405291410862828792L}).toString();

    public static String getCurrentProcessName(@NonNull Context context) {
        if (!TextUtils.isEmpty(currentProcessName)) {
            return currentProcessName;
        }
        String currentProcessNameByApplication = getCurrentProcessNameByApplication();
        currentProcessName = currentProcessNameByApplication;
        if (!TextUtils.isEmpty(currentProcessNameByApplication)) {
            return currentProcessName;
        }
        String currentProcessNameByActivityThread = getCurrentProcessNameByActivityThread();
        currentProcessName = currentProcessNameByActivityThread;
        if (!TextUtils.isEmpty(currentProcessNameByActivityThread)) {
            return currentProcessName;
        }
        String currentProcessNameByActivityManager = getCurrentProcessNameByActivityManager(context);
        currentProcessName = currentProcessNameByActivityManager;
        return currentProcessNameByActivityManager;
    }

    private static String getCurrentProcessNameByActivityManager(@NonNull Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService(new ObfuscatedString(new long[]{3863634981890795942L, 7954658057024164502L}).toString());
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return new ObfuscatedString(new long[]{356155758114006462L}).toString();
    }

    @NonNull
    private static String getCurrentProcessNameByActivityThread() {
        String obfuscatedString = new ObfuscatedString(new long[]{1751152434196627413L}).toString();
        try {
            Method declaredMethod = Class.forName(new ObfuscatedString(new long[]{-8544824266440044635L, -66110147518875994L, -3765017299762206036L, 8729892449022701339L, -3474118917341682867L}).toString()).getDeclaredMethod(new ObfuscatedString(new long[]{3603062830465237086L, -9075539597175247124L, -524399563676224219L, 8877305011953395458L}).toString(), null);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, null);
            if (invoke instanceof String) {
                return (String) invoke;
            }
            return obfuscatedString;
        } catch (Throwable th) {
            th.printStackTrace();
            return obfuscatedString;
        }
    }

    @NonNull
    private static String getCurrentProcessNameByApplication() {
        String processName;
        if (Build.VERSION.SDK_INT >= 28) {
            processName = Application.getProcessName();
            return processName;
        }
        return new ObfuscatedString(new long[]{-1969950228764718930L}).toString();
    }
}
