package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzage extends zzagr {
    public static final Parcelable.Creator<zzage> CREATOR = new zzagd();
    public final byte[] zza;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzage(Parcel parcel) {
        super(r0);
        String readString = parcel.readString();
        int i = zzfy.zza;
        this.zza = parcel.createByteArray();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzage.class == obj.getClass()) {
            zzage zzageVar = (zzage) obj;
            if (this.zzf.equals(zzageVar.zzf) && Arrays.equals(this.zza, zzageVar.zza)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zzf.hashCode() + 527;
        return Arrays.hashCode(this.zza) + (hashCode * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeByteArray(this.zza);
    }

    public zzage(String str, byte[] bArr) {
        super(str);
        this.zza = bArr;
    }
}
