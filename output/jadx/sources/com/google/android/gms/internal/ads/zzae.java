package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class zzae implements Comparator<zzad>, Parcelable {
    public static final Parcelable.Creator<zzae> CREATOR = new zzab();

    @Nullable
    public final String zza;
    public final int zzb;
    private final zzad[] zzc;
    private int zzd;

    public zzae(Parcel parcel) {
        this.zza = parcel.readString();
        zzad[] zzadVarArr = (zzad[]) parcel.createTypedArray(zzad.CREATOR);
        int i = zzfy.zza;
        this.zzc = zzadVarArr;
        this.zzb = zzadVarArr.length;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzad zzadVar, zzad zzadVar2) {
        zzad zzadVar3 = zzadVar;
        zzad zzadVar4 = zzadVar2;
        UUID uuid = zzo.zza;
        if (uuid.equals(zzadVar3.zza)) {
            if (!uuid.equals(zzadVar4.zza)) {
                return 1;
            }
            return 0;
        }
        return zzadVar3.zza.compareTo(zzadVar4.zza);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzae.class == obj.getClass()) {
            zzae zzaeVar = (zzae) obj;
            if (zzfy.zzF(this.zza, zzaeVar.zza) && Arrays.equals(this.zzc, zzaeVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int i = this.zzd;
        if (i == 0) {
            String str = this.zza;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode2 = (hashCode * 31) + Arrays.hashCode(this.zzc);
            this.zzd = hashCode2;
            return hashCode2;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeTypedArray(this.zzc, 0);
    }

    public final zzad zza(int i) {
        return this.zzc[i];
    }

    @CheckResult
    public final zzae zzb(@Nullable String str) {
        if (zzfy.zzF(this.zza, str)) {
            return this;
        }
        return new zzae(str, false, this.zzc);
    }

    private zzae(@Nullable String str, boolean z, zzad... zzadVarArr) {
        this.zza = str;
        zzadVarArr = z ? (zzad[]) zzadVarArr.clone() : zzadVarArr;
        this.zzc = zzadVarArr;
        this.zzb = zzadVarArr.length;
        Arrays.sort(zzadVarArr, this);
    }

    public zzae(@Nullable String str, zzad... zzadVarArr) {
        this(null, true, zzadVarArr);
    }

    public zzae(List list) {
        this(null, false, (zzad[]) list.toArray(new zzad[0]));
    }
}
