package com.google.android.gms.common.data;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import org.spongycastle.util.Strings;

/* loaded from: classes2.dex */
public final class DataBufferUtils {

    @NonNull
    @KeepForSdk
    public static final String KEY_NEXT_PAGE_TOKEN = new ObfuscatedString(new long[]{6678840280885292452L, -527353641345363274L, -8328014779557502620L}).toString();

    @NonNull
    @KeepForSdk
    public static final String KEY_PREV_PAGE_TOKEN = new ObfuscatedString(new long[]{3559873907832567252L, 2369581743302989755L, 1998178285233734155L}).toString();

    private DataBufferUtils() {
    }

    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freezeAndClose(@NonNull DataBuffer<E> dataBuffer) {
        Strings.StringListImpl stringListImpl = (ArrayList<T>) new ArrayList(dataBuffer.getCount());
        try {
            Iterator<E> it = dataBuffer.iterator();
            while (it.hasNext()) {
                stringListImpl.add((Strings.StringListImpl) it.next().freeze());
            }
            return stringListImpl;
        } finally {
            dataBuffer.close();
        }
    }

    public static boolean hasData(@NonNull DataBuffer<?> dataBuffer) {
        if (dataBuffer != null && dataBuffer.getCount() > 0) {
            return true;
        }
        return false;
    }

    public static boolean hasNextPage(@NonNull DataBuffer<?> dataBuffer) {
        Bundle metadata = dataBuffer.getMetadata();
        if (metadata != null && metadata.getString(new ObfuscatedString(new long[]{-4137415980654819249L, 278675118281057353L, -7749753776855197508L}).toString()) != null) {
            return true;
        }
        return false;
    }

    public static boolean hasPrevPage(@NonNull DataBuffer<?> dataBuffer) {
        Bundle metadata = dataBuffer.getMetadata();
        if (metadata != null && metadata.getString(new ObfuscatedString(new long[]{-3785367643491750124L, -632698691423487760L, 5228977483593627610L}).toString()) != null) {
            return true;
        }
        return false;
    }
}
