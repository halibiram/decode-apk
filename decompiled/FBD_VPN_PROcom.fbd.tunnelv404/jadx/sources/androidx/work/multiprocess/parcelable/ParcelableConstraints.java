package androidx.work.multiprocess.parcelable;

import android.annotation.SuppressLint;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Constraints;
import androidx.work.NetworkType;
import androidx.work.impl.model.WorkTypeConverters;
import androidx.work.impl.utils.NetworkRequest28;
import androidx.work.impl.utils.NetworkRequestCompatKt;
import java.util.concurrent.TimeUnit;

@SuppressLint({"BanParcelableUsage"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ParcelableConstraints implements Parcelable {
    public static final Parcelable.Creator<ParcelableConstraints> CREATOR = new Parcelable.Creator<ParcelableConstraints>() { // from class: androidx.work.multiprocess.parcelable.ParcelableConstraints.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableConstraints createFromParcel(Parcel parcel) {
            return new ParcelableConstraints(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableConstraints[] newArray(int i) {
            return new ParcelableConstraints[i];
        }
    };
    private final Constraints mConstraints;

    public ParcelableConstraints(@NonNull Constraints constraints) {
        this.mConstraints = constraints;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public Constraints getConstraints() {
        return this.mConstraints;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        boolean z;
        parcel.writeInt(WorkTypeConverters.networkTypeToInt(this.mConstraints.getRequiredNetworkType()));
        ParcelUtils.writeBooleanValue(parcel, this.mConstraints.getRequiresBatteryNotLow());
        ParcelUtils.writeBooleanValue(parcel, this.mConstraints.getRequiresCharging());
        ParcelUtils.writeBooleanValue(parcel, this.mConstraints.getRequiresStorageNotLow());
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            ParcelUtils.writeBooleanValue(parcel, this.mConstraints.getRequiresDeviceIdle());
        }
        if (i2 >= 24) {
            boolean hasContentUriTriggers = this.mConstraints.hasContentUriTriggers();
            ParcelUtils.writeBooleanValue(parcel, hasContentUriTriggers);
            if (hasContentUriTriggers) {
                parcel.writeByteArray(WorkTypeConverters.setOfTriggersToByteArray(this.mConstraints.getContentUriTriggers()));
            }
            parcel.writeLong(this.mConstraints.getContentTriggerMaxDelayMillis());
            parcel.writeLong(this.mConstraints.getContentTriggerUpdateDelayMillis());
        }
        if (i2 >= 28) {
            NetworkRequest requiredNetworkRequest = this.mConstraints.getRequiredNetworkRequest();
            if (requiredNetworkRequest != null) {
                z = true;
            } else {
                z = false;
            }
            ParcelUtils.writeBooleanValue(parcel, z);
            if (z) {
                parcel.writeIntArray(NetworkRequestCompatKt.getCapabilitiesCompat(requiredNetworkRequest));
                parcel.writeIntArray(NetworkRequestCompatKt.getTransportTypesCompat(requiredNetworkRequest));
            }
        }
    }

    public ParcelableConstraints(@NonNull Parcel parcel) {
        Constraints.Builder builder = new Constraints.Builder();
        builder.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(parcel.readInt()));
        builder.setRequiresBatteryNotLow(ParcelUtils.readBooleanValue(parcel));
        builder.setRequiresCharging(ParcelUtils.readBooleanValue(parcel));
        builder.setRequiresStorageNotLow(ParcelUtils.readBooleanValue(parcel));
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            builder.setRequiresDeviceIdle(ParcelUtils.readBooleanValue(parcel));
        }
        if (i >= 24) {
            if (ParcelUtils.readBooleanValue(parcel)) {
                for (Constraints.ContentUriTrigger contentUriTrigger : WorkTypeConverters.byteArrayToSetOfTriggers(parcel.createByteArray())) {
                    builder.addContentUriTrigger(contentUriTrigger.getUri(), contentUriTrigger.getIsTriggeredForDescendants());
                }
            }
            long readLong = parcel.readLong();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            builder.setTriggerContentMaxDelay(readLong, timeUnit);
            builder.setTriggerContentUpdateDelay(parcel.readLong(), timeUnit);
        }
        if (Build.VERSION.SDK_INT >= 28 && ParcelUtils.readBooleanValue(parcel)) {
            builder.setRequiredNetworkRequest(NetworkRequest28.createNetworkRequest(parcel.createIntArray(), parcel.createIntArray()), NetworkType.NOT_REQUIRED);
        }
        this.mConstraints = builder.build();
    }
}
