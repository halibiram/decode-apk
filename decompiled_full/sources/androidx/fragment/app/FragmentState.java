package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import defpackage.AbstractC0362x4440ab85;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator<FragmentState>() { // from class: androidx.fragment.app.FragmentState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    };
    final Bundle mArguments;
    final String mClassName;
    final int mContainerId;
    final boolean mDetached;
    final int mFragmentId;
    final boolean mFromLayout;
    final boolean mHidden;
    final int mMaxLifecycleState;
    final boolean mRemoving;
    final boolean mRetainInstance;
    Bundle mSavedFragmentState;
    final String mTag;
    final String mWho;

    public FragmentState(Fragment fragment) {
        this.mClassName = fragment.getClass().getName();
        this.mWho = fragment.mWho;
        this.mFromLayout = fragment.mFromLayout;
        this.mFragmentId = fragment.mFragmentId;
        this.mContainerId = fragment.mContainerId;
        this.mTag = fragment.mTag;
        this.mRetainInstance = fragment.mRetainInstance;
        this.mRemoving = fragment.mRemoving;
        this.mDetached = fragment.mDetached;
        this.mArguments = fragment.mArguments;
        this.mHidden = fragment.mHidden;
        this.mMaxLifecycleState = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public Fragment instantiate(@NonNull FragmentFactory fragmentFactory, @NonNull ClassLoader classLoader) {
        Fragment instantiate = fragmentFactory.instantiate(classLoader, this.mClassName);
        Bundle bundle = this.mArguments;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        instantiate.setArguments(this.mArguments);
        instantiate.mWho = this.mWho;
        instantiate.mFromLayout = this.mFromLayout;
        instantiate.mRestored = true;
        instantiate.mFragmentId = this.mFragmentId;
        instantiate.mContainerId = this.mContainerId;
        instantiate.mTag = this.mTag;
        instantiate.mRetainInstance = this.mRetainInstance;
        instantiate.mRemoving = this.mRemoving;
        instantiate.mDetached = this.mDetached;
        instantiate.mHidden = this.mHidden;
        instantiate.mMaxState = Lifecycle.State.values()[this.mMaxLifecycleState];
        Bundle bundle2 = this.mSavedFragmentState;
        if (bundle2 != null) {
            instantiate.mSavedFragmentState = bundle2;
        } else {
            instantiate.mSavedFragmentState = new Bundle();
        }
        return instantiate;
    }

    @NonNull
    public String toString() {
        StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(128, "FragmentState{");
        m2938x1aebc6d9.append(this.mClassName);
        m2938x1aebc6d9.append(" (");
        m2938x1aebc6d9.append(this.mWho);
        m2938x1aebc6d9.append(")}:");
        if (this.mFromLayout) {
            m2938x1aebc6d9.append(" fromLayout");
        }
        if (this.mContainerId != 0) {
            m2938x1aebc6d9.append(" id=0x");
            m2938x1aebc6d9.append(Integer.toHexString(this.mContainerId));
        }
        String str = this.mTag;
        if (str != null && !str.isEmpty()) {
            m2938x1aebc6d9.append(" tag=");
            m2938x1aebc6d9.append(this.mTag);
        }
        if (this.mRetainInstance) {
            m2938x1aebc6d9.append(" retainInstance");
        }
        if (this.mRemoving) {
            m2938x1aebc6d9.append(" removing");
        }
        if (this.mDetached) {
            m2938x1aebc6d9.append(" detached");
        }
        if (this.mHidden) {
            m2938x1aebc6d9.append(" hidden");
        }
        return m2938x1aebc6d9.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mClassName);
        parcel.writeString(this.mWho);
        parcel.writeInt(this.mFromLayout ? 1 : 0);
        parcel.writeInt(this.mFragmentId);
        parcel.writeInt(this.mContainerId);
        parcel.writeString(this.mTag);
        parcel.writeInt(this.mRetainInstance ? 1 : 0);
        parcel.writeInt(this.mRemoving ? 1 : 0);
        parcel.writeInt(this.mDetached ? 1 : 0);
        parcel.writeBundle(this.mArguments);
        parcel.writeInt(this.mHidden ? 1 : 0);
        parcel.writeBundle(this.mSavedFragmentState);
        parcel.writeInt(this.mMaxLifecycleState);
    }

    public FragmentState(Parcel parcel) {
        this.mClassName = parcel.readString();
        this.mWho = parcel.readString();
        this.mFromLayout = parcel.readInt() != 0;
        this.mFragmentId = parcel.readInt();
        this.mContainerId = parcel.readInt();
        this.mTag = parcel.readString();
        this.mRetainInstance = parcel.readInt() != 0;
        this.mRemoving = parcel.readInt() != 0;
        this.mDetached = parcel.readInt() != 0;
        this.mArguments = parcel.readBundle();
        this.mHidden = parcel.readInt() != 0;
        this.mSavedFragmentState = parcel.readBundle();
        this.mMaxLifecycleState = parcel.readInt();
    }
}
