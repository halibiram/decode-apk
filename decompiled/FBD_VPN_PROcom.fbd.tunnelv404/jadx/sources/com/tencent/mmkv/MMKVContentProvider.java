package com.tencent.mmkv;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class MMKVContentProvider extends ContentProvider {
    private static Uri gUri;
    protected static final String KEY = new ObfuscatedString(new long[]{-7285075393585524249L, -6962699434372488226L}).toString();
    protected static final String KEY_SIZE = new ObfuscatedString(new long[]{6276534442648474069L, -1826066145767161394L}).toString();
    protected static final String KEY_MODE = new ObfuscatedString(new long[]{-7073146035939009523L, 7633485659492410532L}).toString();
    protected static final String KEY_CRYPT = new ObfuscatedString(new long[]{6875932984188909390L, 1706007241745735301L, 7877783282607855978L}).toString();
    protected static final String FUNCTION_NAME = new ObfuscatedString(new long[]{-7048631279072897562L, -2055269193373602283L, -6013119140293251371L}).toString();

    @Nullable
    public static Uri contentUri(Context context) {
        String queryAuthority;
        Uri uri = gUri;
        if (uri != null) {
            return uri;
        }
        if (context == null || (queryAuthority = queryAuthority(context)) == null) {
            return null;
        }
        Uri parse = Uri.parse(new ObfuscatedString(new long[]{-3194388090890183994L, -5059343436403368184L, 6858100298193957711L}).toString() + queryAuthority);
        gUri = parse;
        return parse;
    }

    public static String getProcessNameByPID(@NonNull Context context, int i) {
        if (i == Process.myPid()) {
            return MMKVProcessUtil.getCurrentProcessName(context);
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService(new ObfuscatedString(new long[]{8896819268445058070L, -5291429813578432719L}).toString());
        if (activityManager != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == i) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return new ObfuscatedString(new long[]{-6410801025110770146L}).toString();
    }

    @NonNull
    private Bundle mmkvFromAshmemID(String str, int i, int i2, String str2) {
        MMKV mmkvWithAshmemID = MMKV.mmkvWithAshmemID(getContext(), str, i, i2, str2);
        ParcelableMMKV parcelableMMKV = new ParcelableMMKV(mmkvWithAshmemID);
        new ObfuscatedString(new long[]{-7563562688512915608L, -1264691997591654521L}).toString();
        new ObfuscatedString(new long[]{52433965607414448L, -6916225738729171432L}).toString();
        mmkvWithAshmemID.ashmemFD();
        new ObfuscatedString(new long[]{377491416838711074L, -4849504501867766064L, -9132107250342468441L}).toString();
        mmkvWithAshmemID.ashmemMetaFD();
        Bundle bundle = new Bundle();
        bundle.putParcelable(new ObfuscatedString(new long[]{2706192499025886515L, -5238269759796884057L}).toString(), parcelableMMKV);
        return bundle;
    }

    @Nullable
    private static String queryAuthority(Context context) {
        ProviderInfo providerInfo;
        try {
            ComponentName componentName = new ComponentName(context, MMKVContentProvider.class.getName());
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (providerInfo = packageManager.getProviderInfo(componentName, 0)) != null) {
                return providerInfo.authority;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Bundle call(@NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        if (str.equals(new ObfuscatedString(new long[]{-430213510714994371L, -3592288573651838355L, -489728893729435036L}).toString()) && bundle != null) {
            try {
                return mmkvFromAshmemID(str2, bundle.getInt(new ObfuscatedString(new long[]{5802683453085534116L, 7446734476481573842L}).toString()), bundle.getInt(new ObfuscatedString(new long[]{1256283753963443556L, -8673408359347451255L}).toString()), bundle.getString(new ObfuscatedString(new long[]{-6089522216828986251L, 9007915730620346175L, 329754430651967619L}).toString()));
            } catch (Exception e) {
                new ObfuscatedString(new long[]{-8580176632839666155L, -6875640954686088941L}).toString();
                e.getMessage();
            }
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{755322332560742564L, 8822319308431162332L, -4067207426736028651L, 1002707464467550962L}).toString());
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-3509893362210219281L, 4011295783690186903L, -9033186677091583837L, -4705052197621704869L}).toString());
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        if (getContext() == null) {
            return false;
        }
        return true;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-960582181311923944L, -4747027471717067445L, -2158669891488806592L, -5226886908597750668L}).toString());
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{3737890433627829828L, 8579967347681917549L, -1623935094721667899L, -5296994866485555180L}).toString());
    }
}
