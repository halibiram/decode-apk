package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzby implements Parcelable {
    public static final Parcelable.Creator<zzby> CREATOR = new zzbw();
    public final long zza;
    private final zzbx[] zzb;

    public zzby(long j, zzbx... zzbxVarArr) {
        this.zza = j;
        this.zzb = zzbxVarArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzby.class == obj.getClass()) {
            zzby zzbyVar = (zzby) obj;
            if (Arrays.equals(this.zzb, zzbyVar.zzb) && this.zza == zzbyVar.zza) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Arrays.hashCode(this.zzb) * 31;
        long j = this.zza;
        return hashCode + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        String m2930x9e171bf9;
        long j = this.zza;
        String arrays = Arrays.toString(this.zzb);
        if (j == -9223372036854775807L) {
            m2930x9e171bf9 = new ObfuscatedString(new long[]{-5249496602586929592L}).toString();
        } else {
            m2930x9e171bf9 = AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{-8707500994248482213L, -9085477294005221213L, -3967325738589208006L, 6958462556502918707L}), new StringBuilder(), j);
        }
        return new ObfuscatedString(new long[]{-6419072394756182898L, -9206033899866361398L}).toString() + arrays + m2930x9e171bf9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zzb.length);
        for (zzbx zzbxVar : this.zzb) {
            parcel.writeParcelable(zzbxVar, 0);
        }
        parcel.writeLong(this.zza);
    }

    public final int zza() {
        return this.zzb.length;
    }

    public final zzbx zzb(int i) {
        return this.zzb[i];
    }

    public final zzby zzc(zzbx... zzbxVarArr) {
        int length = zzbxVarArr.length;
        if (length == 0) {
            return this;
        }
        long j = this.zza;
        zzbx[] zzbxVarArr2 = this.zzb;
        int i = zzfy.zza;
        int length2 = zzbxVarArr2.length;
        Object[] copyOf = Arrays.copyOf(zzbxVarArr2, length2 + length);
        System.arraycopy(zzbxVarArr, 0, copyOf, length2, length);
        return new zzby(j, (zzbx[]) copyOf);
    }

    public final zzby zzd(@Nullable zzby zzbyVar) {
        if (zzbyVar == null) {
            return this;
        }
        return zzc(zzbyVar.zzb);
    }

    public zzby(Parcel parcel) {
        this.zzb = new zzbx[parcel.readInt()];
        int i = 0;
        while (true) {
            zzbx[] zzbxVarArr = this.zzb;
            if (i < zzbxVarArr.length) {
                zzbxVarArr[i] = (zzbx) parcel.readParcelable(zzbx.class.getClassLoader());
                i++;
            } else {
                this.zza = parcel.readLong();
                return;
            }
        }
    }

    public zzby(List list) {
        this(-9223372036854775807L, (zzbx[]) list.toArray(new zzbx[0]));
    }
}
