package androidx.work.multiprocess.parcelable;

import android.os.Parcel;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class ParcelUtils {
    private ParcelUtils() {
    }

    public static boolean readBooleanValue(@NonNull Parcel parcel) {
        if (parcel.readInt() == 1) {
            return true;
        }
        return false;
    }

    public static void writeBooleanValue(@NonNull Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }
}
