package com.google.android.material.resources;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import com.panda912.muddy.ObfuscatedString;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class MaterialAttributes {
    @Nullable
    public static TypedValue resolve(@NonNull Context context, @AttrRes int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean resolveBoolean(@NonNull Context context, @AttrRes int i, boolean z) {
        TypedValue resolve = resolve(context, i);
        if (resolve != null && resolve.type == 18) {
            if (resolve.data != 0) {
                return true;
            }
            return false;
        }
        return z;
    }

    public static boolean resolveBooleanOrThrow(@NonNull Context context, @AttrRes int i, @NonNull String str) {
        if (resolveOrThrow(context, i, str) != 0) {
            return true;
        }
        return false;
    }

    @Px
    public static int resolveDimension(@NonNull Context context, @AttrRes int i, @DimenRes int i2) {
        float dimension;
        TypedValue resolve = resolve(context, i);
        if (resolve != null && resolve.type == 5) {
            dimension = resolve.getDimension(context.getResources().getDisplayMetrics());
        } else {
            dimension = context.getResources().getDimension(i2);
        }
        return (int) dimension;
    }

    public static int resolveInteger(@NonNull Context context, @AttrRes int i, int i2) {
        TypedValue resolve = resolve(context, i);
        if (resolve != null && resolve.type == 16) {
            return resolve.data;
        }
        return i2;
    }

    @Px
    public static int resolveMinimumAccessibleTouchTarget(@NonNull Context context) {
        return resolveDimension(context, R.attr.minTouchTargetSize, R.dimen.mtrl_min_touch_target_size);
    }

    public static int resolveOrThrow(@NonNull Context context, @AttrRes int i, @NonNull String str) {
        return resolveTypedValueOrThrow(context, i, str).data;
    }

    @NonNull
    public static TypedValue resolveTypedValueOrThrow(@NonNull View view, @AttrRes int i) {
        return resolveTypedValueOrThrow(view.getContext(), i, view.getClass().getCanonicalName());
    }

    public static int resolveOrThrow(@NonNull View view, @AttrRes int i) {
        return resolveTypedValueOrThrow(view, i).data;
    }

    @NonNull
    public static TypedValue resolveTypedValueOrThrow(@NonNull Context context, @AttrRes int i, @NonNull String str) {
        TypedValue resolve = resolve(context, i);
        if (resolve != null) {
            return resolve;
        }
        throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-1073999319852983184L, -4448296202430111647L, 4630112302362839242L, -4751726681582455490L, -5446184734333997433L, 978851027014009247L, -6438118032924459451L, -4882073372797885736L, -7533658784036717668L, -3324235688231842249L, -3437503499151996023L, -4130639874606529450L, -5260317999801818046L, 8966714512704051538L, -916792255827038417L, 6822709730427574818L, -802031217168870053L, 7023379294021653768L, 8692787281815056966L, -3306790419940262465L, -4383763896480860761L, 8096727957198131122L, 4241140629608401154L, -943345114435659678L, 1632513886906508812L, -8430607970037494071L, 4148598692971162370L}).toString(), str, context.getResources().getResourceName(i)));
    }
}
