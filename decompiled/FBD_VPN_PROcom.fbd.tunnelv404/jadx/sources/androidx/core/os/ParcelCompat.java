package androidx.core.os;

import android.annotation.SuppressLint;
import android.os.BadParcelableException;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import defpackage.AbstractC0362x4440ab85;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class ParcelCompat {

    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static class Api29Impl {
        private Api29Impl() {
        }

        public static <T extends Parcelable> List<T> readParcelableList(Parcel parcel, List<T> list, ClassLoader classLoader) {
            return parcel.readParcelableList(list, classLoader);
        }

        public static void writeBoolean(Parcel parcel, boolean z) {
            parcel.writeBoolean(z);
        }
    }

    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class Api30Impl {
        private Api30Impl() {
        }

        public static Parcelable.Creator<?> readParcelableCreator(Parcel parcel, ClassLoader classLoader) {
            return parcel.readParcelableCreator(classLoader);
        }
    }

    @RequiresApi(33)
    /* loaded from: classes.dex */
    public static class Api33Impl {
        private Api33Impl() {
        }

        public static <T> T[] readArray(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
            return (T[]) parcel.readArray(classLoader, cls);
        }

        public static <T> ArrayList<T> readArrayList(Parcel parcel, ClassLoader classLoader, Class<? extends T> cls) {
            return parcel.readArrayList(classLoader, cls);
        }

        public static <V, K> HashMap<K, V> readHashMap(Parcel parcel, ClassLoader classLoader, Class<? extends K> cls, Class<? extends V> cls2) {
            return parcel.readHashMap(classLoader, cls, cls2);
        }

        public static <T> void readList(Parcel parcel, List<? super T> list, ClassLoader classLoader, Class<T> cls) {
            parcel.readList(list, classLoader, cls);
        }

        public static <K, V> void readMap(Parcel parcel, Map<? super K, ? super V> map, ClassLoader classLoader, Class<K> cls, Class<V> cls2) {
            parcel.readMap(map, classLoader, cls, cls2);
        }

        public static <T extends Parcelable> T readParcelable(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
            return (T) parcel.readParcelable(classLoader, cls);
        }

        public static <T> T[] readParcelableArray(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
            return (T[]) parcel.readParcelableArray(classLoader, cls);
        }

        public static <T> Parcelable.Creator<T> readParcelableCreator(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
            return parcel.readParcelableCreator(classLoader, cls);
        }

        public static <T> List<T> readParcelableList(Parcel parcel, List<T> list, ClassLoader classLoader, Class<T> cls) {
            return parcel.readParcelableList(list, classLoader, cls);
        }

        public static <T extends Serializable> T readSerializable(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
            return (T) parcel.readSerializable(classLoader, cls);
        }

        public static <T> SparseArray<T> readSparseArray(Parcel parcel, ClassLoader classLoader, Class<? extends T> cls) {
            return parcel.readSparseArray(classLoader, cls);
        }
    }

    private ParcelCompat() {
    }

    @SuppressLint({"ArrayReturn", "NullableCollection"})
    public static <T> Object[] readArray(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.readArray(parcel, classLoader, cls);
        }
        return parcel.readArray(classLoader);
    }

    @SuppressLint({"ConcreteCollection", "NullableCollection"})
    public static <T> ArrayList<T> readArrayList(Parcel parcel, ClassLoader classLoader, Class<? extends T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.readArrayList(parcel, classLoader, cls);
        }
        return parcel.readArrayList(classLoader);
    }

    public static boolean readBoolean(Parcel parcel) {
        if (parcel.readInt() != 0) {
            return true;
        }
        return false;
    }

    @SuppressLint({"ConcreteCollection", "NullableCollection"})
    public static <K, V> HashMap<K, V> readHashMap(Parcel parcel, ClassLoader classLoader, Class<? extends K> cls, Class<? extends V> cls2) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.readHashMap(parcel, classLoader, cls, cls2);
        }
        return parcel.readHashMap(classLoader);
    }

    public static <T> void readList(Parcel parcel, List<? super T> list, ClassLoader classLoader, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api33Impl.readList(parcel, list, classLoader, cls);
        } else {
            parcel.readList(list, classLoader);
        }
    }

    public static <K, V> void readMap(Parcel parcel, Map<? super K, ? super V> map, ClassLoader classLoader, Class<K> cls, Class<V> cls2) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api33Impl.readMap(parcel, map, classLoader, cls, cls2);
        } else {
            parcel.readMap(map, classLoader);
        }
    }

    public static <T extends Parcelable> T readParcelable(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return (T) Api33Impl.readParcelable(parcel, classLoader, cls);
        }
        T t = (T) parcel.readParcelable(classLoader);
        if (t != null && !cls.isInstance(t)) {
            throw new BadParcelableException("Parcelable " + t.getClass() + " is not a subclass of required class " + cls.getName() + " provided in the parameter");
        }
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"ArrayReturn", "NullableCollection"})
    @Deprecated
    public static <T> T[] readParcelableArray(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return (T[]) Api33Impl.readParcelableArray(parcel, classLoader, cls);
        }
        T[] tArr = (T[]) parcel.readParcelableArray(classLoader);
        if (cls.isAssignableFrom(Parcelable.class)) {
            return tArr;
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, tArr.length));
        for (int i = 0; i < tArr.length; i++) {
            try {
                tArr2[i] = cls.cast(tArr[i]);
            } catch (ClassCastException unused) {
                StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Parcelable at index ", " is not a subclass of required class ");
                m2939xab142723.append(cls.getName());
                m2939xab142723.append(" provided in the parameter");
                throw new BadParcelableException(m2939xab142723.toString());
            }
        }
        return tArr2;
    }

    @SuppressLint({"ArrayReturn", "NullableCollection"})
    public static <T> Parcelable[] readParcelableArrayTyped(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return (Parcelable[]) Api33Impl.readParcelableArray(parcel, classLoader, cls);
        }
        return parcel.readParcelableArray(classLoader);
    }

    @RequiresApi(30)
    public static <T> Parcelable.Creator<T> readParcelableCreator(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.readParcelableCreator(parcel, classLoader, cls);
        }
        return (Parcelable.Creator<T>) Api30Impl.readParcelableCreator(parcel, classLoader);
    }

    @RequiresApi(api = 29)
    public static <T> List<T> readParcelableList(Parcel parcel, List<T> list, ClassLoader classLoader, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.readParcelableList(parcel, list, classLoader, cls);
        }
        return Api29Impl.readParcelableList(parcel, list, classLoader);
    }

    public static <T extends Serializable> T readSerializable(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 33) {
            return (T) Api33Impl.readSerializable(parcel, classLoader, cls);
        }
        return (T) parcel.readSerializable();
    }

    public static <T> SparseArray<T> readSparseArray(Parcel parcel, ClassLoader classLoader, Class<? extends T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.readSparseArray(parcel, classLoader, cls);
        }
        return parcel.readSparseArray(classLoader);
    }

    public static void writeBoolean(Parcel parcel, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.writeBoolean(parcel, z);
        } else {
            parcel.writeInt(z ? 1 : 0);
        }
    }
}
