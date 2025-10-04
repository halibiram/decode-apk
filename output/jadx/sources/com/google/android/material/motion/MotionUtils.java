package com.google.android.material.motion;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.TypedValue;
import android.view.animation.AnimationUtils;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.core.graphics.PathParser;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.google.android.material.resources.MaterialAttributes;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public class MotionUtils {
    private static final String EASING_TYPE_CUBIC_BEZIER = new ObfuscatedString(new long[]{-2534161761657261724L, -4768979613223547285L, -8980193789264426537L}).toString();
    private static final String EASING_TYPE_PATH = new ObfuscatedString(new long[]{-1975341749896400411L, 8925955565800982186L}).toString();
    private static final String EASING_TYPE_FORMAT_START = new ObfuscatedString(new long[]{-7829058083002890102L, -3041353940711055108L}).toString();
    private static final String EASING_TYPE_FORMAT_END = new ObfuscatedString(new long[]{7866740890420917513L, 3123233753833542231L}).toString();

    private MotionUtils() {
    }

    private static float getLegacyControlPoint(String[] strArr, int i) {
        float parseFloat = Float.parseFloat(strArr[i]);
        if (parseFloat >= 0.0f && parseFloat <= 1.0f) {
            return parseFloat;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{7026656432579378440L, -5443864812612221853L, 183221168907404765L, -8399419357482980732L, -435473778392592309L, 7349388246411504519L, -3358149284724853436L, 4796608122258141163L, -3034301332163861909L, -4735983546745651254L}).toString() + parseFloat);
    }

    private static String getLegacyEasingContent(String str, String str2) {
        return str.substring(new ObfuscatedString(new long[]{6261077136834113966L, 3563363745234715569L}).toString().length() + str2.length(), str.length() - new ObfuscatedString(new long[]{-5865739116735071194L, -2327225844289975051L}).toString().length());
    }

    private static TimeInterpolator getLegacyThemeInterpolator(String str) {
        if (isLegacyEasingType(str, new ObfuscatedString(new long[]{-6361733105888462208L, 2407987260131939352L, -7733732747907872252L}).toString())) {
            String[] split = getLegacyEasingContent(str, new ObfuscatedString(new long[]{803840483437798449L, 3774873463577012418L, 5584369164697278982L}).toString()).split(new ObfuscatedString(new long[]{8956641873217319230L, 7710319700080444889L}).toString());
            if (split.length == 4) {
                return PathInterpolatorCompat.create(getLegacyControlPoint(split, 0), getLegacyControlPoint(split, 1), getLegacyControlPoint(split, 2), getLegacyControlPoint(split, 3));
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{345816437620341144L, 1511413151927622490L, -9055593702546871006L, -2835737265724891473L, 1975488787932016863L, -8183574682677165611L, 5483245844503749288L, -6447277140700774730L, 6425869235126430434L, 1940282848811689077L, -1597402124021164323L, -3917097724722466935L, -6489324360416002647L, -8107521416138267395L}).toString() + split.length);
        }
        if (isLegacyEasingType(str, new ObfuscatedString(new long[]{-5427495373914300056L, -5748428475609769188L}).toString())) {
            return PathInterpolatorCompat.create(PathParser.createPathFromPathData(getLegacyEasingContent(str, new ObfuscatedString(new long[]{8634828565929385619L, 832116520144403816L}).toString())));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{2618849330661718474L, 5542972347943595826L, -2004285866289881313L, -6428882377862823015L, 206486967449979867L}), new StringBuilder(), str));
    }

    private static boolean isLegacyEasingAttribute(String str) {
        if (!isLegacyEasingType(str, new ObfuscatedString(new long[]{7088357565810046904L, 8568841726713866100L, 7589120819552506849L}).toString()) && !isLegacyEasingType(str, new ObfuscatedString(new long[]{-6871197219565204594L, 5552711503088101696L}).toString())) {
            return false;
        }
        return true;
    }

    private static boolean isLegacyEasingType(String str, String str2) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str2);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{6598953949540509333L, 3641742163023084384L}).toString());
        if (str.startsWith(m3341xc20437a5.toString()) && str.endsWith(new ObfuscatedString(new long[]{6041617564782721163L, 1928832859512028107L}).toString())) {
            return true;
        }
        return false;
    }

    public static int resolveThemeDuration(@NonNull Context context, @AttrRes int i, int i2) {
        return MaterialAttributes.resolveInteger(context, i, i2);
    }

    @NonNull
    public static TimeInterpolator resolveThemeInterpolator(@NonNull Context context, @AttrRes int i, @NonNull TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type == 3) {
            String valueOf = String.valueOf(typedValue.string);
            if (isLegacyEasingAttribute(valueOf)) {
                return getLegacyThemeInterpolator(valueOf);
            }
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1778995957003090204L, 8954114075369857626L, 6828691557068343022L, -5263542424662549416L, -3078134500089727369L, -4512452165178169555L, 3442430551427771713L, 3938019523327142773L, -8775762916883593178L, 1683414357753843803L, -704839289665636893L, -3482893008716847043L, -6689616340427228253L, 8296041205394701863L, -6817057983612672216L, -8834611010779677168L, 9004620624590795064L, 35865785999488471L, -6407573974075288756L, 3992176307557960945L, -4519572348557501908L}).toString());
    }
}
