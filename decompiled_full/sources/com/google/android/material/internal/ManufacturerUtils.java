package com.google.android.material.internal;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class ManufacturerUtils {
    private static final String LGE = new ObfuscatedString(new long[]{-947232730594571035L, -5152284532324027581L}).toString();
    private static final String SAMSUNG = new ObfuscatedString(new long[]{2827677538772932055L, 939794555484033338L}).toString();
    private static final String MEIZU = new ObfuscatedString(new long[]{108261705056101917L, 8714505006166895568L}).toString();

    private ManufacturerUtils() {
    }

    @NonNull
    private static String getManufacturer() {
        String str = Build.MANUFACTURER;
        if (str != null) {
            return str.toLowerCase(Locale.ENGLISH);
        }
        return new ObfuscatedString(new long[]{841024418467104677L}).toString();
    }

    public static boolean isDateInputKeyboardMissingSeparatorCharacters() {
        if (!isLGEDevice() && !isSamsungDevice()) {
            return false;
        }
        return true;
    }

    public static boolean isLGEDevice() {
        return getManufacturer().equals(new ObfuscatedString(new long[]{-8291452018443452072L, -3226881859879310013L}).toString());
    }

    public static boolean isMeizuDevice() {
        return getManufacturer().equals(new ObfuscatedString(new long[]{-4346713261466095518L, -1067489052947075804L}).toString());
    }

    public static boolean isSamsungDevice() {
        return getManufacturer().equals(new ObfuscatedString(new long[]{-8613564979260423930L, -545683021408478783L}).toString());
    }
}
