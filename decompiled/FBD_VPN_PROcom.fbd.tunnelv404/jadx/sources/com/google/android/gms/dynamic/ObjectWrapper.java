package com.google.android.gms.dynamic;

import android.os.IBinder;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.RetainForClient;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.reflect.Field;

@RetainForClient
@KeepForSdk
/* loaded from: classes2.dex */
public final class ObjectWrapper<T> extends IObjectWrapper.Stub {
    private final Object zza;

    private ObjectWrapper(Object obj) {
        this.zza = obj;
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static <T> T unwrap(@NonNull IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper instanceof ObjectWrapper) {
            return (T) ((ObjectWrapper) iObjectWrapper).zza;
        }
        IBinder asBinder = iObjectWrapper.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i++;
                field = field2;
            }
        }
        if (i == 1) {
            Preconditions.checkNotNull(field);
            if (!field.isAccessible()) {
                field.setAccessible(true);
                try {
                    return (T) field.get(asBinder);
                } catch (IllegalAccessException e) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{6696579705092870356L, -2297452574869570440L, -983994805035162523L, -8001412447534933591L, 5125679989633068098L, -6619551278135430165L, -4939580218050598412L}).toString(), e);
                } catch (NullPointerException e2) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{1836521902478022984L, -8412657644662441730L, 8795547285666895567L, 95154500152521465L}).toString(), e2);
                }
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{2931467857640365048L, -5578516824617087941L, -5599230473598265510L, 1177699741275417801L, -2869162232810261161L, -8324802395050974473L, -7836482636362806380L}).toString());
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{7824518438436399846L, 6801354524908933607L, 2812205418528529510L, 2648121205178601786L, 179970268436578341L, -3102856710457120007L, 3978258655427029777L, 4997816997920887585L}), new StringBuilder(), declaredFields.length));
    }

    @NonNull
    @KeepForSdk
    public static <T> IObjectWrapper wrap(@NonNull T t) {
        return new ObjectWrapper(t);
    }
}
