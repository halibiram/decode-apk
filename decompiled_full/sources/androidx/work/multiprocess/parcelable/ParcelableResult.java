package androidx.work.multiprocess.parcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import defpackage.AbstractC0362x4440ab85;

@SuppressLint({"BanParcelableUsage"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ParcelableResult implements Parcelable {
    public static final Parcelable.Creator<ParcelableResult> CREATOR = new Parcelable.Creator<ParcelableResult>() { // from class: androidx.work.multiprocess.parcelable.ParcelableResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public ParcelableResult createFromParcel(Parcel parcel) {
            return new ParcelableResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableResult[] newArray(int i) {
            return new ParcelableResult[i];
        }
    };
    private final ListenableWorker.Result mResult;

    public ParcelableResult(@NonNull ListenableWorker.Result result) {
        this.mResult = result;
    }

    @NonNull
    private static ListenableWorker.Result intToResultType(int i, @NonNull Data data) {
        if (i == 1) {
            return ListenableWorker.Result.retry();
        }
        if (i == 2) {
            return ListenableWorker.Result.success(data);
        }
        if (i == 3) {
            return ListenableWorker.Result.failure(data);
        }
        throw new IllegalStateException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Unknown result type "));
    }

    private static int resultTypeOf(ListenableWorker.Result result) {
        if (result instanceof ListenableWorker.Result.Retry) {
            return 1;
        }
        if (result instanceof ListenableWorker.Result.Success) {
            return 2;
        }
        if (result instanceof ListenableWorker.Result.Failure) {
            return 3;
        }
        throw new IllegalStateException("Unknown Result " + result);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public ListenableWorker.Result getResult() {
        return this.mResult;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(resultTypeOf(this.mResult));
        new ParcelableData(this.mResult.getOutputData()).writeToParcel(parcel, i);
    }

    public ParcelableResult(@NonNull Parcel parcel) {
        this.mResult = intToResultType(parcel.readInt(), new ParcelableData(parcel).getData());
    }
}
