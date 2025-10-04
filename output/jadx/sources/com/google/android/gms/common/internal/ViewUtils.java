package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public class ViewUtils {
    private ViewUtils() {
    }

    @Nullable
    @KeepForSdk
    public static String getXmlAttributeString(@NonNull String str, @NonNull String str2, @NonNull Context context, @NonNull AttributeSet attributeSet, boolean z, boolean z2, @NonNull String str3) {
        String attributeValue;
        if (attributeSet == null) {
            attributeValue = null;
        } else {
            attributeValue = attributeSet.getAttributeValue(str, str2);
        }
        if (attributeValue != null && attributeValue.startsWith(new ObfuscatedString(new long[]{5221376683847332790L, -4589165718698834810L}).toString()) && z) {
            String substring = attributeValue.substring(8);
            String packageName = context.getPackageName();
            TypedValue typedValue = new TypedValue();
            try {
                context.getResources().getValue(packageName + new ObfuscatedString(new long[]{3012691062930508173L, 318277665897377271L}).toString() + substring, typedValue, true);
            } catch (Resources.NotFoundException unused) {
                new ObfuscatedString(new long[]{997033106959153510L, -1855167992411284270L, 1220270296625971902L, 19586349218447816L, -227519951170744803L}).toString();
                new ObfuscatedString(new long[]{612027893662942058L, 2120172027634747537L}).toString();
            }
            CharSequence charSequence = typedValue.string;
            if (charSequence != null) {
                attributeValue = charSequence.toString();
            } else {
                typedValue.toString();
                new ObfuscatedString(new long[]{-5336946851230921682L, 7215865838223413996L, -3733251913823715845L}).toString();
                new ObfuscatedString(new long[]{3326697938503044473L, -9039298088544020365L, 6792268538085651355L, 3156044291336802110L}).toString();
            }
        }
        if (z2 && attributeValue == null) {
            new ObfuscatedString(new long[]{-4544087574438412640L, 5798033555613230554L, 1657619700077227598L, 9131508926979793000L}).toString();
            new ObfuscatedString(new long[]{-6433899288368724872L, 5130950466407077210L, 4567067528449893943L}).toString();
        }
        return attributeValue;
    }
}
