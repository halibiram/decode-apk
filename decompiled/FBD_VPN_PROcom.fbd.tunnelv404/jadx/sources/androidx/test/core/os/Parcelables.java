package androidx.test.core.os;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class Parcelables {
    private Parcelables() {
    }

    public static <T extends Parcelable> T forceParcel(T t, Parcelable.Creator<T> creator) {
        Parcel obtain = Parcel.obtain();
        try {
            t.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            return creator.createFromParcel(obtain);
        } finally {
            obtain.recycle();
        }
    }
}
