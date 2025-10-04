package androidx.work.multiprocess.parcelable;

import android.annotation.SuppressLint;
import android.net.Network;
import android.net.Uri;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.WorkerParameters;
import java.util.ArrayList;
import java.util.List;

@SuppressLint({"BanParcelableUsage"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ParcelableRuntimeExtras implements Parcelable {
    public static final Parcelable.Creator<ParcelableRuntimeExtras> CREATOR = new Parcelable.Creator<ParcelableRuntimeExtras>() { // from class: androidx.work.multiprocess.parcelable.ParcelableRuntimeExtras.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public ParcelableRuntimeExtras createFromParcel(Parcel parcel) {
            return new ParcelableRuntimeExtras(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableRuntimeExtras[] newArray(int i) {
            return new ParcelableRuntimeExtras[i];
        }
    };
    private WorkerParameters.RuntimeExtras mRuntimeExtras;

    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Api21Impl {
        private Api21Impl() {
        }

        public static Parcelable castToParcelable(Network network) {
            return network;
        }
    }

    public ParcelableRuntimeExtras(@NonNull WorkerParameters.RuntimeExtras runtimeExtras) {
        this.mRuntimeExtras = runtimeExtras;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public WorkerParameters.RuntimeExtras getRuntimeExtras() {
        return this.mRuntimeExtras;
    }

    @Override // android.os.Parcelable
    @SuppressLint({"NewApi"})
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        Network network;
        boolean z;
        List<String> list;
        boolean z2;
        int i2 = Build.VERSION.SDK_INT;
        List<Uri> list2 = null;
        if (i2 >= 28) {
            network = this.mRuntimeExtras.network;
        } else {
            network = null;
        }
        boolean z3 = false;
        if (network != null) {
            z = true;
        } else {
            z = false;
        }
        ParcelUtils.writeBooleanValue(parcel, z);
        if (z) {
            parcel.writeParcelable(Api21Impl.castToParcelable(network), i);
        }
        if (i2 >= 24) {
            WorkerParameters.RuntimeExtras runtimeExtras = this.mRuntimeExtras;
            list2 = runtimeExtras.triggeredContentUris;
            list = runtimeExtras.triggeredContentAuthorities;
        } else {
            list = null;
        }
        if (list2 != null && !list2.isEmpty()) {
            z2 = true;
        } else {
            z2 = false;
        }
        ParcelUtils.writeBooleanValue(parcel, z2);
        if (z2) {
            int size = list2.size();
            Uri[] uriArr = new Uri[size];
            for (int i3 = 0; i3 < size; i3++) {
                uriArr[i3] = list2.get(i3);
            }
            parcel.writeParcelableArray(uriArr, i);
        }
        if (list != null && !list.isEmpty()) {
            z3 = true;
        }
        ParcelUtils.writeBooleanValue(parcel, z3);
        if (z3) {
            parcel.writeStringList(list);
        }
    }

    public ParcelableRuntimeExtras(@NonNull Parcel parcel) {
        ArrayList arrayList;
        ClassLoader classLoader = getClass().getClassLoader();
        Network network = ParcelUtils.readBooleanValue(parcel) ? (Network) parcel.readParcelable(classLoader) : null;
        if (ParcelUtils.readBooleanValue(parcel)) {
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            arrayList = new ArrayList(readParcelableArray.length);
            for (Parcelable parcelable : readParcelableArray) {
                arrayList.add((Uri) parcelable);
            }
        } else {
            arrayList = null;
        }
        ArrayList<String> createStringArrayList = ParcelUtils.readBooleanValue(parcel) ? parcel.createStringArrayList() : null;
        WorkerParameters.RuntimeExtras runtimeExtras = new WorkerParameters.RuntimeExtras();
        this.mRuntimeExtras = runtimeExtras;
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            runtimeExtras.network = network;
        }
        if (i >= 24) {
            if (arrayList != null) {
                runtimeExtras.triggeredContentUris = arrayList;
            }
            if (createStringArrayList != null) {
                runtimeExtras.triggeredContentAuthorities = createStringArrayList;
            }
        }
    }
}
